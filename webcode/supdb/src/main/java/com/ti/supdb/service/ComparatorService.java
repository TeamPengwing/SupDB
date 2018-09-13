package com.ti.supdb.service;

import com.ti.supdb.domain.DataField;
import com.ti.supdb.domain.DataGroup;
import com.ti.supdb.domain.Material;
import com.ti.supdb.domain.CompDataFieldValue;
import com.ti.supdb.domain.MaterialRating;
import java.util.List;

public interface ComparatorService {

    // comment
    List<DataGroup> getAllDataGroupsWithSort();

    List<DataField> getDataFieldsByDataGroupId(int dataGroupId);

    List<Material> compGetMaterial(String keyword);

    List<CompDataFieldValue> compGetFieldsWithValues(int groupId, int matId1, int matId2, int matId3, int matId4);

    List<MaterialRating> compGetMaterialRating(int materialId);

}
