<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Material;

class MaterialController extends Controller
{
    public function crearMaterial(Request $request)
    {
        $nuevo_material = new Material();
        $nuevo_material->nombre = $request->input('nombre');
        $nuevo_material->asignatura = $request->input('asignatura');
        $nuevo_material->link = $request->input('link');
        $nuevo_material->tipomaterial = $request->input('tipomaterial');

        if ($nuevo_material->save()) {
            return response()->json(array("status" => true, "msg" =>  $nuevo_material));
        } else {
            return response()->json(array("status" => false, "msg" => "Error al registrar el Curso"));
        }
    }
}
