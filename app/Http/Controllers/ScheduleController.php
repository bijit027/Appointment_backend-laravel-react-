<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Teacher;
use App\Models\Schedule;

use Illuminate\Support\Facades\Hash;

class ScheduleController extends Controller
{
    //
    function teacherSchedule(Request $req){
        $user= new Schedule;
        $user->teacher_id=$req->input('teacher_id');
        $user->name=$req->input('name');
        
        $user->day=$req->input('day');
        $user->subject=$req->input('subject');
        $user->time_from=$req->input('time_from');
        $user->time_to=$req->input('time_to');
        $user->time_to=$req->input('time_to');
        $user->status="0";
        $user->save();
        

        return $user;
        
        
        
    }
    function scheduleList(){
        return Schedule::all();
    }

   

}
