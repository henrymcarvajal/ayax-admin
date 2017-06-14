/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(window).load(function () {
    idConversacion = getUrlParameter('id');
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



