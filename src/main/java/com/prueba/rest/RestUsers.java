package com.prueba.rest;

import com.prueba.model.Department;
import com.prueba.model.User;
import com.prueba.service.DepartmentService;
import com.prueba.service.UserService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

@RestController
public class RestUsers {

    @Autowired
    UserService userService;

    @Autowired
    DepartmentService departmentService;
   
    /**
     *Recurso Rest encargado de devolver la informacion sobre la version del sistema
     * @return Response
     */
    @RequestMapping(value = "/version/", method = RequestMethod.GET)
    public ResponseEntity<Map> version() {
        Map m = new HashMap();
        m.put("version", "Version 1.0 Spring MVC - Angular");
        return new ResponseEntity<Map>(m, HttpStatus.OK);
    }

    /**
     *Recurso Rest encargado de devolver la informacion de los departamentos y ciudades
     * @return Response
     */
    @RequestMapping(value = "/department/", method = RequestMethod.GET)
    public ResponseEntity<List<Department>> listDepartment() {
        List<Department> findDepartments = departmentService.findDepartments();
        if (findDepartments.isEmpty()) {
            return new ResponseEntity<List<Department>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Department>>(findDepartments, HttpStatus.OK);
    }

}
