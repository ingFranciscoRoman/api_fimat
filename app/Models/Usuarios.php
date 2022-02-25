<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Usuarios extends Model
{
    protected $table = 'usuarios';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'identificacion', 'tipoDocumento', 'nombres', 'apellidos', 'direccion',
        'telefono', 'curso', 'updated_at', 'created_at', 'id_user_created', 'status'
    ];
}
