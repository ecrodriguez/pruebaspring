/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.HibernateUtil;
import model.Persona;
import org.hibernate.Session;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 * @author user
 */
public class NuevaPersona extends SimpleFormController {

    public NuevaPersona() {
        setCommandClass(Persona.class);
        setCommandName("persona");
        setSuccessView("persona");
        setFormView("Nueva_Persona");
    }

    @Override
    protected ModelAndView onSubmit(Object command) throws Exception {
        Persona per = (Persona) command;
        try {
            Session sesion = HibernateUtil.getSessionFactory().getCurrentSession();
            sesion.beginTransaction();
            sesion.save(per);
            sesion.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ModelAndView(new RedirectView("persona.htm"));
    }
}