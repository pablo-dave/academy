function validateID(id) {

    var region = id.substring(0, 2);
    var third_digit = id.substring(2, 3);


    //Validate ID and RUC for natural person
    if (region >= 1 && region <= 24 && (third_digit >= 0 && third_digit < 6)) {

        var last_digit = id.substring(9, 10);

        var even = parseInt(id.substring(1, 2)) + parseInt(id.substring(3, 4)) + parseInt(id.substring(5, 6)) + parseInt(id.substring(7, 8));

        var first_digit = id.substring(0, 1);
        var first_digit = (first_digit * 2);
        if (first_digit > 9) {
            var first_digit = (first_digit - 9);
        }

        //var third_digit = id.substring(2,3);
        var third_digit = (third_digit * 2);
        if (third_digit > 9) {
            var third_digit = (third_digit - 9);
        }

        var fifth_digit = id.substring(4, 5);
        var fifth_digit = (fifth_digit * 2);
        if (fifth_digit > 9) {
            var fifth_digit = (fifth_digit - 9);
        }

        var seventh_digit = id.substring(6, 7);
        var seventh_digit = (seventh_digit * 2);
        if (seventh_digit > 9) {
            var seventh_digit = (seventh_digit - 9);
        }

        var nineth_digit = id.substring(8, 9);
        var nineth_digit = (nineth_digit * 2);
        if (nineth_digit > 9) {
            var nineth_digit = (nineth_digit - 9);
        }

        var odd = first_digit + third_digit + fifth_digit + seventh_digit + nineth_digit;

        var total = (even + odd);

        var first_digit_total = String(total).substring(0, 1);

        var closest_ten = (parseInt(first_digit_total) + 1) * 10;

        var validator_digit = closest_ten - total;

        if (validator_digit == 10) {
            var validator_digit = 0;
        }

        if (validator_digit == last_digit) {
            if (id.length == 10) {
                //Valid ID
                return true;
            } else if (id.length == 13) {
                var branch = id.substring(10, 13);
                if (branch == '001') {
                    //Valid RUC for natural person
                    return true;
                }

            }
        } else {
            //Invalid ID
            return false;
        }


    }

    //Validate RUC for private societies and foreings without ID

    var region = id.substring(0, 2);
    var third_digit = id.substring(2, 3);

    if (region >= 1 && region <= 24 && (third_digit == 9)) {

        var coefficients = [4, 3, 2, 7, 6, 5, 4, 3, 2];
        var tenth_digit = id.substring(9, 10);
        var branch = id.substring(10, 13);
        var total = 0;

        for (var i = 0; i < 9; i++) {
            total += (parseInt(id.substring(i, i + 1)) * coefficients[i]);
        }

        var validator_digit = 11 - (total % 11);

        if ((validator_digit == tenth_digit) && (branch == '001')) {
            //Valid RUC for private societies or foreign withoutID
            return true;
        } else {
            //Invalid RUC for private societies or foreign withoutID
            return false;
        }


    }

    var region = id.substring(0, 2);
    var third_digit = id.substring(2, 3);

    if (region >= 1 && region <= 24 && (third_digit == 6)) {

        var coefficients = [3, 2, 7, 6, 5, 4, 3, 2];
        var nineth_digit = id.substring(8, 9);
        var branch = id.substring(9, 13);
        var total = 0;

        for (var i = 0; i < 8; i++) {
            total += (parseInt(id.substring(i, i + 1)) * coefficients[i]);
        }

        var validator_digit = 11 - (total % 11);

        if ((validator_digit == nineth_digit) && (branch == '0001')) {
            console.log('Es ruc de persona publica o entidad estatal');
            return true;
        } else {
            console.log('Error de ruc persona publica o entidad estatal' + ',' + validator_digit + ',' + nineth_digit + ',' + branch + ',' + total + ',');
            return false;
        }


    }

    return false;
}

////////////////////////////////////////////////

$(document).ready(function () {
    var cedula = $('#cedula, #cedula_representante, #cedula_padre, #cedula_madre');

    cedula.bind('keydown', function (e) {
        if (e.keyCode == 13 || e.keyCode == 9) {
            if (!validateID($(this).val())) {
                e.preventDefault();
                swal('Cédula incorrecta', '', 'error');
            }
        }
    });//event

    cedula.bind('blur', function (e) {
        if (e.target.value != '') {
            if (!validateID($(this).val())) {
                e.preventDefault();
                swal('Cédula incorrecta', '', 'error');
            }
        }
    });//event

    cedula.kendoMaskedTextBox({
        mask: '0000000000'
    });

    $('.form-horizontal').on('submit', function (e) {
        if (!validateID($('#cedula').val())) {
            e.preventDefault();
            swal('Cédula incorrecta', '', 'error');
        }
    });
    var nombres = document.getElementById('nombres');
    var apellidos = document.getElementById('apellidos');

    Inputmask({'regex': "[A-Za-z ]{255}", placeholder: ''}).mask(nombres);
    Inputmask({'regex': "[A-Za-z ]{255}", placeholder: ''}).mask(apellidos);

    //Fecha nac
    $('.input_date').datepicker({
        format: 'yyyy-mm-dd',
        language: 'es'
    }).on('changeDate',function () {
        var dateSelected = moment($(this).val(),'YYYY-MM-DD');
        var dateNow = moment();
        var diff = dateNow.diff(dateSelected,'years');

        $('#anios_cumplidos').val(diff);
        $(this).datepicker('hide');
    });

    $('#enfermedades').change(function () {
        if($(this).val() == 'SI'){
            $('#medicina_usa_group').removeClass('hidden');
        }else{
            $('#medicina_usa_group').addClass('hidden');
        }
    });

    $('#discapacidad').change(function () {
        if($(this).val() == 'SI'){
            $('#carnet_conadis_group').removeClass('hidden');
        }else{
            $('#carnet_conadis_group').addClass('hidden');
        }
    });
}); //document ready
