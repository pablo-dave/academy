@extends('crudbooster::admin_template')
@section('content')
    <style>
        #mainGrid .k-grid-header .k-header .verticalText{
            display: inline-block;
            white-space: nowrap;
            transform: translate(0,100%) rotate(-90deg);
            transform-origin: 0 0;
            position: absolute;
            bottom: 8px;
        }

        #mainGrid .k-grid-header .k-header{
            height: 90px !important;
        }
    </style>
    <div class='panel panel-default'>
        <div class='panel-heading'>Gestión de calificaciones</div>
        <div class='panel-body'>
            <div class="container">
                <div class="row">
                    <div class="col-md-1">
                        <label>Asignatura</label>
                    </div>
                    <div class="col-md-2">
                        <div id="asignatura"></div>
                    </div>
                    <div class="col-md-1">
                        <label>Período</label>
                    </div>
                    <div class="col-md-2">
                        <div id="periodo"></div>
                    </div>
                    <div class="col-md-1">
                        <label>Curso</label>
                    </div>
                    <div class="col-md-2">
                        <div id="curso"></div>
                    </div>
                    <button id="consultar" type="button" class="btn btn-primary"><span class="fa fa-search"></span> Consultar</button>
                </div>
                <div class="row">
                    <div class="col-xs-11">
                        <div id="mainGrid" style="max-height:350px"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class='panel-footer'>
            <a href="{{url()->previous()}}" class='btn btn-default'><span class="fa fa-arrow-left"></span> Volver</a>
            <button id="guardar-cambios" type="button" class='btn btn-success'><span class="fa fa-save"></span> Guardar cambios</button>
        </div>
    </div>
@endsection