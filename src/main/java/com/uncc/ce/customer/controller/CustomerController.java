package com.uncc.ce.customer.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uncc.ce.entity.Restaurant;
import com.uncc.ce.restaurant.service.RestaurantService;

@Controller
public class CustomerController {

	@Autowired
	private RestaurantService restaurantService;

	@RequestMapping(value = { "/customer/nav" }, method = RequestMethod.GET)
	public ModelAndView nav(@RequestParam Integer restaurantId) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("customer/nav");
		Restaurant restaurant = restaurantService.findById(restaurantId);
		modelAndView.addObject("restaurant", restaurant);
		List<Restaurant> allRestDB = restaurantService.findAllRestaurants();
		List<String> allRestNames = new ArrayList<>();
		for (Restaurant res : allRestDB) {
			allRestNames.add(res.getRestaurantName());
		}
		String[] resNames = new String[allRestNames.size()];
		modelAndView.addObject("resNames", allRestNames.toArray(resNames));
		Map<String, Integer> allRest = new HashMap<>();
		for (Restaurant ress : allRestDB) {
			allRest.put(ress.getRestaurantName(), ress.getRestaurantId());
		}
		modelAndView.addObject("restaurants", allRest);

		return modelAndView;
	}
}