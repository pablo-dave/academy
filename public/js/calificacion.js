$(document).ready(function () {

    if(DOCENTE_ID == "" || typeof DOCENTE_ID == null){
        DOCENTE_ID = 0;
    }

    var path = ADMIN_PATH+"/curso/asignatura-periodo";
    var pathCalificaciones = ADMIN_PATH+"/calificacion/with-estudiante";
    var pathUpdateCalificacion = ADMIN_PATH+"/calificacion/update-calificacion";//guardar cambios
    var pathAsignaturaGetJson = '';
    var pathAsignaturasByDocente = ADMIN_PATH+"/asignatura/asignatura-by-docente/"+DOCENTE_ID
    var pathPeriodos = ADMIN_PATH+"/periodo/periodo-json";

    var vm = {};
    vm.setPath        = setPath;
    vm.searchStudents = searchStudents;
    vm.edDisabled      = edDisabled;

    $('#consultar').click(function () {
        vm.searchStudents();
    });

    $('#asignatura').kendoDropDownList({
        dataSource: {
            transport: {
                read:{
                    url: pathAsignaturasByDocente,
                    dataType: 'json',
                    type: 'GET'
                }
            }
        },
        change:function(){
            var curso = $('#curso').data('kendoDropDownList');
            curso.dataSource.read();
        },
        dataTextField:'asignatura.nombre',
        dataValueField:'asignatura.id',
        autoWidth:true
    });

    $('#periodo').kendoDropDownList({
        dataSource: {
            transport: {
                read: {
                    url: pathPeriodos,
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
        dataSource:{
            transport:{
                read:function(e){
                    vm.setPath();
                    $.ajax({
                        url: pathAsignaturaGetJson,
                        type:'GET',
                        dataType:'json',
                        cache:false,
                        contentType:false,
                        processData:false
                    }).done(function (res) {
                        var data = res.map(function(t){return t.curso});
                        //console.log(data);
                        e.success(data);
                    }).error(function (err) {
                        console.log(err);
                    });
                }
            }
        },
        dataBound:function(){
            this.select(0);
        },
        autoBind:false,
        dataTextField:'anio',
        dataValueField:'id',
        autoWidth:true
    });

    /**
     * Guardar cambios
     * */
    $('#guardar-cambios').click(function () {
        var grid = $('#mainGrid').data('kendoGrid');
        kendo.ui.progress($('.panel-body'), true);

        var data = JSON.stringify(grid.dataSource.data());
        var formdata = new FormData();
        formdata.append('data',data);

        $.ajax({
            url:pathUpdateCalificacion,
            type:'POST',
            data:formdata,
            dataType:'html',
            cache:false,
            contentType:false,
            processData:false
        }).done(function (res) {
            console.log(res);
            vm.searchStudents();
        }).error(function (err) {
            //alert(err.message)
        });
    });

    /**
     * Init grid
     */

    $('#mainGrid').kendoGrid({
        dataSource:{
            transport:{
                read:function (e) {
                    e.success([]);
                }
            },
            schema:{
                model:{
                    fields:{
                        cedula:{editable:false},
                        apellidos:{editable:false}
                    }
                }
            }
        },
        cellClose:function(e){
            //volver a calcular toda la fila
            console.log(e);
            //vm.grid.dataSource.data()[index].set('calificaciones[0].u1_r_insumo1',0);
            var index = null;
            var grid = $('#mainGrid').data('kendoGrid');

            grid.dataSource.data().forEach(function(v,k){if(v.id == e.model.id){return index = k;}});

            //UNIDAD 1
            grid.dataSource.data()[index].set('calificaciones[0].u1_r_insumo1',e.model.calificaciones[0].u1_insumo1);
            grid.dataSource.data()[index].set('calificaciones[0].u1_r_insumo1_2',e.model.calificaciones[0].u1_insumo2);

            //UNIDAD 2
            grid.dataSource.data()[index].set('calificaciones[0].u2_r_insumo1',e.model.calificaciones[0].u2_insumo1);
            grid.dataSource.data()[index].set('calificaciones[0].u2_r_insumo1_2',e.model.calificaciones[0].u2_insumo2);

            //UNIDAD 3
            grid.dataSource.data()[index].set('calificaciones[0].u3_r_insumo1',e.model.calificaciones[0].u3_insumo1);
            grid.dataSource.data()[index].set('calificaciones[0].u3_r_insumo1_2',e.model.calificaciones[0].u3_insumo2);

            //PROMEDIOS
            var prom1 = (kendo.parseFloat(e.model.calificaciones[0].u1_insumo1)+kendo.parseFloat(e.model.calificaciones[0].u1_insumo2))/2;
            var prom2 = (kendo.parseFloat(e.model.calificaciones[0].u2_insumo1)+kendo.parseFloat(e.model.calificaciones[0].u2_insumo2))/2;
            var prom3 = (kendo.parseFloat(e.model.calificaciones[0].u3_insumo1)+kendo.parseFloat(e.model.calificaciones[0].u3_insumo2))/2;

            grid.dataSource.data()[index].set('calificaciones[0].u1_promedio',prom1);
            grid.dataSource.data()[index].set('calificaciones[0].u2_promedio',prom2);
            grid.dataSource.data()[index].set('calificaciones[0].u3_promedio',prom3);

            //PROMEDIO DE PROMEDIOS
            var prom_de_prom = (prom1+prom2+prom3)/3;

            grid.dataSource.data()[index].set('calificaciones[0].promedio_de_prom',kendo.toString(prom_de_prom,'n2'));

            grid.dataSource.data()[index].set('calificaciones[0].ochenta_porciento',kendo.toString((prom_de_prom*80)/100,'n2'));

            grid.dataSource.data()[index].set('calificaciones[0].veinte_porciento',kendo.toString((kendo.parseFloat(e.model.calificaciones[0].eval_final)*20)/100,'n2'));

            grid.dataSource.data()[index].set('calificaciones[0].nota_quimestre',kendo.toString((kendo.parseFloat(e.model.calificaciones[0].ochenta_porciento)+kendo.parseFloat(e.model.calificaciones[0].veinte_porciento)),'n2'));

        },
        editable:true,
        resizable:true,
        navigatable:true,
        selectable:true,
        columns:[
            {
                field:'cedula',
                title:'Cédula',
                width:100,
                locked:true
            },
            {
                field:'apellidos',
                title:'Estudiantes',
                template:'<div>#=apellidos+\' \'+nombres#</div>',
                width:220,
                locked:true
            },
            {
                field:'calificaciones[0].u1_insumo1',
                title:'<span class=\'verticalText\'> Insumo 1</span>',
                width:60
            },
            {
                field:'calificaciones[0].u1_r_insumo1',
                title:'<span class=\'verticalText\'>R. Insumo 1</span>',
                editor:vm.edDisabled,
                width:60
            },
            {
                field:'calificaciones[0].u1_insumo2',
                title:'<span class=\'verticalText\'>Insumo 2</span>',
                width:60
            },
            {
                field:'calificaciones[0].u1_r_insumo1_2',
                title:'<span class=\'verticalText\'>R. Insumo II</span>',
                editor:vm.edDisabled,
                width:60
            },
            {
                field:'calificaciones[0].u1_promedio',
                title:'<span class=\'verticalText\'>Promedio</span>',
                editor:vm.edDisabled,
                width:60
            },
            {
                field:'calificaciones[0].u2_insumo1',
                title:'<span class=\'verticalText\'> Insumo 1</span>',
                width:60
            },
            {
                field:'calificaciones[0].u2_r_insumo1',
                title:'<span class=\'verticalText\'>R. Insumo 1</span>',
                editor:vm.edDisabled,
                width:60
            },
            {
                field:'calificaciones[0].u2_insumo2',
                title:'<span class=\'verticalText\'>Insumo II</span>',
                width:60
            },
            {
                field:'calificaciones[0].u2_r_insumo1_2',
                title:'<span class=\'verticalText\'>R. Insumo II</span>',
                editor:vm.edDisabled,
                width:60
            },
            {
                field:'calificaciones[0].u2_promedio',
                title:'<span class=\'verticalText\'>Promedio</span>',
                editor:vm.edDisabled,
                width:60
            },
            {
                field:'calificaciones[0].u3_insumo1',
                title:'<span class=\'verticalText\'> Insumo 1</span>',
                width:60
            },
            {
                field:'calificaciones[0].u3_r_insumo1',
                title:'<span class=\'verticalText\'>R. Insumo 1</span>',
                editor:vm.edDisabled,
                width:60
            },
            {
                field:'calificaciones[0].u3_insumo2',
                title:'<span class=\'verticalText\'>Insumo II</span>',
                width:60
            },
            {
                field:'calificaciones[0].u3_r_insumo1_2',
                title:'<span class=\'verticalText\'>R. Insumo II</span>',
                editor:vm.edDisabled,
                width:60
            },
            {
                field:'calificaciones[0].u3_promedio',
                title:'<span class=\'verticalText\'>Promedio</span>',
                editor:vm.edDisabled,
                width:60
            },
            {
                field:'calificaciones[0].promedio_de_prom',
                title:'<span class=\'verticalText\'>Promedio Prom.</span>',
                editor:vm.edDisabled,
                width:60
            },
            {
                field:'calificaciones[0].ochenta_porciento',
                title:'<span class=\'verticalText\'>80 %</span>',
                editor:vm.edDisabled,
                width:60
            },
            {
                field:'calificaciones[0].eval_final',
                title:'<span class=\'verticalText\'>Eval. Final</span>',
                width:60
            },
            {
                field:'calificaciones[0].veinte_porciento',
                title:'<span class=\'verticalText\'>20%</span>',
                editor:vm.edDisabled,
                width:60
            },
            {
                field:'calificaciones[0].nota_quimestre',
                title:'<span class=\'verticalText\'>Nota Quimestre</span>',
                editor:vm.edDisabled,
                width:60
            }
        ]
    });

    function setPath(){
        var asignatura = $('#asignatura').data('kendoDropDownList');
        var periodo = $('#periodo').data('kendoDropDownList');

        pathAsignaturaGetJson = path+'?periodo_id='+periodo.dataItem().id+'&asignatura_id='+asignatura.dataItem().asignatura.id;
    }

    function searchStudents(){
        kendo.ui.progress($('.panel-body'), true);

        var asignatura = $('#asignatura').data('kendoDropDownList');
        var periodo = $('#periodo').data('kendoDropDownList');
        var curso = $('#curso').data('kendoDropDownList');

        pathCalificaciones = pathCalificaciones+'?asignatura_id='+asignatura.dataItem().asignatura.id+'&periodo_id='+periodo.dataItem().id+'&curso_id='+curso.dataItem().id;

        $.ajax({
            url:pathCalificaciones,
            type:'GET',
            dataType:'json',
            cache:false,
            contentType:false,
            processData:false
        }).done(function (res) {
            var data = res.map(function(t){return t.estudiante;});
            data.forEach(function (v) {
                if(v.calificaciones.length == 0){
                    v.calificaciones = [{
                        asignatura_id: asignatura.dataItem().asignatura.id,
                        curso_id: curso.dataItem().id,
                        estudiante_id: v.id,
                        u1_insumo1: 0,
                        u1_r_insumo1: 0,
                        u1_insumo2: 0,
                        u1_r_insumo1_2: 0,
                        u1_promedio: 0,
                        u2_insumo1: 0,
                        u2_r_insumo1: 0,
                        u2_insumo2: 0,
                        u2_r_insumo1_2: 0,
                        u2_promedio: 0,
                        u3_insumo1: 0,
                        u3_r_insumo1: 0,
                        u3_insumo2: 0,
                        u3_r_insumo1_2: 0,
                        u3_promedio: 0,
                        promedio_de_prom: 0,
                        ochenta_porciento: 0,
                        eval_final: 0,
                        veinte_porciento: 0,
                        nota_quimestre: 0
                    }]
                }
            });
            console.log(data);
            var grid = $('#mainGrid').data('kendoGrid');
            grid.dataSource.data(data);
            kendo.ui.progress($('.panel-body'), false);

        }).error(function (err) {
            console.log(err);
            kendo.ui.progress($('.panel-body'), false);
        });
    }

    function edDisabled(container,options){
        $('<input name=\"' + options.field + '\" class=\"k-textbox input-values\" disabled data-required-msg=\"VALOR MÍNIMO: 0\"/>')
            .appendTo(container)
            .kendoNumericTextBox({
                format:"n2",
                spinners:false,
                decimals:2,
                restrictDecimals: true,
                round: false,
                min:0,
                max:10
            });
    }
});
