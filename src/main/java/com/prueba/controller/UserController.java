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
public class UserController {

    private loginService login = new loginServiceImp();

    @RequestMapping(value = "/user/userReg.htm", method = RequestMethod.POST)
    ModelAndView add(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        String username = request.getParameter("username");
        String name = request.getParameter("name");
        String lastname = request.getParameter("lastname");
        String civilStatus = request.getParameter("civilStatus");
        String birthDate = request.getParameter("birthDate");
        String salary = request.getParameter("salary");
        String email = request.getParameter("email");
        String departament = request.getParameter("departament");
        String city = request.getParameter("city");        
        

        User user = new User(0, username, "", name, lastname, civilStatus, birthDate, salary, email, departament, city);

        return new ModelAndView("viewDatos", "userReg",user);

    }
    
    @RequestMapping(value = "/user/back.htm", method = RequestMethod.POST)
    ModelAndView back(HttpServletRequest request, HttpServletResponse response)
            throws Exception {       

        return new ModelAndView("datos", "userReg","");

    }
}
