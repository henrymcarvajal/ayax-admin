/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ayax.website.procesos;

import com.ayax.website.persistencia.EntityManagerFactoryBuilder;
import com.ayax.website.persistencia.entidades.Factura;
import com.ayax.website.persistencia.entidades.Oferta;
import com.ayax.website.persistencia.fachadas.FacturaJpaController;
import com.ayax.website.persistencia.fachadas.OfertaFacade;
import com.ayax.website.procesos.util.Encriptador;
import com.ayax.website.server.ConfigManager;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import spark.ModelAndView;
import spark.Response;

/**
 *
 * @author Mauris
 */
public class AdminReserva {

    public AdminReserva() {
    }

    public ModelAndView mostrarPagina(String idOferta, Response res) {

        OfertaFacade of = new OfertaFacade();
        Oferta oferta = of.buscarPorId(idOferta);
        
        if (oferta != null) {
            Factura factura = new Factura();
            factura.setId(java.util.UUID.randomUUID().toString());
            factura.setTransportador(null);
            factura.setValor(BigInteger.valueOf(oferta.getReserva()));
            factura.setGenerada(Boolean.TRUE);

            FacturaJpaController sjc = new FacturaJpaController(EntityManagerFactoryBuilder.INSTANCE.build());

            try {
                sjc.create(factura);
            } catch (Exception ex) {
                Logger.getLogger(AdminReserva.class.getName()).log(Level.SEVERE, null, ex);
            }

            Map<String, Object> dataMap = new HashMap<>();
            dataMap.put("oferta", oferta);
            dataMap.put("usuario", oferta.getServicio().getUsuario());
            dataMap.put("factura", factura);
            dataMap.put("url_ayax", ConfigManager.INSTANCE.getEnvironment());
            dataMap.put("test", ConfigManager.INSTANCE.isTestEnvironment() ? "TRUE" : "FALSE");
            dataMap.put("signature", new Encriptador().encriptar(factura.getId(), oferta.getReserva().toString()));
            return new ModelAndView(dataMap, "reserva/formularioPago.ftl");
        } else {
            res.redirect("/informativo.html?codigo=001&mensaje=No puedes recargar tu cuenta, hasta que los documentos de tu vehiculo esten al dia");
            return new ModelAndView(null, null);
        }
    }
}
