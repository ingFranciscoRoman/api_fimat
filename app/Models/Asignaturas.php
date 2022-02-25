<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Asignaturas extends Model
{
    protected $table = 'asignaturas';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nombreAsignatura', 'descripcion', 'status', 'updated_at', 'created_at'
    ];
}
