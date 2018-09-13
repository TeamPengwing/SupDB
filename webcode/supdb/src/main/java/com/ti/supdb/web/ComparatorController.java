package com.ti.supdb.web;

import com.ti.supdb.domain.DataField;
import com.ti.supdb.domain.DataGroup;
import com.ti.supdb.domain.Material;
import com.ti.supdb.domain.CompDataFieldValue;
import com.ti.supdb.domain.MaterialRating;
import com.ti.supdb.service.ComparatorService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/comparator")
public class ComparatorController {

    //comment
    @Autowired
    private ComparatorService comparatorService;

    // display comparator form
    @RequestMapping("")
    public String getPartNumberComparator() {
        return "comparator/comparator";
    }

    @RequestMapping("material/1")
    public String withSearchParam(Model model) {
        model.addAttribute("id", "1");
        return "comparator/comparator";
    }

    // get data groups sorted according to the supdb_data_group_sort table
    @RequestMapping(value = "getSortedDataGroups", method = RequestMethod.GET)
    public @ResponseBody
    ResponseEntity<?> getSortedDataGroups() {

        HttpHeaders headers = new HttpHeaders();
        List<DataGroup> items = comparatorService.getAllDataGroupsWithSort();

        if (items == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        headers.add("Number Of Records Found", String.valueOf(items.size()));
        headers.setContentType(MediaType.APPLICATION_JSON);
        return new ResponseEntity<>(items, headers, HttpStatus.OK);
    }

    // get data fields by data group id
    @RequestMapping(value = "getDataFieldsByDataGroupId/{dataGroupId}", method = RequestMethod.GET)
    public @ResponseBody
    ResponseEntity<?> getDataFieldsByDataGroupId(@PathVariable("dataGroupId") int dataGroupId) {

        HttpHeaders headers = new HttpHeaders();
        List<DataField> items = comparatorService.getDataFieldsByDataGroupId(dataGroupId);
        if (items == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        headers.add("Number Of Records Found", String.valueOf(items.size()));
        headers.setContentType(MediaType.APPLICATION_JSON);
        return new ResponseEntity<>(items, headers, HttpStatus.OK);
    }

    // get data fields with values
    @RequestMapping(value = "compGetFieldsWithValues/{dataGroupId}/{matId1}/{matId2}/{matId3}/{matId4}", method = RequestMethod.GET)
    public @ResponseBody
    ResponseEntity<?> compGetFieldsWithValues(@PathVariable("dataGroupId") int dataGroupId,
            @PathVariable("matId1") int matId1,
            @PathVariable("matId2") int matId2,
            @PathVariable("matId3") int matId3,
            @PathVariable("matId4") int matId4) {

        HttpHeaders headers = new HttpHeaders();
        List<CompDataFieldValue> items = comparatorService.compGetFieldsWithValues(dataGroupId, matId1, matId2, matId3, matId4);
        if (items == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        headers.add("Number Of Records Found", String.valueOf(items.size()));
        headers.setContentType(MediaType.APPLICATION_JSON);
        return new ResponseEntity<>(items, headers, HttpStatus.OK);
    }

    // material search
    @RequestMapping(value = "getMaterial/{keyword}", method = RequestMethod.GET)
    public @ResponseBody
    ResponseEntity<?> compGetMaterial(@PathVariable("keyword") String keyword) {

        HttpHeaders headers = new HttpHeaders();
        List<Material> items = comparatorService.compGetMaterial(keyword);
        if (items == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        headers.add("Number Of Records Found", String.valueOf(items.size()));
        headers.setContentType(MediaType.APPLICATION_JSON);
        return new ResponseEntity<>(items, headers, HttpStatus.OK);
    }

    // get item rating info
    @RequestMapping(value = "compGetMaterialRating/{materialId}", method = RequestMethod.GET)
    public @ResponseBody
    ResponseEntity<?> compGetMaterial(@PathVariable("materialId") int materialId) {

        HttpHeaders headers = new HttpHeaders();
        List<MaterialRating> items = comparatorService.compGetMaterialRating(materialId);
        if (items == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        headers.add("Number Of Records Found", String.valueOf(items.size()));
        headers.setContentType(MediaType.APPLICATION_JSON);
        return new ResponseEntity<>(items, headers, HttpStatus.OK);
    }
}
