<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DocenteAsignatura extends Model
{
    protected $table = "docente_asignatura";
    public $timestamps = false;

    public function asignatura(){
        return $this->belongsTo('App\Asignatura','asignatura_id','id');
    }
}
