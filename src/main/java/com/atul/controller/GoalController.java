package com.atul.controller;

import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.atul.model.Goal;


@Controller
@SessionAttributes("goal")
public class GoalController {
	
	@RequestMapping(value="addGoal", method=RequestMethod.GET)
	public ModelAndView addGoal() {
		Goal goal = new Goal();
		goal.setMinutes(10);
		return new ModelAndView("addGoal","goal", goal);
	}
	@RequestMapping(value="addGoal", method=RequestMethod.POST)
	public ModelAndView updateGoal(@Valid @ModelAttribute("goal") Goal goal, BindingResult result) {
		System.out.println("Result has error: "+result.hasErrors());
		System.out.println("Goal Minutes: "+goal.getMinutes());
		if(result.hasErrors()) {
			return new ModelAndView("addGoal");
		}else {
			return new ModelAndView("redirect:addMinutes","goal", goal);	
		}
	}
}
