package com.ti.supdb.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("/compare")
@Controller
public class CompareController {
  
	@RequestMapping("/")
	public String index(final Model model) {
		return "compare/index";
	}

}
