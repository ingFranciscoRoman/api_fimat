<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Cursos;
use Illuminate\Support\Facades\DB;


class CursosController extends Controller
{
    public function crearCurso(Request $request)
    {
        $id = $request->input('id');

        $idexiste = Cursos::where('id', '=', $id)->get();

        if (count($idexiste) >= 1) {

            DB::table('cursos')->where('id', $id)->update(array(
                'nombreCurso' => $request->input('nombreCurso'),
                'descripcion' => $request->input('descripcion'),
                'link' => $request->input('link'),
                'simulacro' => $request->input('link_simulacro'),
                'tpcurso' => $request->input('tpcurso'),
                'status' => $request->input('status')

            ));

            return response()->json(array("status" => true, "msg" => "El curso fue actualizado"));
        } else {
            $nuevo_curso = new Cursos();
            $nuevo_curso->nombreCurso = $request->input('nombreCurso');
            $nuevo_curso->descripcion = $request->input('descripcion');
            $nuevo_curso->link = $request->input('link');
            $nuevo_curso->simulacro = $request->input('link_simulacro');
            $nuevo_curso->tpcurso = $request->input('tpcurso');

            if ($nuevo_curso->save()) {
                return response()->json(array("status" => true, "msg" =>  $nuevo_curso));
            } else {
                return response()->json(array("status" => false, "msg" => "Error al registrar el Curso"));
            }
        }
    }
}
