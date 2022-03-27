<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::resource('admin/docente/docente-asignatura','DocenteAsignaturaController');
Route::resource('admin/curso/curso-asignatura','CursoAsignaturaController');
Route::resource('admin/curso/curso-estudiante','CursoEstudianteController');

Route::get('admin/periodo/periodo-json','AdminPeriodoController@getJson');
Route::get('admin/curso/curso-json','AdminCursoController@getJson');
Route::get('admin/asignatura/asignatura-json','AdminAsignaturaController@getJson');
Route::get('admin/asignatura/asignatura-by-docente/{id}','AdminAsignaturaController@byDocente');

// DOCENTE - ASIGNATURA
Route::get('admin/docente/docente-asignatura-json/{id}','DocenteAsignaturaController@getJSON');
Route::post('admin/docente/docente-asignatura-json/{id}','DocenteAsignaturaController@setJSON');
Route::post('admin/docente/docente-asignatura-del/{id}','DocenteAsignaturaController@delJson');

// CURSO - ASIGNATURA
Route::get('admin/curso/curso-asignatura-json/{id}','CursoAsignaturaController@getJSON');
Route::post('admin/curso/curso-asignatura-json/{id}','CursoAsignaturaController@setJSON');
Route::post('admin/curso/curso-asignatura-del/{id}','CursoAsignaturaController@delJson');
Route::get('admin/curso/asignatura-periodo','AdminCursoController@byap');

// CURSO - ESTUDIANTE
Route::get('admin/curso/curso-estudiante-json/{id}','CursoEstudianteController@getJSON');
Route::post('admin/curso/curso-estudiante-json/{id}','CursoEstudianteController@setJSON');
Route::post('admin/curso/curso-estudiante-del/{id}','CursoEstudianteController@delJson');

//CALIFICACIONES
Route::get('admin/calificacion/with-estudiante','AdminCalificacionController@withEstudiante');
Route::post('admin/calificacion/update-calificacion','AdminCalificacionController@updateCalificacion');

//REPORTES
Route::resource('admin/reportes','ReporteController');
Route::get('admin/reporte/generate','ReporteController@generate');
