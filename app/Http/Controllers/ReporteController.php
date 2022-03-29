<?php

namespace App\Http\Controllers;

use App\Curso;
use App\CursoEstudiante;
use App\Estudiante;
use Barryvdh\DomPDF\Facade as PDF;
use crocodicstudio\crudbooster\helpers\CRUDBooster;
use Illuminate\Http\Request;

class ReporteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pathPeriodoGetJson = '"'.CRUDBooster::adminPath("periodo/periodo-json").'"';
        $pathCursoGetJson = '"'.CRUDBooster::adminPath("curso/curso-json").'"';

        return view('reporte.index',[
            "load_js"=>[asset('js/kendo.all.min.js')],
            "load_css"=>[
                asset('css/kendo.common.min.css'),
                asset('css/kendo.bootstrap.min.css')
            ],
            "script_js"=>"(function(){
    $('#periodo').kendoDropDownList({
        dataSource: {
            transport: {
                read: {
                    url: ".$pathPeriodoGetJson.",
                    dataType: 'json',
                    type: 'GET'
                }
            }
        },
        change:function(e){
            var curso = $('#curso').data('kendoDropDownList');
            curso.dataSource.read();
        },
        dataTextField:'nombre',
        dataValueField:'id',
        autoWidth:true
    });

    $('#curso').kendoDropDownList({
        cascadeFrom:'periodo',
        cascadeFromField:'periodo_id',
        dataSource:{
            transport:{
                read: {
                    url: ".$pathCursoGetJson.",
                    dataType: 'json',
                    type: 'GET'
                }
            }
        },
        dataBound:function(){
            this.select(0);
        },
        autoBind:false,
        dataTextField:'anio',
        dataValueField:'id'
    });

    $('#generar-reporte').click(function () {
        var periodo = $('#periodo').data('kendoDropDownList');
        var curso = $('#curso').data('kendoDropDownList');

        var path = $(this).attr('data-url');
        path = path+'?periodo_id='+periodo.dataItem().id+'&curso_id='+curso.dataItem().id;

        window.open(path);
    });
})()"
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    /**
     * Objetivo: obtener todos los estudiantes con sus calificaciones, las materias a las que pertenecen
     * foreach estudiante
     * 1. Obtener el curso que pertenece al periodo seleccionado ( solamente con el id )
     * 2.
     */
    public function generate(Request $request){
        /*$data = [];
        $pdf = PDF::loadView('reporte.reporte-calificacion', $data,[],'UTF8');
        $pdf->setPaper('a4', 'landscape');

        return $pdf->stream();*/
        $curso_id = $request->get( "curso_id");
        $curso = Curso::find($curso_id);

        $cursoEstudiante = CursoEstudiante::where("curso_id",$curso_id)->get();
        $estudiantes = array();

        foreach($cursoEstudiante as $ce){
            array_push($estudiantes,$ce->estudiante_id);
        }
        $estudiante = Estudiante::with(["calificaciones"=>function($query){
            $query->with("asignatura");
        }])->whereIn('id',$estudiantes)->get();
        return view('reporte.reporte-calificacion',["estudiantes"=>$estudiante,"curso"=>$curso]);
    }

    public function generateToJson(){

    }
}
