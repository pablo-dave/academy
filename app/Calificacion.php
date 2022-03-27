<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Calificacion extends Model
{
    protected $table = "calificacion";
    public $timestamps = false;

    public function asignatura(){
        return $this->belongsTo('App\Asignatura');
    }
}
