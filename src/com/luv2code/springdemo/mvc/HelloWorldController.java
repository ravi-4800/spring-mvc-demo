package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("hello")
public class HelloWorldController {
	
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	@RequestMapping("/ProcessFromVersionTwo")
	public String letsShoutDude(HttpServletRequest req, Model model) {
		
		String theName = req.getParameter("studentName");
		
		theName = theName.toUpperCase();
		
		String result = "Yo! " + theName;
		
		model.addAttribute("message", result);
		
		return "helloworld";
	}
	
	@RequestMapping("/ProcessFromVersionThree")
	public String processFromVersionThree(
			@RequestParam("studentName") String theName,
			Model model) {
		
		theName = theName.toUpperCase();
		
		String result = "Hey, " + theName;
		
		model.addAttribute("message", result);
		
		return "helloworld";
	}
}
