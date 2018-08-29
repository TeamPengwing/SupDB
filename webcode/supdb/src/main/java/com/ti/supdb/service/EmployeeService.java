/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ti.supdb.service;

import com.ti.supdb.domain.Employee;
import java.util.List;

/**
 *
 * @author a0282565
 */
public interface EmployeeService {
    
    List<Employee> getEmployeeList(String fullname);
    
}
