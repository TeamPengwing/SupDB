/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ti.supdb.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author a0282565
 */
@Controller
public class MaterialSearchController {

    @RequestMapping("/searchmaterial")
    public String materialsearch(final Model model) {
        return "materialsearch";
    }
    
    
}
