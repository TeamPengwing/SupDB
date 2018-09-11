package com.ti.supdb.service;

import com.ti.supdb.domain.DataField;
import com.ti.supdb.domain.DataGroup;
import com.ti.supdb.domain.Material;
import java.util.List;

/**
 *
 * @author a0220616
 */
public interface ComparatorService {

    List<DataGroup> getAllDataGroupsWithSort();

    List<DataGroup> getDataGroupsByDataGroupIdAndDisplaySort(List<DataGroup> dataGroups);

    List<DataField> getDataFieldsByDataGroupId(int dataGroupId);

    List<Material> compGetMaterial(String keyword);

}
