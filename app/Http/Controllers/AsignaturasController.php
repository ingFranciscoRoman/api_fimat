<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Asignaturas;

class AsignaturasController extends Controller
{
    public function crearAsignatura(Request $request)
    {
        $nueva_asignatura = new Asignaturas();
        $nueva_asignatura->nombreAsignatura = $request->input('nombreAsignatura');
        $nueva_asignatura->descripcion = $request->input('descripcion');
        $nueva_asignatura->pertenece_curso = $request->input('pertenece_curso');
        $nueva_asignatura->materia = $request->input('materia');

        if ($nueva_asignatura->save()) {
            return response()->json(array("status" => true, "msg" =>  $nueva_asignatura));
        } else {
            return response()->json(array("status" => false, "msg" => "Error al registrar el Curso"));
        }
    }
}
