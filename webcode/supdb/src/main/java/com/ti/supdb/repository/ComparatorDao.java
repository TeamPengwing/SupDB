/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ti.supdb.repository;

import com.ti.spring.annotations.MyBatisRepository;
import com.ti.supdb.domain.DataField;
import com.ti.supdb.domain.DataGroup;
import com.ti.supdb.domain.Material;
import java.util.List;
import java.util.Map;

/**
 *
 * @author a0220616
 */
@MyBatisRepository
public interface ComparatorDao {

    List<DataGroup> getAllDataGroupsWithSort(Map<String, Object> params);

    List<DataField> getDataFieldsByDataGroupId(Map<String, Object> params);

    List<Material> compGetMaterial(Map<String, Object> params);

}
