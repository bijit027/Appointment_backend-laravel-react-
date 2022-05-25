<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\ScheduleController;
use App\Http\Controllers\AppointmentController;
use App\Http\Controllers\AdminController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('register',[UserController::class,'register']);
Route::post('login',[UserController::class,'login']);
Route::post('addproduct',[ProductController::class,'addProduct']);
Route::get('list',[ProductController::class,'list']);
Route::delete('delete/{id}',[ProductController::class,'delete']);
Route::get('product/{id}',[ProductController::class,'getProduct']);
Route::post('studentRegister',[StudentController::class,'studentRegister']);
Route::post('studentLogin',[StudentController::class,'studentLogin']);
Route::post('teacherRegister',[TeacherController::class,'teacherRegister']);
Route::post('teacherLogin',[TeacherController::class,'teacherLogin']);

Route::post('teacherSchedule',[ScheduleController::class,'teacherSchedule']);

Route::post('appointmentRequest',[AppointmentController::class,'appointmentRequest']);

Route::post('appointmentRequestList',[AppointmentController::class,'appointmentRequestList']);

Route::post('changeStatus',[AppointmentController::class,'changeStatus']);

Route::post('showApppintmentStatus',[AppointmentController::class,'showApppintmentStatus']);

Route::post('teacherAppointmentOperation',[AppointmentController::class,'teacherAppointmentOperation']);

Route::delete('deleteAppointment/{id}',[AppointmentController::class,'deleteAppointment']);

Route::post('changeStatusSchedule',[AppointmentController::class,'changeStatusSchedule']);

Route::get('schedule/{id}',[AppointmentController::class,'getSchedule']);

Route::put('updateSchedule/{id}',[AppointmentController::class,'updateSchedule']);

Route::post('scheduleUpdate',[AppointmentController::class,'scheduleUpdate']);

Route::post('adminLogin',[AdminController::class,'adminLogin']);
Route::get('studentList',[AdminController::class,'studentList']);

Route::get('teacherList',[AdminController::class,'teacherList']);
Route::delete('deleteStudent/{id}',[AdminController::class,'deleteStudent']);
Route::delete('deleteTeacher/{id}',[AdminController::class,'deleteTeacher']);

Route::get('getStudent/{id}',[StudentController::class,'getStudent']);

Route::post('studentUpdate',[StudentController::class,'studentUpdate']);


Route::get('getTeacher/{id}',[TeacherController::class,'getTeacher']);

Route::post('teacherUpdate',[TeacherController::class,'teacherUpdate']);
Route::get('scheduleList',[ScheduleController::class,'scheduleList']);

Route::post('todaysAppointment',[StudentController::class,'todaysAppointment']);

Route::post('todaysAppointmentTeacher',[TeacherController::class,'todaysAppointmentTeacher']);

Route::post('weekAppointmentTeacher',[TeacherController::class,'weekAppointmentTeacher']);

Route::post('weekAppointmentStudent',[StudentController::class,'weekAppointmentStudent']);

Route::get('studentRequestList',[AdminController::class,'studentRequestList']);


Route::get('teacherRequestList',[AdminController::class,'teacherRequestList']);

Route::post('changeStatusStudent',[AdminController::class,'changeStatusStudent']);

Route::post('changeStatusTeacher',[AdminController::class,'changeStatusTeacher']);

Route::get('viewDepartment',[StudentController::class,'viewDepartment']);
Route::get('viewSubject/{department}',[StudentController::class,'viewSubject']);

Route::get('subjectScheduleList/{subject}',[StudentController::class,'subjectScheduleList']);



