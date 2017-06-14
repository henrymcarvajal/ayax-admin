/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var idServicio;
var datosContacto;
$(window).load(function () {
    idServicio = getUrlParameter('id');
    $.ajax({
        type: "GET",
        url: "/servicio/" + idServicio,
        dataType: "json",
        success: function (data) {

            if (data !== null) {
                renderizarDetalleServicios(data);
            } else {
                alert("hay un problema");
                var mensaje = 'no es posible mostrar los servicios actualmente publicados';
                var codigo = '001';
                var url = "/informativo.html?codigo=" + codigo + "&mensaje=" + mensaje;
                window.location.href = url;
            }
        }
    });
});


function renderizarDetalleServicios(detalleServicio) {
    
    $('#descripcion-servicio').val(detalleServicio.map.descripcion);
    $('#origen').val(detalleServicio.map.origen);
    $('#destino').val(detalleServicio.map.destino);
    $('#distancia').val(detalleServicio.map.distancia);
    $('#fecha-inicio').val(detalleServicio.map.horaSalida);
    $('#fecha-fin').val(detalleServicio.map.horaLlegada);
    $('#numero-pasajeros').val(detalleServicio.map.numeroPasajeros);
    if (detalleServicio.map.redondo === true) {
        $('#ida-vuelta').val('SI');
    }else {
         $('#ida-vuelta').val('NO');
    }
}

function validarDatosContacto(){
	 datosContacto=false;
     var str = $('#descripcion-servicio').val();
     $('#datos-contacto').css('visibility','hidden').addClass('hidden');
     var email = extractEmails(str);
     var phone = extractPhone(str);
   
     if(email!=null || phone!=null){
		 datosContacto=true;
		 $('#datos-contacto').css('visibility','visible').hide().fadeIn().removeClass('hidden');
	 }
}
