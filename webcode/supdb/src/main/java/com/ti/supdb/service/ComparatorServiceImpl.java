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

@Service
public class ComparatorServiceImpl implements ComparatorService {

    //comment
    @Override
    public List<DataGroup> getAllDataGroupsWithSort() {

        /*Map<String, Object> params = new HashMap<>();
        params.put("result", null);

        comparatorDao.getAllDataGroupsWithSort(params);

        return (List<DataGroup>) params.get("result");*/
        List<DataGroup> list = new ArrayList<>();
        list.add(new DataGroup(1, "General Information", 1, true));
        list.add(new DataGroup(2, "Commodity specific application characteristics", 2, true));
        list.add(new DataGroup(3, "Material Properties", 3, true));
        list.add(new DataGroup(4, "Process Parameters", 4, true));
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

        if (dataGroupId == 1) {
            DataField gdf1 = new DataField();
            gdf1.setDataFieldId(1);
            gdf1.setDataField("AT Site");
            gdf1.setDataGroupId(1);
            list.add(gdf1);

            DataField gdf2 = new DataField();
            gdf2.setDataFieldId(2);
            gdf2.setDataField("Supplier");
            gdf2.setDataGroupId(1);
            list.add(gdf2);

            DataField gdf3 = new DataField();
            gdf3.setDataFieldId(3);
            gdf3.setDataField("Part number 1");
            gdf3.setDataGroupId(1);
            list.add(gdf3);
        }

        if (dataGroupId == 2) {
            DataField g2df1 = new DataField();
            g2df1.setDataFieldId(1);
            g2df1.setDataField("Equipment Used");
            g2df1.setDataGroupId(2);
            list.add(g2df1);

            DataField g2df2 = new DataField();
            g2df2.setDataFieldId(2);
            g2df2.setDataField("Cut Type");
            g2df2.setDataGroupId(2);
            list.add(g2df2);
        }

        if (dataGroupId == 3) {
            DataField g3df1 = new DataField();
            g3df1.setDataFieldId(1);
            g3df1.setDataField("Diameter");
            g3df1.setDataGroupId(3);
            list.add(g3df1);

            DataField g3df2 = new DataField();
            g3df2.setDataFieldId(2);
            g3df2.setDataField("Grit size Z1");
            g3df2.setDataGroupId(3);
            list.add(g3df2);
        }

        if (dataGroupId == 4) {
            DataField g3df1 = new DataField();
            g3df1.setDataFieldId(1);
            g3df1.setDataField("RPM Z1");
            g3df1.setDataGroupId(4);
            list.add(g3df1);

            DataField g3df2 = new DataField();
            g3df2.setDataFieldId(2);
            g3df2.setDataField("RPM Z2");
            g3df2.setDataGroupId(4);
            list.add(g3df2);
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

        if (groupId == 1) {

            CompDataFieldValue g1df1 = new CompDataFieldValue();
            g1df1.setDataFieldId(1);
            g1df1.setDataField("AT Site");
            g1df1.setDataFieldValueMat1(matId1 == 0 ? "" : "TIPI");
            g1df1.setDataFieldValueMat2(matId2 == 0 ? "" : "TIPI");
            g1df1.setDataFieldValueMat3(matId3 == 0 ? "" : "TIPI");
            g1df1.setDataFieldValueMat4(matId4 == 0 ? "" : "TIPI");
            g1df1.setDataGroupId(1);
            list.add(g1df1);

            CompDataFieldValue g1df2 = new CompDataFieldValue();
            g1df2.setDataFieldId(2);
            g1df2.setDataField("Supplier");
            g1df2.setDataFieldValueMat1(matId1 == 0 ? "" : "Data field value");

            if (matId2 != 0) {
                g1df2.setDataFieldValueMat2("different");
            }

            g1df2.setDataFieldValueMat3(matId3 == 0 ? "" : "Data field value");
            g1df2.setDataFieldValueMat4(matId4 == 0 ? "" : "Data field value");
            g1df2.setDataGroupId(1);
            list.add(g1df2);

            CompDataFieldValue g1df3 = new CompDataFieldValue();
            g1df3.setDataFieldId(3);
            g1df3.setDataField("Part number 1");
            g1df3.setDataFieldValueMat1(matId1 == 0 ? "" : "Data field value");
            g1df3.setDataFieldValueMat2(matId2 == 0 ? "" : "Data field value");
            g1df3.setDataFieldValueMat3(matId3 == 0 ? "" : "Data field value");
            g1df3.setDataFieldValueMat4(matId4 == 0 ? "" : "Data field value");
            g1df3.setDataGroupId(1);
            list.add(g1df3);
        }

        if (groupId == 2) {
            CompDataFieldValue g2df1 = new CompDataFieldValue();
            g2df1.setDataFieldId(1);
            g2df1.setDataField("Equipment Used");
            g2df1.setDataFieldValueMat1(matId1 == 0 ? "" : "Data field value");
            g2df1.setDataFieldValueMat2(matId2 == 0 ? "" : "Data field value");
            g2df1.setDataFieldValueMat3(matId3 == 0 ? "" : "Data field value");
            g2df1.setDataFieldValueMat4(matId4 == 0 ? "" : "Data field value");
            g2df1.setDataGroupId(2);
            list.add(g2df1);

            CompDataFieldValue g2df2 = new CompDataFieldValue();
            g2df2.setDataFieldId(2);
            g2df2.setDataField("Cut Type");
            g2df2.setDataFieldValueMat1(matId1 == 0 ? "" : "Data field value");
            if (matId2 != 0) {
                g2df2.setDataFieldValueMat2("different");
            }
            g2df2.setDataFieldValueMat3(matId3 == 0 ? "" : "Data field value");
            g2df2.setDataFieldValueMat4(matId4 == 0 ? "" : "Data field value");
            g2df2.setDataGroupId(2);
            list.add(g2df2);

        }

        if (groupId == 3) {
            CompDataFieldValue g3df1 = new CompDataFieldValue();
            g3df1.setDataFieldId(1);
            g3df1.setDataField("Diameter");
            g3df1.setDataFieldValueMat1(matId1 == 0 ? "" : "Data field value");
            if (matId2 != 0) {
                g3df1.setDataFieldValueMat2("different");
            }
            g3df1.setDataFieldValueMat3(matId3 == 0 ? "" : "Data field value");
            g3df1.setDataFieldValueMat4(matId4 == 0 ? "" : "Data field value");
            g3df1.setDataGroupId(3);
            list.add(g3df1);

            CompDataFieldValue g3df2 = new CompDataFieldValue();
            g3df2.setDataFieldId(2);
            g3df2.setDataField("Grit size Z1");
            g3df2.setDataFieldValueMat1(matId1 == 0 ? "" : "Data field value");
            g3df2.setDataFieldValueMat2(matId2 == 0 ? "" : "Data field value");
            g3df2.setDataFieldValueMat3(matId3 == 0 ? "" : "Data field value");
            g3df2.setDataFieldValueMat4(matId4 == 0 ? "" : "Data field value");
            g3df2.setDataGroupId(3);
            list.add(g3df2);

        }

        if (groupId == 4) {
            CompDataFieldValue g4df1 = new CompDataFieldValue();
            g4df1.setDataFieldId(1);
            g4df1.setDataField("RPM Z1");
            g4df1.setDataFieldValueMat1(matId1 == 0 ? "" : "Data field value");
            g4df1.setDataFieldValueMat2(matId2 == 0 ? "" : "Data field value");
            g4df1.setDataFieldValueMat3(matId3 == 0 ? "" : "Data field value");
            g4df1.setDataFieldValueMat4(matId4 == 0 ? "" : "Data field value");
            g4df1.setDataGroupId(4);
            list.add(g4df1);

            CompDataFieldValue g4df2 = new CompDataFieldValue();
            g4df2.setDataFieldId(2);
            g4df2.setDataField("RPM Z2");
            g4df2.setDataFieldValueMat1(matId1 == 0 ? "" : "Data field value");
            g4df2.setDataFieldValueMat2(matId2 == 0 ? "" : "Data field value");
            g4df2.setDataFieldValueMat3(matId3 == 0 ? "" : "Data field value");
            g4df2.setDataFieldValueMat4(matId4 == 0 ? "" : "Data field value");
            g4df2.setDataGroupId(4);
            list.add(g4df2);

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
