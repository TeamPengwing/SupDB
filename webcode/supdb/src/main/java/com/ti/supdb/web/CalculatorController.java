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
public class CalculatorController {

    @RequestMapping("/diesperwafercalc")
    public String diesperwafer(final Model model) {
        return "calculator/diesperwafer";
    }
    
     @RequestMapping("/cutheightcalc")
    public String cutheight(final Model model) {
        return "calculator/cutheight";
    }
    
     @RequestMapping("/usablebladeexpocalc")
    public String usablebladeexposure(final Model model) {
        return "calculator/usablebladeexposure";
    }
}
