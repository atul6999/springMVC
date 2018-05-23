package com.atul.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.atul.model.Exercise;

@Controller
public class MinutesController {
	@RequestMapping(value="/addMinutes")
	public ModelAndView addMinutes(@ModelAttribute("exercise") Exercise exercise) {
		System.out.println("Exercised :  "+ exercise.getMinutes());
		return new ModelAndView("addMinutes");
	}
	@RequestMapping(value="/addMoreMinutes")
	public ModelAndView addMoreMinutes(@ModelAttribute("exercise") Exercise exercise) {
		System.out.println("Exercising more :  "+ exercise.getMinutes());
		return new ModelAndView("addMoreMinutes");
	}
}
