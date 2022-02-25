<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->group(['prefix' => 'api'], function ($router) {

    /*****Registros */
    $router->post('registroUsuarios', 'UsuariosController@crearUsuarioPassword');
    //$router->post('registroUsuariosold', 'UsuariosController@crearUsuario');
    $router->post('registroAsignaturas', 'AsignaturasController@crearAsignatura');
    $router->post('registroCursos', 'CursosController@crearCurso');
    $router->post('registroMaterial', 'MaterialController@crearMaterial');

    /****Consultas */
    $router->get('infoEstudiante', 'ConsultaEstudiantesController@consultarEstudiante');
    $router->get('infoEstudiantePerfil', 'ConsultaEstudiantesController@consultarEstudianteperfil');
    $router->get('infoCursos', 'ConsultaEstudiantesController@consultarCursos');
    $router->get('infoCursosvaca', 'ConsultaEstudiantesController@consultarCursosvacaional');
    $router->get('infoCursospilo', 'ConsultaEstudiantesController@consultarCursospiloto');
    $router->get('infoAsignaturas', 'ConsultaEstudiantesController@consultarAsignaturas');
    $router->get('infoMaterial', 'ConsultaEstudiantesController@consultarMaterial');
});
