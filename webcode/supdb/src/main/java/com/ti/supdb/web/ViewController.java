package com.ti.supdb.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("/view")
@Controller
public class ViewController {
  
	@RequestMapping("/")
	public String index(final Model model) {
		return "view/index";
	}
        
        @RequestMapping("/filter")
	public String filter(final Model model) {
		return "view/filter";
	}
        
         @RequestMapping("/view")
	public String view(final Model model) {
		return "view/view";
	}
        
         @RequestMapping("/commodity")
	public String commodity(final Model model) {
		return "view/commodity";
	}
}
