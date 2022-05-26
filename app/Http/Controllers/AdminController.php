<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Student;
use App\Models\Teacher;

use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    //
    function adminLogin(Request $req)
    {
        $user= Admin::where('email',$req->email)->first();
        if(!$user || !Hash::check($req->password,$user->password))
        {
            return "1";
        }
        else{
        return $user;
        }
    }

    function studentList(){
        return Student::all();
    }
    function deleteStudent($id){

        $result = Student::where('id',$id)->delete();
        if( $result){
            return ["result"=>"Product has been delete "];
        }
        else{

            return ["result"=>"Operation failed "];

        }

    }
    
    function teacherList(){
        return Teacher::all();
    }
    function deleteTeacher($id){

        $result = Teacher::where('id',$id)->delete();
        if( $result){
            return ["result"=>"Product has been delete "];
        }
        else{
            return ["result"=>"Operation failed "];
        }

    }

    function studentRequestList(){
        $show = new Student;
        $show = Student::where('status',0)
        ->get();
        return $show;

    }

    function changeStatusStudent(request $req){
        $status = new Student;
        $status= Student::find($req->id);
        $status->status = $req->status;
        $status->save();
        return $status;
    
       }

       function teacherRequestList(){
        $show = new Teacher;
        $show = Teacher::where('status',0)
        ->get();
        return $show;

    }

    function changeStatusTeacher(request $req){
        $status = new Teacher;
        $status= Teacher::find($req->id);
        $status->status = $req->status;
        $status->save();
        return $status;
    
       }
    
}
