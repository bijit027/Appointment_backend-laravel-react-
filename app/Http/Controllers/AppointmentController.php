<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Teacher;
use App\Models\Appointment;
use App\Models\Student;

use App\Models\Schedule;

use Illuminate\Support\Facades\Hash;

class AppointmentController extends Controller
{
    //

    function appointmentRequest(Request $req){

       
        $schedule = new Schedule;
        $student = new Student;
        $appointment = new Appointment;

        $schedule= Schedule::where('id',$req->id)->first();
        $student = Student::where('id',$req->user_id)->first();
        $appointment->schedule_id = $req->id;
        $appointment->student_id = $student->id;
        $appointment->teacher_id = $schedule->teacher_id;

        $appointment->student_name = $student->name;
        $appointment->department = $student->department;
        $appointment->teacher_name = $schedule->name;
        $appointment->day = $schedule->day;
        $appointment->time_from = $schedule->time_from;
        $appointment->time_to = $schedule->time_to;
        $appointment->status = "0";
        $appointment->save();
        return $appointment;


        
    }
    function appointmentRequestList(Request $req){
        $appointmentList = new Appointment;
        $appointmentList = Appointment::where('teacher_id',$req->user_id)
        ->where('status',0)
        ->get();
        return $appointmentList;

    }

    //Teacher will approve or reject appointment request
    function changeStatus(Request $req){

        $schedule = new Schedule;
        $schedule= Schedule::find($req->schedule_id);
        
        $schedule->status = $req->number;
        $schedule->save();
     
        $appointmentList = new Appointment;
        $appointmentList= Appointment::find($req->id);
        $appointmentList->status = $req->number;
        $appointmentList->save();
        return $appointmentList;

    }

    function showApppintmentStatus(request $req){
        $show = new Appointment;
        $show = Appointment::where('student_id',$req->id)->get();
        return $show;

    }
    // Teacher fetch data for update or delete
    function teacherAppointmentOperation(request $req){

        $show = new Schedule;
        $show = Schedule::where('teacher_id',$req->id)
        ->where('status',0)
        ->get();
        return $show;
    }

    function deleteAppointment($id){

        $result = Schedule::where('id',$id)->delete();
        if( $result){
            return ["result"=>"Product has been delete "];
        }
        else{

            return ["result"=>"Operation failed "];

        }

    }

   function changeStatusSchedule(request $req){
    $status = new Schedule;
    $status= Schedule::find($req->time);
    $status->status = $req->number;
    $status->save();
    return $status;

   }
   function getSchedule($id){
    return Schedule::find($id);
}

function updateSchedule($id,request $req)
{
        $update=  Schedule::find($id);
       
        
        $update->day=$req->input('day');
        $update->time_from=$req->input('time_from');
        $update->time_to=$req->input('time_to');
        $update->time_to=$req->input('time_to');
        $update->status="0";
        $update->save();
        

        return $update;
}

function scheduleUpdate(request $req){
    $update=  Schedule::find($req->id);
    $update->day=$req->day;
    $update->time_from=$req->time_from;
    $update->time_to=$req->time_to;
    $update->save();
    
        

    return $update;

}


}
