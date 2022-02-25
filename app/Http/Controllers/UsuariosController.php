<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Usuarios;
use App\Models\Users;

class UsuariosController extends Controller
{
    public function crearUsuarioPassword(Request $request)
    {
        $id = $request->input('id');

        $idexiste = Users::where('id', '=', $id)->get();
        if (count($idexiste) >= 1) {

            DB::table('users')->where('id', $id)->update(array(
                'name' => $request->input('name'),
                'apellidos' => $request->input('apellidos'),
                'identificacion' => $request->input('identificacion'),
                'email' => $request->input('email'),
                'direccion' => $request->input('direccion'),
                'curso' => $request->input('curso'),
                'vacacional' => $request->input('vacacional'),
                'piloto' => $request->input('piloto'),
                'password' =>  md5($request->input('password')),
                //'password' =>  password_hash($request->input('password'), PASSWORD_BCRYPT),
                'telefono' => $request->input('telefono'),
                'status' => $request->input('status')

            ));

            return response()->json(array("status" => true, "msg" => "El usuario fue actualizado"));
        } else {

            $nuevo_usuario = new Users();
            $nuevo_usuario->name = $request->input('name');
            $nuevo_usuario->apellidos = $request->input('apellidos');
            $nuevo_usuario->identificacion = $request->input('identificacion');
            $nuevo_usuario->email = $request->input('email');
            $nuevo_usuario->direccion = $request->input('direccion');
            $nuevo_usuario->curso = $request->input('curso');
            $nuevo_usuario->vacacional = $request->input('vacacional');
            $nuevo_usuario->piloto = $request->input('piloto');
            $nuevo_usuario->email_verified_at = $request->input('email_verified_at');
            $nuevo_usuario->password = md5($request->input('password'));
            $nuevo_usuario->two_factor_secret = $request->input('two_factor_secret');
            $nuevo_usuario->two_factor_recovery_codes = $request->input('two_factor_recovery_codes');
            $nuevo_usuario->telefono = $request->input('telefono');
            $nuevo_usuario->tipoUsuario = $request->input('tipoUsuario');
            $nuevo_usuario->status = $request->input('status');

            if ($nuevo_usuario->save()) {
                return response()->json(array("status" => true, "msg" =>  $nuevo_usuario));
            } else {
                return response()->json(array("status" => false, "msg" => "Error al registrar el usuario"));
            }
        }
    }

    public function crearUsuario(Request $request)
    {
        $nuevo_usuario = new Usuarios();
        $nuevo_usuario->identificacion = $request->input('identificacion');
        $nuevo_usuario->tipoDocumento = $request->input('tipoDocumento');
        $nuevo_usuario->nombres = $request->input('nombres');
        $nuevo_usuario->apellidos = $request->input('apellidos');
        $nuevo_usuario->direccion = $request->input('direccion');
        $nuevo_usuario->telefono = $request->input('telefono');
        $nuevo_usuario->curso = $request->input('curso');
        $nuevo_usuario->password = md5($request->input('password'));
        $nuevo_usuario->tipoUsuario = $request->input('tipoUsuario');
        $nuevo_usuario->status = $request->input('status');
        $nuevo_usuario->id_user_created = $request->input('id_user_created');

        if ($nuevo_usuario->save()) {
            return response()->json(array("status" => true, "msg" =>  $nuevo_usuario));
        } else {
            return response()->json(array("status" => false, "msg" => "Error al registrar el usuario"));
        }
    }
}
