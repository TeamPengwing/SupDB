package com.ti.supdb.service;

import com.ti.supdb.domain.DataField;
import com.ti.supdb.domain.DataGroup;
import com.ti.supdb.domain.Material;
import com.ti.supdb.repository.ComparatorDao;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author a0220616
 */
@Service
public class ComparatorServiceImpl implements ComparatorService {

    @Autowired
    private ComparatorDao comparatorDao;

    @Override
    public List<DataGroup> getAllDataGroupsWithSort() {
        Map<String, Object> params = new HashMap<>();
        params.put("result", null);

        comparatorDao.getAllDataGroupsWithSort(params);

        return (List<DataGroup>) params.get("result");
    }

    @Override
    public List<DataField> getDataFieldsByDataGroupId(int dataGroupId) {

        Map<String, Object> params = new HashMap<>();
        params.put("dataGroupId", dataGroupId);
        params.put("result", null);

        comparatorDao.getDataFieldsByDataGroupId(params);

        return (List<DataField>) params.get("result");
    }

    @Override
    public List<DataGroup> getDataGroupsByDataGroupIdAndDisplaySort(List<DataGroup> dataGroups) {
        List<DataGroup> result = new ArrayList<>();
        // return sample data
        for (DataGroup item : dataGroups) {
            DataGroup i = new DataGroup(item.getDataGroupId(), "Group " + item.getDataGroupId(), item.getDataGroupId(), item.isVisible());
            result.add(i);

        }
        return result;
    }

    @Override
    public List<Material> compGetMaterial(String keyword) {
        Map<String, Object> params = new HashMap<>();
        params.put("keyWord", keyword);
        params.put("result", null);
        
        comparatorDao.compGetMaterial(params);
        System.out.println("compGetMaterial: " + params.get("result"));

        return (List<Material>) params.get("result");
    }
}
