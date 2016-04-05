/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prueba.service;

import com.prueba.model.Department;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("departmentService")
@Transactional
public class DepartmentServiceImp implements DepartmentService {

    private static List<Department> departments;

    static {

        departments = populateDummy();
    }

    @Override
    public List<Department> findDepartments() {

        return departments;

    }

    private static List<Department> populateDummy() {
        List<Department> departments = new ArrayList<Department>();
        List<String> citiesSan = new ArrayList<String>();
        citiesSan.add("Bucaramanga");
        citiesSan.add("Cucuta");
        departments.add(new Department(0, "Santander", citiesSan));      
        
         List<String> citiesCun = new ArrayList<String>();
        citiesCun.add("Bogota");
        citiesCun.add("Tunja");
        departments.add(new Department(0, "Cundinamarca", citiesCun));

        return departments;
    }

}
