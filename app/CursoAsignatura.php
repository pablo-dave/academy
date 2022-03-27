<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CursoAsignatura extends Model
{
    protected $table = "curso_asignatura";
    public $timestamps = false;

    public function asignatura(){
        return $this->belongsTo('App\Asignatura','asignatura_id','id');
    }
    public function curso(){
        return $this->belongsTo('App\Curso','curso_id','id');
    }
}
