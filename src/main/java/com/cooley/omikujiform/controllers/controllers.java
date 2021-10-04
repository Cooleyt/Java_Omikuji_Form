package com.cooley.omikujiform.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class controllers {
	public String message;
	
	@GetMapping("/")
	public String index() {
		return "index.jsp";
		
	}
	
	@PostMapping("/sendInfo")
	public String info
				(@RequestParam(value="num") String num,
				@RequestParam(value="cityName") String city,
				@RequestParam(value="realPerson") String person,
				@RequestParam(value="endeavorHobby") String endeavor,
				@RequestParam(value="livingThing") String thing,
				@RequestParam(value="kindNote") String note)
				{message = String.format("In %s years, you will live in %s with %s as your roommate, selling %s for a living. The next time you see a %s, you will have good luck. Also, %s.", 
						num, city, person, endeavor, thing, note);
				return "redirect:/display";}
	
	@GetMapping("/display")
	public String display (Model model) {
		model.addAttribute("message", message);
		return "display.jsp";
	}
						
}
