package com.prueba.rest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class IndexController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    String home() {
        return "index";
    }

    @RequestMapping(value = "/datos", method = RequestMethod.GET)
    String login() {
        return "datos";
    }

    @RequestMapping(value = "/view", method = RequestMethod.GET)
    String viewDatos() {
        return "viewDatos";
    }

}
