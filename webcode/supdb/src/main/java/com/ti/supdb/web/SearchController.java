/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ti.supdb.web;

import com.ti.supdb.domain.SearchResults;
import com.ti.supdb.domain.SearchResults2;
import com.ti.supdb.service.SearchService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author a0282565
 */
@Controller
public class SearchController {
    // ---- Members
    //HttpServletRequest request;

    private SearchService searchService;

    @Autowired
    public SearchController(final SearchService searchService) {
        this.searchService = searchService;
    }

    @RequestMapping("/searchmaterial")
    public String hello(final Model model) {
        return "materialsearch";
    }

    @RequestMapping(value = "/getSearchResults", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> getSearchResults(HttpServletRequest request) {
        Map<String, Object> ret = new HashMap<String, Object>();
        String searchText = "";
        try {
            searchText = request.getParameter("search[value]").toString();
        } catch (Exception e) {

        }
        //try {

        //List<SearchResults> ar = searchService.getSearchResults(searchText);
        
        //SearchResults element = new SearchResults(materialid, materialname, 
        //     materialdesc, 
        //     groupname1, fieldname1, fieldvalue1,  
        //     groupname2, fieldname2,  fieldvalue2, 
        //     groupname3, fieldname3,  fieldvalue3, 
        //     rating);
        
        List<SearchResults> ar = null;
        
        SearchResults element = new SearchResults(0, "RAZOR BLADE - 4671324-0001", 
                 "2 inches RAZOR Blade. ZH05-SD2000-N1-90-N2409 HEFF1073", 
                "General Info", "Site", "TIPI, TIM",  
                "Technical Specification", "Devices",  "For Automotive / Non-Automotive / C021 / C027 (LASER groove and non-LASER groove) - Flipchip only", 
                "USAGE SPECIFICATION","Supplier","DISCO",
                "3.5");         
        ar.add(0, element);
        
        element = new SearchResults(0, "RAZOR BLADE - 4652841-0001", 
                 "2 inches configurable RAZOR Blade. ZHT-2395 204F-SE HDCC1098", 
                "General Info", "Site", "TIPI, TIM",  
                "Technical Specification", "Devices",  "Damascene Copper", 
                "USAGE SPECIFICATION","Supplier","DISCO",
                "3.5");
        
        ar.add(1, element);
        
        
        element = new SearchResults(0, "RAZOR BLADE - 4652841-0001", 
                 "2 inches configurable RAZOR Blade. ZHT-2395 204F-SE HDCC1098", 
                "General Info", "Site", "TIPI, TIM",  
                "Technical Specification", "Devices",  "Damascene Copper", 
                "USAGE SPECIFICATION","Supplier","DISCO",
                "3.5");
        
        ar.add(2, element);
        
        
        ret.put("data", ar);
        
        
        
        //ret.put("total", ar.size());
        //ret.put("data", searchService.getSearchResults(searchText));

        //} catch (Exception e) {
        //TO DO: Logger code here
        //e.getMessage();
        //}
        
        
        
        
        
        return ret;
    }
    
     @RequestMapping(value = "/getSearchResults2", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> getSearchResults2(HttpServletRequest request) {
        Map<String, Object> ret = new HashMap<String, Object>();
        String searchText = "";
        try {
            searchText = request.getParameter("search[value]").toString();
        } catch (Exception e) {

        }
        //try {

        List<SearchResults2> ar = searchService.getSearchResults2(searchText);
        ret.put("data", ar);
        //ret.put("total", ar.size());
        //ret.put("data", searchService.getSearchResults(searchText));

        //} catch (Exception e) {
        //TO DO: Logger code here
        //e.getMessage();
        //}
        return ret;
    }
}
