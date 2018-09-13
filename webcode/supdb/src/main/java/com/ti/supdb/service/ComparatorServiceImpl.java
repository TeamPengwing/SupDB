package com.ti.supdb.service;

import com.ti.supdb.domain.DataField;
import com.ti.supdb.domain.DataGroup;
import com.ti.supdb.domain.Material;
import com.ti.supdb.domain.CompDataFieldValue;
import com.ti.supdb.domain.MaterialRating;
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

        /*Map<String, Object> params = new HashMap<>();
        params.put("result", null);

        comparatorDao.getAllDataGroupsWithSort(params);

        return (List<DataGroup>) params.get("result");*/
        List<DataGroup> list = new ArrayList<>();
        for (int x = 1; x < 6; x++) {
            DataGroup dg = new DataGroup(x, "Data group " + x, x, true);
            list.add(dg);
        }
        return list;
    }

    @Override
    public List<DataField> getDataFieldsByDataGroupId(int dataGroupId) {

        /*Map<String, Object> params = new HashMap<>();
        params.put("dataGroupId", dataGroupId);
        params.put("result", null);

        comparatorDao.getDataFieldsByDataGroupId(params);

        return (List<DataField>) params.get("result");*/
        List<DataField> list = new ArrayList<>();
        for (int x = 1; x < 5; x++) {
            DataField df = new DataField();
            df.setDataFieldId(x);
            df.setDataField("Data field " + x);
            df.setDataGroupId(dataGroupId);
            df.setDataValue("Data field value");
            list.add(df);
        }
        return list;
    }

    @Override
    public List<Material> compGetMaterial(String keyword) {
        /*Map<String, Object> params = new HashMap<>();
        params.put("keyWord", keyword);
        params.put("result", null);

        comparatorDao.compGetMaterial(params);

        return (List<Material>) params.get("result");*/

        List<Material> list = new ArrayList<>();
        for (int x = 1; x < 6; x++) {
            Material m = new Material();
            m.setMaterialId(x);
            m.setMaterialName("Material " + x);
            m.setMaterialDescription("Material description");
            m.setMaterialType("Type");
            list.add(m);
        }
        return list;
    }

    @Override
    public List<CompDataFieldValue> compGetFieldsWithValues(int groupId, int matId1, int matId2, int matId3, int matId4) {
        /*Map<String, Object> params = new HashMap<>();
        params.put("groupId", groupId);
        params.put("matId1", matId1);
        params.put("matId2", matId2);
        params.put("matId3", matId3);
        params.put("matId4", matId4);
        params.put("result", null);
        
        comparatorDao.compGetFieldsWithValues(params);
        
        return (List<CompDataFieldValue>) params.get("result");*/
        List<CompDataFieldValue> list = new ArrayList<>();
        for (int x = 1; x < 6; x++) {
            CompDataFieldValue df = new CompDataFieldValue();
            if (x == 2 && (groupId == 1 || groupId == 3)) {

                df.setDataFieldId(x);
                df.setDataField("Data field " + x);
                df.setDataFieldValueMat1(matId1 == 0 ? "" : "Data field value");
                df.setDataFieldValueMat2(matId2 == 0 ? "" : "different");
                df.setDataFieldValueMat3(matId3 == 0 ? "" : "Data field value");
                df.setDataFieldValueMat4(matId4 == 0 ? "" : "Data field value");
                df.setDataGroup("Data group " + x);
                df.setDataGroupId(x);

            } else {

                df.setDataFieldId(x);
                df.setDataField("Data field " + x);
                df.setDataFieldValueMat1(matId1 == 0 ? "" : "Data field value");
                df.setDataFieldValueMat2(matId2 == 0 ? "" : "Data field value");
                df.setDataFieldValueMat3(matId3 == 0 ? "" : "Data field value");
                df.setDataFieldValueMat4(matId4 == 0 ? "" : "Data field value");
                df.setDataGroup("Data group " + x);
                df.setDataGroupId(x);
            }

            list.add(df);
        }
        return list;

    }

    @Override
    public List<MaterialRating> compGetMaterialRating(int materialId) {
        /*Map<String, Object> params = new HashMap<>();
        params.put("materialId", materialId);
        params.put("result", null);

        comparatorDao.compGetMaterialRating(params);

        return (List<MaterialRating>) params.get("result");*/

        List<MaterialRating> list = new ArrayList<>();
        for (int x = 1; x < 6; x++) {
            MaterialRating mr = new MaterialRating();
            mr.setMaterialId(x);
            mr.setMaterialName("Material " + x);
            mr.setRatingType("Type " + x);
            mr.setRatingValue("3.5");
            list.add(mr);
        }
        return list;
    }
}
