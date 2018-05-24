package com.atul.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.atul.dao.ExerciseService;
import com.atul.model.Activity;

@Service("exerciseService")
public class ExerciseServiceImpl implements ExerciseService {

	/* (non-Javadoc)
	 * @see com.atul.service.ExerciseService#findAllActivities()
	 */
	public List<Activity> findAllActivities(){
		List<Activity> activities = new ArrayList<Activity>();
		Activity a1= new Activity();
		Activity a2= new Activity();
		Activity a3= new Activity();
		a1.setDesc("Run");
		a2.setDesc("Bike");
		a3.setDesc("Car");
		activities.add(a1);
		activities.add(a2);
		activities.add(a3);
		return activities;
	}
}
