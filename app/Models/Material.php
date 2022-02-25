<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Material extends Model
{
    protected $table = 'materialasignaturas';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nombre', 'asignatura', 'link', 'tipomaterial', 'status', 'updated_at', 'created_at'
    ];
}
