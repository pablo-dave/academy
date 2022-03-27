<?php

namespace App\Http\Controllers;

use App\Asignatura;
use App\Curso;
use App\CursoAsignatura;
use crocodicstudio\crudbooster\helpers\CRUDBooster;
use Illuminate\Http\Request;

class CursoAsignaturaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        $curso = Curso::find($id);

        $pathDelCursoAsignatura = '"'.CRUDBooster::adminPath("curso/curso-asignatura-del/".$id).'"';
        $pathGetAsignaturaJson = '"'.CRUDBooster::adminPath("curso/curso-asignatura-json/".$id).'"';
        $pathSetAsignaturaJson = '"'.CRUDBooster::adminPath("curso/curso-asignatura-json/".$id).'"';

        $asignaturas = Asignatura::all();
        return view('curso-asignatura.index',[
            "curso"=>$curso,
            "asignaturas"=>$asignaturas,
            "load_css"=>[
                asset('css/kendo.common.min.css'),
                asset('css/kendo.bootstrap.min.css')
            ],
            "load_js"=>[asset('js/kendo.all.min.js')],
            "script_js"=>"(function(){
            
                $('#window').kendoWindow({title:'.: AGREGAR ASIGNATURAS :.',visible:false,height: '90%',width:'50%',modal:true});
                
                $('#tabla').kendoGrid({
                dataSource:{
                    transport:{
                        read:{
                            url:".$pathGetAsignaturaJson.",
                            dataType:'json',
                            type:'GET'
                        }
                    },
                    schema:{
                        model:{
                            fields:{
                                nombre:{type:'string'}
                            }
                        }
                    }
                },
                dataBound:function(e){
                    console.log('databound');
                    //console.log(e.sender.dataSource.data());
                },
                change:function(){
                    console.log(true);
                },
                columns:[
                    {selectable:true,width:60},
                    {field:'asignatura.nombre',title:'Asignaturas'}
                ]
                });
                
                
                $('#tabla-window').kendoGrid({
                dataSource:{
                    transport:{
                        read:function(e){
                            //console.log(".json_encode($asignaturas).");
                            e.success(".json_encode($asignaturas).");
                        },
                    schema:{
                        model:{
                            id:'id'
                        }
                      }
                    }
                },
                change:function(){
                    console.log(true);
                },
                columns:[
                    {selectable:true,width:60},
                    {field:'nombre',title:'Asignaturas'}
                ]
                });
                
                //boton cancelar window
                $('#btn-window-cancelar').click(function(){
                    $('#window').data('kendoWindow').close();
                    $('#tabla-window').data('kendoGrid').refresh();
                });
                
                //botón agregar-asignatura
                
                $('#agregar-asignatura').click(function(){
                    $('#window').data('kendoWindow').open().center();
                    $('#tabla-window').data('kendoGrid').refresh();
                });
                
                $('#quitar-asignatura').click(function(){
                    var grid = $('#tabla').data('kendoGrid');
                    var selected = [];
                    grid.select().each(function(k,v){
                        selected.push(grid.dataItem(v).id);
                    });
                    
                    if(selected.length > 0){
                        selected = JSON.stringify(selected);
                      var formdata = new FormData();
                      formdata.append('selected',selected);
                      
                      $.ajax({
                        url:".$pathDelCursoAsignatura.",
                        type:'POST',
                        data:formdata,
                        dataType:'html',
                        cache:false,
                        contentType:false,
                        processData:false
                        }).done(function (res) {
                            if(res == 'true'){
                                $('#tabla').data('kendoGrid').dataSource.read();
                            }
                        }).error(function (err) {
                            //alert(err.message)
                        });
                    }else{
                        swal('Seleccione las materias a eliminar');
                    }
                });
                
                //boton guardar cambios
                $('#guardar-cambios').click(function(){
                   //console.log(JSON.stringify($('#tabla-window').data('kendoGrid').dataSource.data()));
                   var grid = $('#tabla-window').data('kendoGrid');
                   var selected = [];
                   
                   grid.select().each(function(k,v){
                      selected.push(grid.dataItem(v).id);
                   });
                   if(selected.length > 0){
                      selected = JSON.stringify(selected);
                      var formdata = new FormData();
                      formdata.append('selected',selected);
                      
                      $.ajax({
                        url:".$pathSetAsignaturaJson.",
                        type:'POST',
                        data:formdata,
                        dataType:'html',
                        cache:false,
                        contentType:false,
                        processData:false
                        }).done(function (res) {
                            if(res == 'true'){
                                $('#window').data('kendoWindow').close();
                                $('#tabla').data('kendoGrid').dataSource.read();
                            }
                        }).error(function (err) {
                            //alert(err.message)
                        });
                    
                   }else{
                    swal('Seleccione MÍNIMO 1 Item');
                   }
                });
               
            })()"
        ]);
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

    public function delJson(Request $request,$id)
    {
        $selected = json_decode($request->get("selected"));
        try{
            foreach ($selected as $s){
                $da = CursoAsignatura::find($s);
                $da->delete();
            }
            return response()->json(true);
        }catch(Exception $e){
            return $e->getMessage();
        }
    }

    public function getJSON($id)
    {
        $curso_asignatura = CursoAsignatura::with('asignatura')->where('curso_id', $id)->get();

        return json_encode($curso_asignatura);
        //return json_encode($curso_asignatura);
    }

    public function setJSON(Request $request,$id){
        $selected = json_decode($request->get("selected"));
        try{
            foreach ($selected as $s){
                $da = new CursoAsignatura;
                $da->curso_id = $id;
                $da->asignatura_id = $s;
                $da->save();
            }
            return response()->json(true);
        }catch(Exception $e){
            return $e->getMessage();
        }
    }

    public function allJson(){
        $c = CursoAsignatura::with('asignatura')->get();
        return response()->json($c);
    }
}
