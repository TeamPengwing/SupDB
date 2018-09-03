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

    @RequestMapping(value = "/getSearchResults", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> getSearchResults(
            @RequestParam("searchTerm") String searchTerm
    ) {
        Map<String, Object> ret = new HashMap<String, Object>();
        //try {

        System.out.println("sEARCH tERM: " + searchTerm);

        List<SearchResults> ar = searchService.getSearchResults(searchTerm);
        ret.put("searchResults", ar);

        for (int i = 0; i < ar.size(); i++) {
            System.out.println(ar.get(i).toString());
        }

        //} catch (Exception e) {
        //TO DO: Logger code here
        //e.getMessage();
        //}
        return ret;
    }
}
