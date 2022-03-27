@extends('crudbooster::admin_template')
@section('content')
    <style>
        .window-footer{
            position: absolute;
            bottom: 0;
            display: block;
            width: 95%;
            margin-top: 150px;
            padding: 19px 0 20px;
            text-align: right;
            border-top: 1px solid #e5e5e5;
        }
    </style>
    <div class='panel panel-default'>
        <div class='panel-heading'>Seleccionar Estudiantes - {{$curso->anio}}</div>
        <div class='panel-body'>
            <div class="row">
                <div class="col-md-12">
                    <div id="window">
                        <div id="tabla-window"></div>
                        <div class="window-footer">
                            <button id="btn-window-cancelar" type="button" class="k-button">Cancelar</button>
                            <button id="guardar-cambios" type="button" class="k-primary k-button">Guardar cambios</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div id="tabla" style="width: 100%;"></div>
                </div>
            </div>
        </div>
        <div class='panel-footer'>
            <a href="{{url()->previous()}}" class='btn btn-default'><span class="fa fa-arrow-left"></span> Volver</a>
            <button id="agregar-estudiante" type='button' class='btn btn-primary'><span class="fa fa-plus"></span> Agregar estudiante</button>
            <button id="quitar-estudiante" type='button' class='btn btn-danger'><span class="fa fa-trash"></span> Eliminar</button>
        </div>
    </div>
@endsection
