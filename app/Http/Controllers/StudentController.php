<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Student;
use App\Models\Schedule;
use App\Models\Teacher;

use App\Models\Appointment;
use Carbon\Carbon;

use Illuminate\Support\Facades\Hash;

class StudentController extends Controller
{
    //
    function studentRegister(Request $req){

        $user= new Student;
        $user->name=$req->input('name');
        $user->email=$req->input('email');
        $user->password=Hash::make($req->input('password'));
        $user->department=$req->input('department');
        $user->student_id=$req->input('student_id');
        $user->status=$req->status;
        $user->save();
        
        if($req->status == 1){
        return $user;
        }else{
            return "1";
        }
        
        
    }
    function studentLogin(Request $req)
    {
        $user= Student::where('email',$req->email)->first();
        
        if(!$user || !Hash::check($req->password,$user->password) || $user->status == 0)
        {
            return "1";
        }
        
    
        else{
        return $user;
        }
    }
    function getStudent($id){
        return Student::find($id);
    }
    function studentUpdate(request $req){
        $update=  Student::find($req->id);
        $update->name=$req->name;
        $update->email=$req->email;
        $update->department=$req->department;
        $update->student_id=$req->student_id;

        $update->save();
        
            
    
        return $update;
    
    }

    function todaysAppointment(request $req){

        $search = new Appointment;
        $search = Appointment::where('student_id',$req->id)
        ->where('day',today())
        ->where('status',1)
        ->get();

        return $search;

    }
    function weekAppointmentStudent(request $req){
        $startDate = Carbon::today();
        $endDate = Carbon::today()->addDays(7);
        $anchor = Carbon::today()->subDay(7);

        $search = new Appointment;
        $search = Appointment::where('student_id',$req->id)

        ->where('status',1)
        ->whereBetween('day', [$startDate, $endDate])
        ->get();

        return $search;

    }

    function viewDepartment(){
        
      $view =  Teacher::where('status',1)->distinct()->get(["department"]);

      
        return $view;
    }

    function viewSubject($department){


        $data = new Teacher;
        $data = Teacher::where('department',$department)->distinct()->get(["subject"]);
        return $data;
    }
    function subjectScheduleList($subject){
        $data = new Schedule;
        $data = Schedule::where('subject',$subject)
        ->distinct()->get();
        return $data;
    }
}
