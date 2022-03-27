@extends('crudbooster::admin_template')
@section('content')
    <div class='panel panel-default'>
        <div class='panel-heading'>Registro de Evaluaciones</div>
        <div class='panel-body'>
            <div class="container">
                <div class="row">
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
                    <button type="button" id="generar-reporte" data-url="{{CRUDBooster::adminPath('reporte/generate')}}" class="btn btn-primary"><span class="fa fa-file"></span> Generar Reporte</button>
                </div>
                <div class="row">
                    <div class="col-xs-11">
                        <div id="reportView"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class='panel-footer'>
            <a href="{{url()->previous()}}" class='btn btn-default'><span class="fa fa-arrow-left"></span> Volver</a>
        </div>
    </div>
@endsection