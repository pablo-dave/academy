<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Reporte de calificaciones</title>
    <style>
        table {
            border-collapse:collapse;
            text-align:center;
            table-layout : fixed;
            width:1050px;
        }
        th.vertical {
            text-align: left;
            white-space:nowrap;
            g-origin:50% 50%;
            -webkit-transform: rotate(-90deg);
            -moz-transform: rotate(-90deg);
            -ms-transform: rotate(-90deg);
            -o-transform: rotate(-90deg);
            transform: rotate(-90deg);
            font-weight: normal;
        }
        th.vertical p {
            margin:-30% -100% ;
            display:inline-block;
        }
        th.vertical p:before{
            content:'';
            width:0px;
            padding-top:110%;/* takes width as reference, + 10% for faking some extra padding */
            display:inline-block;
            vertical-align:middle;
        }

        /* Can't eliminate the spacing no matter what I try
        th:first-child {
            height: 130px;
        }*/
        th:not(:first-child) {
            height: 10px;
        }

        td:nth-child(2), td:nth-child(3), td:nth-child(4) {
            width: 10px;
        }

        .center{
            text-align: center;
        }
    </style>
    <style type="text/css"> thead:before, thead:after { display: none; } tbody:before, tbody:after { display: none; } </style>
</head>
<body>
<!--<body onload="window.print()">-->
@foreach($estudiantes as $e)
    <h2 class="center">
        <img style="float: left;" src="{{asset("images/logo.png")}}" width="90" height="90">
        <img style="float: right;" src="{{asset("images/ministerio.png")}}" width="120" height="70">
        Centro Educativo Particular  "Liceo Ecuatoriano" <br>
        REGISTRO DE EVALUACIONES DEL PRIMER QUIMESTRE
    </h2>
    <br>
    <label for=""><b>Nombres y Apellidos: </b>{{$e->nombres." ".$e->apellidos}}</label><br>
    <label for=""><b>Año de Educación Básica: </b>{{$e->nombres." ".$e->apellidos}}</label>
    <table align="center" border="1" class="custom-table">
        <tr>
            <th rowspan="2">No</th>
            <th rowspan="2" style="width: 200px">Materias</th>
            <th colspan="5">Unidad 1</th>
            <th colspan="5">Unidad 2</th>
            <th colspan="5">Unidad 3</th>
            <th colspan="4">TOTAL PROMEDIO</th>
        </tr>
        <tr>
            <th class="vertical"><p>Insumo 1</p></th>
            <th class="vertical"><p>R. Insumo I</p></th>
            <th class="vertical"><p>Insumo 2</p></th>
            <th class="vertical"><p>R. Insumo II</p></th>
            <th class="vertical"><p>Promedio U1</p></th>
            <th class="vertical"><p>Insumo 1</p></th>
            <th class="vertical"><p>R. Insumo I</p></th>
            <th class="vertical"><p>Insumo 2</p></th>
            <th class="vertical"><p>R. Insumo II</p></th>
            <th class="vertical"><p>Promedio U2</p></th>
            <th class="vertical"><p>Insumo 1</p></th>
            <th class="vertical"><p>R. Insumo I</p></th>
            <th class="vertical"><p>Insumo 2</p></th>
            <th class="vertical"><p>R. Insumo III</p></th>
            <th class="vertical"><p>Promedio U3</p></th>
            <th class="vertical"><p>PROMEDIO</p></th>
            <th class="vertical"><p>80%</p></th>
            <th class="vertical"><p>EVAL. FINAL</p></th>
            <th class="vertical"><p>20%</p></th>
            <th class="vertical"><p>NOTA QUIMESTRE</p></th>
        </tr>
        @php
            $count = 1;
        @endphp
        @foreach($e->calificaciones as $c)
            <tr>
                <td>{{$count}}</td>
                <td style="width: 200px">{{$c->asignatura->nombre}}</td>
                <td>{{$c->u1_insumo1}}</td>
                <td>{{$c->u1_r_insumo1}}</td>
                <td>{{$c->u1_insumo2}}</td>
                <td>{{$c->u1_r_insumo1_2}}</td>
                <td>{{$c->u1_promedio}}</td>
                <td>{{$c->u2_insumo1}}</td>
                <td>{{$c->u2_r_insumo1}}</td>
                <td>{{$c->u2_insumo2}}</td>
                <td>{{$c->u2_r_insumo1_2}}</td>
                <td>{{$c->u2_promedio}}</td>
                <td>{{$c->u3_insumo1}}</td>
                <td>{{$c->u3_r_insumo1}}</td>
                <td>{{$c->u3_insumo2}}</td>
                <td>{{$c->u3_r_insumo1_2}}</td>
                <td>{{$c->u3_promedio}}</td>
                <td>{{$c->promedio_de_prom}}</td>
                <td>{{$c->ochenta_porciento}}</td>
                <td>{{$c->eval_final}}</td>
                <td>{{$c->veinte_porciento}}</td>
                <td>{{$c->nota_quimestre}}</td>
            </tr>
            @php
                $count++;
            @endphp
        @endforeach
        <tr>
            <td colspan="22">
                .
            </td>
        </tr>
        <tr>
            <td colspan="22" style="background-color: #DA9694;-webkit-print-color-adjust:exact;font-weight: bold;">RESUMEN DEL DESARROLLO COMPORTAMENTAL, APROVECHAMIENTO Y ASISTENCIA</td>
        </tr>
        <tr>
            <td colspan="14">PRIMER QUIMESTRE</td>
            <td></td>
            <td colspan="4" style="font-size: 8pt;">TOTAL DIAS LABORADOS</td>
            <td colspan="2" style="font-size: 9pt;"></td>
        </tr>
        <tr>
            <td colspan="3" style="font-weight: bold;">APROVECHAMIENTO:</td>
            <td colspan="2"></td>
            <td colspan="9"></td>
            <td></td>
            <td colspan="4" style="font-size: 8pt;">DIAS LABORADOS POR EL ALUMNO</td>
            <td colspan="2" style="font-size: 9pt;"></td>
        </tr>
        <tr>
            <td colspan="3" rowspan="2" style="font-weight: bold;">COMPORTAMIENTO:</td>
            <td rowspan="2" >E</td>
            <td rowspan="2" colspan="3"></td>
            <td rowspan="2" colspan="7"></td>
            <td rowspan="2"></td>
            <td colspan="4" style="font-size: 8pt;">FALTAS JUSTIFICADAS</td>
            <td colspan="2" style="font-size: 9pt;"></td>
        </tr>
        <tr>
            <td colspan="4" style="font-size: 8pt;">FALTAS NO JUSTIFICADAS</td>
            <td colspan="2" style="font-size: 9pt;"></td>
        </tr>
        <tr>
            <td colspan="15"></td>
            <td colspan="4" style="font-size: 8pt;">ATRASOS</td>
            <td colspan="2" style="font-size: 9pt;"></td>
        </tr>
        <tr>
            <td colspan="15"></td>
            <td colspan="4">TOTAL</td>
            <td colspan="2"></td>
        </tr>
    </table>
@endforeach
</body>
</html>
