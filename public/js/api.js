var basepath= 'http://'+window.location.hostname+':'+window.location.port;
//alert(basepath);
 function getDataCliente($id) {

     $.ajax({
         url: basepath+'/api/clientes/'+$id,
         type: 'GET',
         dataType:'JSON',
         success: function(response){
             //console.log(response);
             //$('#texto').text(response[0]["nombre"]+' '+response[0]["apellidos"]);
             $('#cnombre').html(response[0]["nombre"]);
             $('#capellido').html(response[0]["apellidos"]);
             $('#cemail').html(response[0]["email"]);
             $('#cfacebook').html(response[0]["facebook"]);
             $('#ctelefono').html(response[0]["telefono"]);
         },
         error: function (request,status,error) {
             //console.log(error);
             //$('#texto').text(error);
             alert('No existe el usuario');
         }
     });

 }
function getDataPromocion($id) {

    $.ajax({
        url: basepath+'/api/promociones/'+$id,
        type: 'GET',
        dataType:'JSON',
        success: function(response){
            //console.log(response);
            //$('#texto').text(response[0]["nombre"]+' '+response[0]["apellidos"]);
            $('#pnombre').html(response[0]["nombre"]);
            $('#pdescripcion').html(response[0]["descripcion"]);
            $('#pinicio').html(response[0]["inicio"]);
            $('#pfinal').html(response[0]["fin"]);
            //$('#ctelefono').html(response[0]["telefono"]);
        },
        error: function (request,status,error) {
            //console.log(error);
            //$('#texto').text(error);
            alert('No existe el usuario');
        }
    });

}