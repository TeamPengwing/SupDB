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
public class SearchResults implements Serializable {
    //---- Members

    public SearchResults(Integer materialid,
            String materialname,
            String materialdesc,
            String groupname1,
            String fieldname1,
            String fieldvalue1,
            String groupname2,
            String fieldname2,
            String fieldvalue2,
            String groupname3,
            String fieldname3,
            String fieldvalue3,
            String rating,
            String imageSrc) {
        this.materialid = materialid;
        this.materialname = materialname;
        this.materialdesc = materialdesc;
        this.groupname1 = groupname1;
        this.fieldname1 = fieldname1;
        this.fieldvalue1 = fieldvalue1;
        this.groupname2 = groupname2;
        this.fieldname2 = fieldname2;
        this.fieldvalue2 = fieldvalue2;
        this.groupname3 = groupname3;
        this.fieldname3 = fieldname3;
        this.fieldvalue3 = fieldvalue3;
        this.rating = rating;
        this.imageSrc = imageSrc;
    }

    private static final long serialVersionUID = 1L;

    private Integer materialid;
    private String materialname;
    private String materialdesc;
    private String groupname1;
    private String fieldname1;
    private String fieldvalue1;
    private String groupname2;
    private String fieldname2;
    private String fieldvalue2;
    private String groupname3;
    private String fieldname3;
    private String fieldvalue3;
    private String rating;
    private String imageSrc;

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

    /**
     * @return the groupname1
     */
    public String getGroupname1() {
        return groupname1;
    }

    /**
     * @param groupname1 the groupname1 to set
     */
    public void setGroupname1(String groupname1) {
        this.groupname1 = groupname1;
    }

    /**
     * @return the fieldname1
     */
    public String getFieldname1() {
        return fieldname1;
    }

    /**
     * @param fieldname1 the fieldname1 to set
     */
    public void setFieldname1(String fieldname1) {
        this.fieldname1 = fieldname1;
    }

    /**
     * @return the fieldvalue1
     */
    public String getFieldvalue1() {
        return fieldvalue1;
    }

    /**
     * @param fieldvalue1 the fieldvalue1 to set
     */
    public void setFieldvalue1(String fieldvalue1) {
        this.fieldvalue1 = fieldvalue1;
    }

    /**
     * @return the groupname2
     */
    public String getGroupname2() {
        return groupname2;
    }

    /**
     * @param groupname2 the groupname2 to set
     */
    public void setGroupname2(String groupname2) {
        this.groupname2 = groupname2;
    }

    /**
     * @return the fieldname2
     */
    public String getFieldname2() {
        return fieldname2;
    }

    /**
     * @param fieldname2 the fieldname2 to set
     */
    public void setFieldname2(String fieldname2) {
        this.fieldname2 = fieldname2;
    }

    /**
     * @return the fieldvalue2
     */
    public String getFieldvalue2() {
        return fieldvalue2;
    }

    /**
     * @param fieldvalue2 the fieldvalue2 to set
     */
    public void setFieldvalue2(String fieldvalue2) {
        this.fieldvalue2 = fieldvalue2;
    }

    /**
     * @return the rating
     */
    public String getRating() {
        return rating;
    }

    /**
     * @param rating the rating to set
     */
    public void setRating(String rating) {
        this.rating = rating;
    }

    /**
     * @return the groupname3
     */
    public String getGroupname3() {
        return groupname3;
    }

    /**
     * @param groupname3 the groupname3 to set
     */
    public void setGroupname3(String groupname3) {
        this.groupname3 = groupname3;
    }

    /**
     * @return the fieldname3
     */
    public String getFieldname3() {
        return fieldname3;
    }

    /**
     * @param fieldname3 the fieldname3 to set
     */
    public void setFieldname3(String fieldname3) {
        this.fieldname3 = fieldname3;
    }

    /**
     * @return the fieldvalue3
     */
    public String getFieldvalue3() {
        return fieldvalue3;
    }

    /**
     * @param fieldvalue3 the fieldvalue3 to set
     */
    public void setFieldvalue3(String fieldvalue3) {
        this.fieldvalue3 = fieldvalue3;
    }

    /**
     * @return the imageSrc
     */
    public String getImageSrc() {
        return imageSrc;
    }

    /**
     * @param imageSrc the imageSrc to set
     */
    public void setImageSrc(String imageSrc) {
        this.imageSrc = imageSrc;
    }

}
