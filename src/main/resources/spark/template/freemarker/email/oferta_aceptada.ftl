<#assign url_inicioservicio = "${url_ayax}/oferta/${oferta.id}/inicio"> 
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Ayax - Oferta de Servicio Aceptada</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <p><img style="display: block; margin-left: auto; margin-right: auto;" src="${url_ayax}/img/ayax-logo.jpg" alt="Ayax" width="230" height="220" /></p>
        <p>Tu oferta de servicio especial de transporte en <a href="${url_ayax}">Ayax.co</a> ha sido aceptada.</p>
        <p>&nbsp;</p>
		<p>El servicio sobre el que fue aceptada tu oferta es</p>
		<table style="margin-left: auto; margin-right: auto;" border="1">
            <tbody>
                <tr>
                    <td>Origen</td>
                    <td>:</td>
                    <td>${oferta.servicio.origen}</td>
                </tr>
                <tr>
                    <td>Destino</td>
                    <td>:</td>
                    <td>${oferta.servicio.destino}</td>
                </tr>
                <tr>
                    <td>Hora salida</td>
                    <td>:</td>
                    <td>${oferta.servicio.horaSalida?datetime}</td>
                </tr>
                <tr>
                    <td>Hora Llegada</td>
                    <td>:</td>
                    <td>${oferta.servicio.horaLlegada?datetime}</td>
                </tr>
                <tr>
                    <td>N&uacute;mero pasajeros</td>
                    <td>:</td>
                    <td>${oferta.servicio.numeroPasajeros}</td>
                </tr>
			</tbody>
		</table>
        <#if oferta.transportador.serviciosAtendidos != 0>
            <#if oferta.transportador.credito < oferta.comision>
                <p>Recarga tu cuenta para poder atender el servicio y ser conectado con el solicitante.</p>
            <#else>
                <p>Haz clic en el enlace de abajo para enviarte los datos del solicitante.</p>
                <center>
                <a href="${url_inicioservicio}">Aceptar contacto</a>
                </center>
            </#if>
        <#else>
            <p>Por ser tu primer servicio, no necesitas pagar la comisi&oacute;n de COP$${oferta.comision}.</p><br>
            <p>Haz clic en el enlace de abajo para enviarte los datos del solicitante.</p>
            <center>
                <a href="${url_inicioservicio}">Aceptar contacto</a>
            </center>
        </#if>
        <p>&nbsp;</p>
        <p>Cordialmente,</p>
        <p>&nbsp;</p>
        <p>El equipo de Ayax.co,</p>
        <p><img src="${url_ayax}/img/ayax-letra.png" alt="Ayax" width="100" height="90" /></p>
    </body>
</html>