/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prueba.controller;

import com.prueba.model.User;
import com.prueba.service.loginService;
import com.prueba.service.loginServiceImp;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user/validate.htm")
public class loginController {

    
    private loginService login = new loginServiceImp();

    @RequestMapping(method = RequestMethod.POST)
    ModelAndView login(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
//		Employee employee = new Employee();

        String user = request.getParameter("user");
        String password = request.getParameter("password");

        User validateLogin = login.validateLogin(user, password);

        if (validateLogin == null) {
            return new ModelAndView("index", "userError", "Datos de ingreso no válidos");
        } else {
            return new ModelAndView("datos", "userSuccess", validateLogin);
        }

    }
}
