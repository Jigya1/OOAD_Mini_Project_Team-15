package com.nissan.training.advancedjava.assignment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class CheckInController {
	@RequestMapping("/check-in")
	public String showForm() {
		return "check-in";
	}
	@RequestMapping(name = "/processform",method=RequestMethod.POST)
	public String handleForm(@RequestParam("Booking_Id") String Booking_Id, @RequestParam("Flight") String Flight, 
			@RequestParam("email") String email, Model model)
	{
		model.addAttribute("Booking_Id",Booking_Id);
		model.addAttribute("Flight",Flight);
		model.addAttribute("email",email);
		return "success";
	}

}