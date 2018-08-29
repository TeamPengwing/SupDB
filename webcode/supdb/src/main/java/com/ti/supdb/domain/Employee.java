/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ti.supdb.domain;

import java.io.Serializable;

/**
 *
 * @author a0282565
 */
public class Employee  implements Serializable {
    //---- Members
    private static final long serialVersionUID = 1L;
    
    private Integer empkey;
    private String fullname;
    private String employeeid;
    private String lastname;
    private String firstname;

    /**
     * @return the empkey
     */
    public Integer getEmpkey() {
        return empkey;
    }

    /**
     * @param empkey the empkey to set
     */
    public void setEmpkey(Integer empkey) {
        this.empkey = empkey;
    }

    /**
     * @return the fullname
     */
    public String getFullname() {
        return fullname;
    }

    /**
     * @param fullname the fullname to set
     */
    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    /**
     * @return the employeeid
     */
    public String getEmployeeid() {
        return employeeid;
    }

    /**
     * @param employeeid the employeeid to set
     */
    public void setEmployeeid(String employeeid) {
        this.employeeid = employeeid;
    }

    /**
     * @return the lastname
     */
    public String getLastname() {
        return lastname;
    }

    /**
     * @param lastname the lastname to set
     */
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    /**
     * @return the firstname
     */
    public String getFirstname() {
        return firstname;
    }

    /**
     * @param firstname the firstname to set
     */
    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }
    
           
    
}
