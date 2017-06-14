<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Ayax.co - Reserva de servicio</title>
    </head>
    <body>
        <p><img style="display: block; margin-left: auto; margin-right: auto;" src="img/ayax-logo.jpg" alt="Ayax" width="230" height="220" /></p>
        <center>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-sm-12">
                        <h1>Resumen de la Reserva</h1>
                        <p>Este es el monto que recargar&aacute;s tu cuenta: </p>
                        <h1>$${factura.valor}</h1>
                    </div>
                </div>
                <p>Haz click en el bot&oacute;n "Pagar con ePayco" para proceder con el pago electr&oacute;nico.</p>
                <form id="frm_botonePayco" name="frm_botonePayco" method="post" action="https://secure.payco.co/checkout.php"> 
                    <input name="p_cust_id_cliente" type="hidden" value="9770">
                    <input name="p_key" type="hidden" value="a77302019ab09dac1d0413bd9261e7de93668507">
                    <input name="p_id_invoice" type="hidden" value="${factura.id}">
                    <input name="p_description" type="hidden" value="Reserva de servicio en Ayax.co por $${factura.valor}">
                    <input name="p_amount" id="p_amount" type="hidden" value="${factura.valor?string.computer}">
                    <input name="p_amount_base" id="p_amount_base" type="hidden" value="${factura.valor?string.computer}">
                    <input name="p_tax" id="p_tax" type="hidden" value="0.00">
                    <input name="p_currency_code" type="hidden" value="COP">
                    <input name="p_email" type="hidden" value="${usuario.buzonElectronico}">
                    <input name="p_signature" type="hidden" id="signature" value="${signature}" />
                    <input name="p_test_request" type="hidden" value="${test}">
                    <input name="p_customer_ip" type="hidden" value="127.0.0.1">
                    <input name="p_url_response" type="hidden" value="${url_ayax}/oferta/${oferta.id}/reserva/pago"> 
                    <input name="p_url_confirmation" type="hidden" value="${url_ayax}/confirmacionPagoReserva"> 
                    <input name="idboton"type="hidden" id="idboton"  value="689" />  
                    <input type="image" id="imagen" src="https://369969691f476073508a-60bf0867add971908d4f26a64519c2aa.ssl.cf5.rackcdn.com/btns/btn1.png" />
                </form>
            </div>
        </center>
        <!--#include "../../common/copyright.ftl"-->            
        <!--#include "../../common/footer.ftl"-->            
    </body>
</html>
