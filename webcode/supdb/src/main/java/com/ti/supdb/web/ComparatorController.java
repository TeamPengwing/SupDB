package com.ti.supdb.web;

import com.ti.supdb.domain.DataField;
import com.ti.supdb.domain.DataGroup;
import com.ti.supdb.domain.Material;
import com.ti.supdb.service.ComparatorService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/comparator")
public class ComparatorController {

    @Autowired
    private ComparatorService comparatorService;

    // display comparator form
    @RequestMapping("")
    public String getPartNumberComparator() {
        return "comparator/comparator";
    }

    // get sorted data groups
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

    @RequestMapping(value = "getDataGroupsByDataGroupIdAndDisplaySort", method = RequestMethod.POST)
    public @ResponseBody
    ResponseEntity<?> getDataGroupsByDataGroupIdAndDisplaySort(@RequestBody List<DataGroup> dataGroups) {

        HttpHeaders headers = new HttpHeaders();

        List<DataGroup> items = comparatorService.getDataGroupsByDataGroupIdAndDisplaySort(dataGroups);

        if (items == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        headers.add("Number Of Records Found", String.valueOf(items.size()));
        headers.setContentType(MediaType.APPLICATION_JSON);
        return new ResponseEntity<>(items, headers, HttpStatus.OK);
    }

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
}
