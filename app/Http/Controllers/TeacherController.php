<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Teacher;

use App\Models\Appointment;

use Carbon\Carbon;

use Illuminate\Support\Facades\Hash;

class TeacherController extends Controller
{
    //
    function teacherRegister(Request $req){
        $user= new Teacher;
        $user->name=$req->input('name');
        $user->email=$req->input('email');
        $user->password=Hash::make($req->input('password'));
        $user->department=$req->input('department');
        $user->subject=$req->input('subject');
        $user->status=$req->status;
        $user->save();

        if($req->status == 1){
            return $user;
            }else{

                return "1";
    
            }
        

        
        
        
        
    }
    function teacherLogin(Request $req)
    {
        $user= Teacher::where('email',$req->email)->first();
        
        if(!$user || !Hash::check($req->password,$user->password) || $user->status == 0)
        {
            return "1";
        }
        
    
        else{
        return $user;
        }
    }
    function getTeacher($id){
        return Teacher::find($id);
    }
    function teacherUpdate(request $req){
        $update=  Teacher::find($req->id);
        $update->name=$req->name;
        $update->email=$req->email;
        $update->department=$req->department;
        $update->subject=$req->subject;

        $update->save();
        
            
    
        return $update;
    
    }
    function todaysAppointmentTeacher(request $req){

        $search = new Appointment;
        $search = Appointment::where('teacher_id',$req->id)
        ->where('day',today())
        ->where('status',1)
        ->get();

        return $search;

    }
    function weekAppointmentTeacher(request $req){
        $startDate = Carbon::today();
        $endDate = Carbon::today()->addDays(7);
        $anchor = Carbon::today()->subDay(7);

        $search = new Appointment;
        $search = Appointment::where('teacher_id',$req->id)

        ->where('status',1)
        ->whereBetween('day', [$startDate, $endDate])
        ->get();

        return $search;

    }
}
