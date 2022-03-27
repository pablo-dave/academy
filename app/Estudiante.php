<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Estudiante extends Model
{
    protected $table = "estudiante";

    public function calificaciones(){
        return $this->hasMany('App\Calificacion');
    }
}
