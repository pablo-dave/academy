@extends('crudbooster::admin_template')
@section('content')
    <div>
        <p><a title="Return" href="{{Crudbooster::adminPath("estudiante")}}"><i class="fa fa-chevron-circle-left "></i>&nbsp; Volver al listado Estudiante</a></p>
        <div class="panel panel-default">
            <div class="panel-body">
                <form class="form-inline" method="post" id="form" enctype="multipart/form-data"
                      action="{{Crudbooster::adminPath("estudiante/add-save")}}">
                    <input type="hidden" name="_token" value="{{csrf_token()}}">
                    <input type="hidden" name="return_url"
                           value="{{Crudbooster::adminPath("estudiante")}}">
                    <input type="hidden" name="ref_mainpath"
                           value="{{Crudbooster::adminPath("estudiante")}}">
                    <input type="hidden" name="ref_parameter"
                           value="return_url={{Crudbooster::adminPath("estudiante")}}&amp;parent_id=&amp;parent_field=">
                    <div class="box-body" id="parent-form-area">
                        <div class="container-fluid">
                            <div class="panel panel-default col-xs-6" style="padding: 0px">
                                <div class="panel-heading">
                                    <b>Datos del estudiante</b>
                                </div>
                                <div class="panel-body" style="padding: 15px 0px">
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Apellidos
                                            <span class="text-danger" title="Este campo es requerido">*</span>
                                        </label>
                                        <input type="text" title="Apellidos" required="" maxlength="255" autocomplete="off" class="form-control col-xs-5" name="apellidos" id="apellidos" value="" inputmode="text" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Nombres
                                            <span class="text-danger" title="Este campo es requerido">*</span>
                                        </label>
                                        <input type="text" title="Nombres" required="" autocomplete="off" maxlength="255" class="form-control col-xs-5" name="nombres" id="nombres" value="" inputmode="text" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Cedula
                                            <span class="text-danger" title="Este campo es requerido">*</span>
                                        </label>
                                        <input type="text" title="Cedula" required="" maxlength="255"
                                               class="form-control col-xs-5" name="cedula" id="cedula" value=""
                                               autocomplete="off" style="width: 65%;">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">Fecha de Nacimiento</label>
                                        <div class="input-group" style="width: 65%">
                                            <span class="input-group-addon"><a><i
                                                        class="fa fa-calendar "></i></a></span>
                                            <input type="text" title="Fecha de Nacimiento" readonly=""
                                                   class="form-control notfocus input_date" name="fecha_nac"
                                                   id="fecha_nac" value="">
                                        </div>
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">Años Cumplidos</label>
                                        <input type="number" step="1" title="Años Cumplidos"
                                               class="form-control col-xs-5" name="anios_cumplidos" id="anios_cumplidos"
                                               value="" style="width: 65%;">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Con Quien Vive
                                        </label>
                                        <input type="text" title="Con Quien Vive" maxlength="255"
                                               class="form-control col-xs-5" name="con_quien_vive" id="con_quien_vive"
                                               value="" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">Num Hermanos
                                        </label>
                                        <input type="number" step="1" title="Num Hermanos" class="form-control col-xs-5"
                                               name="num_hermanos" id="num_hermanos" value="" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">Lugar Ocupa</label>
                                        <input type="number" step="1" title="Lugar Ocupa" class="form-control col-xs-5"
                                               name="lugar_ocupa" id="lugar_ocupa" value="" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Enfermedades
                                        </label>
                                        <select name="enfermedades" id="enfermedades" class="form-control col-xs-5" style="width: 65%">
                                            <option value="NO">NO</option>
                                            <option value="SI">SI</option>
                                        </select>
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div id="medicina_usa_group" class="form-group col-xs-6 hidden">
                                        <label class="control-label col-xs-4">
                                            Medicina Usa
                                        </label>
                                        <input type="text" title="Medicina Usa" maxlength="255"
                                               class="form-control col-xs-5" name="medicina_usa" id="medicina_usa"
                                               value="" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Tipo Sangre
                                        </label>
                                        <select name="tipo_sangre" id="tipo_sangre" class="form-control col-xs-5" style="width: 65%">
                                            <option value="-">-</option>
                                            <option value="A+">A+</option>
                                            <option value="A-">A-</option>
                                            <option value="O+">O+</option>
                                            <option value="O-">O-</option>
                                            <option value="B+">B+</option>
                                            <option value="B-">B-</option>
                                            <option value="AB+">AB+</option>
                                            <option value="AB-">AB-</option>
                                        </select>
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Discapacidad
                                        </label>
                                        <select name="discapacidad" id="discapacidad" class="form-control col-xs-5" style="width: 65%">
                                            <option value="NO">NO</option>
                                            <option value="SI">SI</option>
                                        </select>
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br>
                                    <div id="carnet_conadis_group" class="form-group col-xs-6 hidden">
                                        <label class="control-label col-xs-4">
                                            Carnet Conadis
                                        </label>
                                        <input type="text" title="Carnet Conadis" maxlength="255"
                                               class="form-control col-xs-5" name="carnet_conadis" id="carnet_conadis"
                                               value="" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Etnia
                                        </label>
                                        <select name="etnia" id="etnia" class="form-control col-xs-5" style="width: 65%">
                                            <option value="-">-</option>
                                            <option value="Mestiza" >Mestiza</option>
                                            <option value="Blanca" >Blanca</option>
                                            <option value="Indígena" >Indígena</option>
                                            <option value="Afroecuatoriano" >Afroecuatoriano</option>
                                        </select>
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br>
                                    <div class="form-group col-xs-12">
                                        <label class="control-label col-xs-3">
                                            Escuela Que Proviene
                                        </label>
                                        <input type="text" title="Escuela Que Proviene" maxlength="255"
                                               class="form-control col-xs-8" name="escuela_que_proviene"
                                               id="escuela_que_proviene" value="" style="width: 70%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default col-xs-6" style="padding: 0px">
                                <div class="panel-heading">
                                    <b>Datos del Representante</b>
                                </div>
                                <div class="panel-body" style="padding: 15px 0px">
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Nombres Representante
                                        </label>
                                        <input type="text" title="Nombres Representante" maxlength="255"
                                               class="form-control col-xs-5" name="nombres_representante"
                                               id="nombres_representante" value="" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Cedula Representante
                                        </label>
                                        <input type="text" title="Cedula Representante" maxlength="255"
                                               class="form-control col-xs-5" name="cedula_representante"
                                               id="cedula_representante" value="" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Direccion Representante
                                        </label>
                                        <input type="text" title="Direccion Representante" maxlength="255"
                                               class="form-control col-xs-5" name="direccion_representante"
                                               id="direccion_representante" value="" style="width: 65%">

                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Telefono Representante
                                        </label>
                                        <input type="text" title="Telefono Representante" maxlength="255"
                                               class="form-control col-xs-5" name="telefono_representante"
                                               id="telefono_representante" value="" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Celular Representante
                                        </label>
                                        <input type="text" title="Celular Representante" maxlength="255"
                                               class="form-control col-xs-5" name="celular_representante"
                                               id="celular_representante" value="" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Otros Contactos
                                        </label>
                                        <input type="text" title="Otros Contactos" maxlength="255"
                                               class="form-control col-xs-5" name="otros_contactos" id="otros_contactos"
                                               value="" style="width: 65%">

                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Correo Representante
                                        </label>
                                        <input type="email" title="Correo Representante" maxlength="255" class="form-control col-xs-5" name="correo_representante" id="correo_representante" value="" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="container-fluid">
                            <div class="panel panel-default col-xs-6" style="padding: 0px">
                                <div class="panel-heading">
                                    <b>Datos del Padre</b>
                                </div>
                                <div class="panel-body" style="padding: 15px 0px">
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Nombres Padre
                                        </label>
                                        <input type="text" title="Nombres Padre" maxlength="255"
                                               class="form-control col-xs-5" name="nombres_padre" id="nombres_padre"
                                               value="" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Ocupacion Padre
                                        </label>
                                        <input type="text" title="Ocupacion Padre" maxlength="255"
                                               class="form-control col-xs-5" name="ocupacion_padre" id="ocupacion_padre"
                                               value="" style="width: 65%">

                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Cedula Padre
                                        </label>
                                        <input type="text" title="Cedula Padre" maxlength="255"
                                               class="form-control col-xs-5" name="cedula_padre" id="cedula_padre"
                                               value="" style="width: 65%">

                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Lugar Trabajo Padre
                                        </label>
                                        <input type="text" title="Lugar Trabajo Padre" maxlength="255"
                                               class="form-control col-xs-5" name="lugar_trabajo_padre"
                                               id="lugar_trabajo_padre" value="" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Telefono Padre
                                        </label>
                                        <input type="text" title="Telefono Padre" maxlength="255"
                                               class="form-control col-xs-5" name="telefono_padre" id="telefono_padre"
                                               value="" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default col-xs-6" style="padding: 0px">
                                <div class="panel-heading">
                                    <b>Datos de la Madre</b>
                                </div>
                                <div class="panel-body" style="padding: 15px 0px">
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Nombres Madre
                                        </label>
                                        <input type="text" title="Nombres Madre" maxlength="255"
                                               class="form-control col-xs-5" name="nombres_madre" id="nombres_madre"
                                               value="" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Ocupacion Madre
                                        </label>
                                        <input type="text" title="Ocupacion Madre" maxlength="255"
                                               class="form-control col-xs-5" name="ocupacion_madre" id="ocupacion_madre"
                                               value="" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Cedula Madre
                                        </label>
                                        <input type="text" title="Cedula Madre" maxlength="255"
                                               class="form-control col-xs-5" name="cedula_madre" id="cedula_madre"
                                               value="" style="width: 65%">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Lugar Trabajo Madre
                                        </label>
                                        <input type="text" title="Lugar Trabajo Madre" maxlength="255"
                                               class="form-control col-xs-5" name="lugar_trabajo_madre"
                                               id="lugar_trabajo_madre" value="" style="width: 65%">

                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br>
                                    <div class="form-group col-xs-6">
                                        <label class="control-label col-xs-4">
                                            Telefono Madre
                                        </label>
                                        <input type="text" title="Telefono Madre" maxlength="255"
                                               class="form-control col-xs-5" name="telefono_madre" id="telefono_madre"
                                               value="" style="width: 65%">

                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="box-footer" style="background: #F5F5F5">
                            <div class="container">
                                <div class="form-group col-xs-12">
                                    <label class="control-label col-sm-2"></label>
                                    <div class="col-sm-10">
                                        <a href="{{Crudbooster::adminPath("estudiante")}}" class="btn btn-default"><i class="fa fa-chevron-circle-left"></i> Volver</a>
                                        <input type="submit" name="submit" value="Guardar y Añadir otro" class="btn btn-success">
                                        <input type="submit" name="submit" value="Guardar" class="btn btn-success">
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.box-footer-->

                </form>
            </div>
        </div>
    </div>
@endsection
