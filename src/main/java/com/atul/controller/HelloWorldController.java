package com.atul.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWorldController {
	@RequestMapping(value = "/hello")
	public ModelAndView helloWorld() {
		String message = "Hello Atul";
		return new ModelAndView("hellopage","message",message);
	}
}
