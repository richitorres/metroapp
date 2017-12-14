$(document).ready(function () {

    var tel=[];

    for(var i=0;i<10;i++)
    {
        tel+=[Math.floor((Math.random() * 10) + 1).toString()];
    }
    $('#Telefono').val(tel);

    // consulta de acceso
    $('#inputcode').change(function () {
        var codigo= $('#inputcode').val();
        console.log(codigo.length);
        getDataCliente(codigo);
    });
    //Consulta de validacion promocion
    $('#inputpromo').change(function () {
        var codigo= $('#inputpromo').val();
        getDataPromocion(codigo);
    });

    $('#clearbutton').click( function () {
        $('#inputpromo').val('');
        $('#pnombre').html('');
        $('#pdescripcion').html('');
        $('#pinicio').html('');
        $('#pfinal').html('');
        //$('#ctelefono').html('');
        $('#inputpromo').focus();
    });

    $('#clearbutton').click( function () {
        $('#inputcode').val('');
        $('#cnombre').html('');
        $('#capellido').html('');
        $('#cemail').html('');
        $('#cfacebook').html('');
        $('#ctelefono').html('');
        $('#inputcode').focus();
    });

    // busqueda en la tabla principal
    $('#inputsearch').keyup( function () {
         var value= $(this).val().toLowerCase();
         $('#mitabla tr').filter(function () {
             $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
         });

    });

});