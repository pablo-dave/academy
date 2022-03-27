<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CursoEstudiante extends Model
{
    protected $table = "curso_estudiante";
    public $timestamps = false;

    public function estudiante(){
        return $this->belongsTo('App\Estudiante','estudiante_id','id');
    }
}
