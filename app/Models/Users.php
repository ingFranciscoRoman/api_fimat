<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Users extends Model
{
    protected $table = 'users';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'name', 'apellidos', 'email', 'direccion', 'curso',
        'email_verified_at', 'password', 'two_factor_secret', 'two_factor_recovery_codes',
        'identificacion', 'telefono', 'tipoUsuario', 'status', 'created_at',
        'updated_at'
    ];
}
