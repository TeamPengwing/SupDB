/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ti.supdb.web;

import com.ti.supdb.domain.SearchResults;
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

        List<SearchResults> ar = searchService.getSearchResults(searchText);
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
