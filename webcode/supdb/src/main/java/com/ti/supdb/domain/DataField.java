package com.ti.supdb.domain;

import java.util.Date;

public class DataField {

    /**
     * @return the dataValue
     */
    public String getDataValue() {
        return dataValue;
    }

    /**
     * @param dataValue the dataValue to set
     */
    public void setDataValue(String dataValue) {
        this.dataValue = dataValue;
    }

    private int dataFieldId;
    private int dataGroupId;
    private String dataField;
    private String dataValue;
    private String dataFieldType;
    private String createdBy;
    private Date createDate;
    private String lastModifiedBy;
    private Date lastModifiedDate;
    
    public int getDataFieldId() {
        return dataFieldId;
    }

    public void setDataFieldId(int dataFieldId) {
        this.dataFieldId = dataFieldId;
    }

    public int getDataGroupId() {
        return dataGroupId;
    }

    public void setDataGroupId(int dataGroupId) {
        this.dataGroupId = dataGroupId;
    }

    public String getDataField() {
        return dataField;
    }

    public void setDataField(String dataField) {
        this.dataField = dataField;
    }

    public String getDataFieldType() {
        return dataFieldType;
    }

    public void setDataFieldType(String dataFieldType) {
        this.dataFieldType = dataFieldType;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getLastModifiedBy() {
        return lastModifiedBy;
    }

    public void setLastModifiedBy(String lastModifiedBy) {
        this.lastModifiedBy = lastModifiedBy;
    }

    public Date getLastModifiedDate() {
        return lastModifiedDate;
    }

    public void setLastModifiedDate(Date lastModifiedDate) {
        this.lastModifiedDate = lastModifiedDate;
    }
}
