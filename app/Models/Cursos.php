<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cursos extends Model
{
    protected $table = 'cursos';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'nombreCurso', 'descripcion', 'link', 'simulacro' , 'status', 'pertenece_curso', 'updated_at', 'created_at'
    ];
}
