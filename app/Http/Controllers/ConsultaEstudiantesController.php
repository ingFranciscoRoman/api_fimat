<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Users;


class ConsultaEstudiantesController extends Controller
{
    public function consultarEstudiante(Request $request)
    {
        $email = $request->input('email');
        $password = $request->input('password');

        $results_usuario = Users::where('email', '=', $email)->where('password', '=', md5($password))->where('status', '=', 'A')->select('id', 'name')->get();

        if (count($results_usuario) > 0) {

            $informacionGeneral  = \DB::select("SELECT id, NAME, apellidos, email, direccion, curso AS id_curso,vacacional,piloto, identificacion, 
            tipoDocumento, telefono, tipoUsuario, status FROM users WHERE email ='" . $email . "'");


            if (isset($informacionGeneral[0]->id_curso) >= 1) {
                $idCursoCOnsultado = $informacionGeneral[0]->id_curso;
                $cursos = \DB::select("SELECT * FROM cursos WHERE id ='" . $idCursoCOnsultado . "'");
            } else {
                $cursos = '';
            }

            if (isset($informacionGeneral[0]->vacacional) >= 1) {
                $idCursoCOnsultadovaca = $informacionGeneral[0]->vacacional;
                $cursos_vacaional = \DB::select("SELECT * FROM cursos WHERE id ='" . $idCursoCOnsultadovaca . "'");
            } else {
                $cursos_vacaional =  'false';
            }

            if (isset($informacionGeneral[0]->piloto) >= 1) {
                $idCursoCOnsultadopiloto = $informacionGeneral[0]->piloto;
                $cursos_piloto = \DB::select("SELECT * FROM cursos WHERE id ='" . $idCursoCOnsultadopiloto . "'");
            } else {
                $cursos_piloto =  'false';
            }

            if (isset($informacionGeneral[0]->id_curso) >= 1) {
                $idAsignaturaCOnsultado = $informacionGeneral[0]->id_curso;
                $asignatura = \DB::select("SELECT * FROM asignaturas WHERE pertenece_curso ='" . $idAsignaturaCOnsultado . "'");
            } else {
                $asignatura = '';
            }

            if (isset($informacionGeneral[0]->vacacional) >= 1) {
                $idCursoCOnsultadovacaasig = $informacionGeneral[0]->vacacional;
                $cursos_vacaional_asig = \DB::select("SELECT * FROM asignaturas WHERE pertenece_curso ='"  . $idCursoCOnsultadovacaasig . "'");
            } else {
                $cursos_vacaional_asig = '';
            }

            if (isset($informacionGeneral[0]->piloto) >= 1) {
                $idCursoCOnsultadopilotoasig = $informacionGeneral[0]->piloto;
                $cursos_piloto_asig = \DB::select("SELECT * FROM asignaturas WHERE pertenece_curso ='"  . $idCursoCOnsultadopilotoasig . "'");
            } else {
                $cursos_piloto_asig = '';
            }

            $all_data_json_response[] =  array(
                'Informacion_general' => $informacionGeneral, 'Curso_estudiante' => $cursos, 'Asignatura_estudiante' => $asignatura, 'Curso_vacaional' => $cursos_vacaional,
                'Asignatura_vacaional' => $cursos_vacaional_asig, 'Curso_piloto' => $cursos_piloto, 'Asignatura_piloto' => $cursos_piloto_asig,

            );

            return response()->json(array("status" => true, "data_solicitud" => $all_data_json_response));
        } else {
            return response()->json(array("status" => false, "data_solicitud" => "No se encontro usuario o credenciales erradas"));
        }
    }

    public function consultarEstudianteperfil(Request $request)
    {
        $email = $request->input('email');

        $results_usuario = Users::where('email', '=', $email)->select('id', 'name')->get();

        if (count($results_usuario) > 0) {

            $informacionGeneral  = \DB::select("SELECT id, NAME, apellidos, email, direccion, curso AS id_curso,vacacional,piloto, identificacion, 
            tipoDocumento, telefono, tipoUsuario, status FROM users WHERE email ='" . $email . "'");


            if (isset($informacionGeneral[0]->id_curso) >= 1) {
                $idCursoCOnsultado = $informacionGeneral[0]->id_curso;
                $cursos = \DB::select("SELECT * FROM cursos WHERE id ='" . $idCursoCOnsultado . "'");
            } else {
                $cursos = '';
            }

            if (isset($informacionGeneral[0]->vacacional) >= 1) {
                $idCursoCOnsultadovaca = $informacionGeneral[0]->vacacional;
                $cursos_vacaional = \DB::select("SELECT * FROM cursos WHERE id ='" . $idCursoCOnsultadovaca . "'");
            } else {
                $cursos_vacaional =  'false';
            }

            if (isset($informacionGeneral[0]->piloto) >= 1) {
                $idCursoCOnsultadopiloto = $informacionGeneral[0]->piloto;
                $cursos_piloto = \DB::select("SELECT * FROM cursos WHERE id ='" . $idCursoCOnsultadopiloto . "'");
            } else {
                $cursos_piloto =  'false';
            }

            if (isset($informacionGeneral[0]->id_curso) >= 1) {
                $idAsignaturaCOnsultado = $informacionGeneral[0]->id_curso;
                $asignatura = \DB::select("SELECT * FROM asignaturas WHERE pertenece_curso ='" . $idAsignaturaCOnsultado . "'");
            } else {
                $asignatura = '';
            }

            if (isset($informacionGeneral[0]->vacacional) >= 1) {
                $idCursoCOnsultadovacaasig = $informacionGeneral[0]->vacacional;
                $cursos_vacaional_asig = \DB::select("SELECT * FROM asignaturas WHERE pertenece_curso ='"  . $idCursoCOnsultadovacaasig . "'");
            } else {
                $cursos_vacaional_asig = '';
            }

            if (isset($informacionGeneral[0]->piloto) >= 1) {
                $idCursoCOnsultadopilotoasig = $informacionGeneral[0]->piloto;
                $cursos_piloto_asig = \DB::select("SELECT * FROM asignaturas WHERE pertenece_curso ='"  . $idCursoCOnsultadopilotoasig . "'");
            } else {
                $cursos_piloto_asig = '';
            }

            $all_data_json_response[] =  array(
                'Informacion_general' => $informacionGeneral, 'Curso_estudiante' => $cursos, 'Asignatura_estudiante' => $asignatura, 'Curso_vacaional' => $cursos_vacaional,
                'Asignatura_vacaional' => $cursos_vacaional_asig, 'Curso_piloto' => $cursos_piloto, 'Asignatura_piloto' => $cursos_piloto_asig,

            );

            return response()->json(array("status" => true, "data_solicitud" => $all_data_json_response));
        } else {
            return response()->json(array("status" => false, "data_solicitud" => "No se encontro usuario o credenciales erradas"));
        }
    }

    public function consultarCursos(Request $request)
    {
        $cursosRegistrados = \DB::select("SELECT * FROM cursos");

        $all_data_json_response[] =  array(
            'Cursos_registrados' => $cursosRegistrados
        );

        return response()->json(array("status" => true, "data_solicitud" => $all_data_json_response));
    }

    public function consultarCursosvacaional(Request $request)
    {
        $cursosRegistrados = \DB::select("SELECT * FROM cursos WHERE tpcurso = '2'");

        $all_data_json_response[] =  array(
            'Cursos_registrados' => $cursosRegistrados
        );

        return response()->json(array("status" => true, "data_solicitud" => $all_data_json_response));
    }
    
    public function consultarCursospiloto(Request $request)
    {
        $cursosRegistrados = \DB::select("SELECT * FROM cursos WHERE tpcurso = '3'");

        $all_data_json_response[] =  array(
            'Cursos_registrados' => $cursosRegistrados
        );

        return response()->json(array("status" => true, "data_solicitud" => $all_data_json_response));
    }

    public function consultarAsignaturas(Request $request)
    {
        $cursosAsignaturas = \DB::select("SELECT * FROM asignaturas");

        $all_data_json_response[] =  array(
            'Asignaturas_consutlados' => $cursosAsignaturas
        );

        return response()->json(array("status" => true, "data_solicitud" => $all_data_json_response));
    }

    public function consultarMaterial(Request $request)
    {
        $asignatura = $request->input('asignatura');
        
        if ($asignatura != null) {
            $materialasignaturas = \DB::select("SELECT * FROM materialasignaturas WHERE asignatura ='" . $asignatura . "'ORDER BY id DESC");
            $all_data_json_response[] =  array(
                'Material_Consultados' => $materialasignaturas
            );
            return response()->json(array("status" => true, "data_solicitud" => $all_data_json_response));
        }else{
            return response()->json(array("status" => false, "warning" => "No hay datos que cargar"));
        }

    }
}
