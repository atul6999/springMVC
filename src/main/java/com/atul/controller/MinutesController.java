package com.atul.controller;

import java.net.Authenticator.RequestorType;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.atul.dao.ExerciseService;
import com.atul.model.Activity;
import com.atul.model.Exercise;
import com.atul.model.Goal;

@Controller
public class MinutesController {
	@Autowired
	private ExerciseService exerciseService;
	
	public ExerciseService getExerciseService() {
		return exerciseService;
	}

	public void setExerciseService(ExerciseService exerciseService) {
		this.exerciseService = exerciseService;
	}

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
	
	@RequestMapping(value="/activities", method = RequestMethod.GET)
	public List<Activity> findAllActivities(@ModelAttribute("exercise") Exercise exercise) {
//		System.out.println("Exercising more :  "+ exercise.getMinutes());
//		System.out.println("Exercising more :  "+ exercise.getActivity());
		return exerciseService.findAllActivities();
	}
	@RequestMapping(value="/cristal", method = RequestMethod.GET)
	public ModelAndView displayCristal(@Valid @ModelAttribute("exercise") Exercise exercise) {
		System.out.println("Exercising more :  "+ exercise.getMinutes());
		return new ModelAndView("cristal");
	}
}
