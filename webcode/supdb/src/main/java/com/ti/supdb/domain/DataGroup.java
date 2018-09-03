package com.ti.supdb.domain;

import java.util.Date;

public class DataGroup {

    private int dataGroupId;
    private int materialTypeId;
    private String dataGroup;
    private String createdBy;
    private Date createDate;
    private int displaySort;

    public DataGroup() {

    }

    public DataGroup(int dataGroupId, String dataGroup, int displaySort) {
        this.dataGroupId = dataGroupId;
        this.dataGroup = dataGroup;
        this.displaySort = displaySort;
    }

    public int getDataGroupId() {
        return dataGroupId;
    }

    public void setDataGroupId(int dataGroupId) {
        this.dataGroupId = dataGroupId;
    }

    public int getMaterialTypeId() {
        return materialTypeId;
    }

    public void setMaterialTypeId(int materialTypeId) {
        this.materialTypeId = materialTypeId;
    }

    public String getDataGroup() {
        return dataGroup;
    }

    public void setDataGroup(String dataGroup) {
        this.dataGroup = dataGroup;
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

    public int getDisplaySort() {
        return displaySort;
    }

    public void setDisplaySort(int displaySort) {
        this.displaySort = displaySort;
    }
}
