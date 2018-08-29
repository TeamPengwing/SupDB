/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ti.supdb.service;

import com.ti.supdb.domain.Employee;
import com.ti.supdb.repository.EmployeeDao;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author a0282565
 */
@Service
public class EmployeeServiceImpl implements EmployeeService{
    
    private EmployeeDao employeeDao;
    
     @Autowired
    EmployeeServiceImpl(final EmployeeDao employeeDao) {
        this.employeeDao = employeeDao;
    }
    
    public List<Employee> getEmployeeList(String fullname){    
        return employeeDao.getEmployeeList(fullname);
        
    }
}
