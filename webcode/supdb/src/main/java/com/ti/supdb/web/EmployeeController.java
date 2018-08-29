/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ti.supdb.web;

import com.ti.supdb.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author a0282565
 */

@Controller 
public class EmployeeController {
    
    private EmployeeService employeeservice;
    
            
    @Autowired
    EmployeeController(final EmployeeService employeeservice){
        this.employeeservice =  employeeservice;
    }
    
    
    @RequestMapping("/listemployees")
    public String listlots(final Model model,
        @RequestParam("fullname") final String fullname) {
    model.addAttribute("employees", employeeservice.getEmployeeList(fullname) );
            return "employeelist";
    }
    
    
}
