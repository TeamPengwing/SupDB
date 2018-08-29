/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ti.supdb.repository;

import com.ti.spring.annotations.MyBatisRepository;
import com.ti.supdb.domain.Employee;
import java.util.List;

/**
 *
 * @author a0282565
 */
@MyBatisRepository 
public interface EmployeeDao {
    
       List<Employee> getEmployeeList(String fullname);
    
}
