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
public class SearchResults  implements Serializable {
    //---- Members
    private static final long serialVersionUID = 1L;
    
    private Integer materialid;
    private String materialname;
    private String materialdesc;
    /**
     * @return the materialid
     */
    public Integer getMaterialid() {
        return materialid;
    }

    /**
     * @param materialid the materialid to set
     */
    public void setMaterialid(Integer materialid) {
        this.materialid = materialid;
    }

    /**
     * @return the materialname
     */
    public String getMaterialname() {
        return materialname;
    }

    /**
     * @param materialname the materialname to set
     */
    public void setMaterialname(String materialname) {
        this.materialname = materialname;
    }

    /**
     * @return the materialdesc
     */
    public String getMaterialdesc() {
        return materialdesc;
    }

    /**
     * @param materialdesc the materialdesc to set
     */
    public void setMaterialdesc(String materialdesc) {
        this.materialdesc = materialdesc;
    }



           
    
}
