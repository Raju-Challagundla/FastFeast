package com.uncc.ce.restaurant.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uncc.ce.common.repository.CommonRepository;
import com.uncc.ce.entity.Restaurant;
import com.uncc.ce.restaurant.model.RestaurantModel;
import com.uncc.ce.restaurant.service.RestaurantService;

@Controller
public class RestaurantController {
	
	@Autowired
	private RestaurantService restaurantService;
	@Autowired
	private CommonRepository commonRepository;

	@RequestMapping(value="/admin/restaurants", method = RequestMethod.GET)
	public ModelAndView getAllRestaurants() {
		ModelAndView mav = new ModelAndView("admin/list-restaurants");
		List<Restaurant> allRestDB = restaurantService.findAllRestaurants();
		List<RestaurantModel> allRest = new ArrayList<>();
		for (Restaurant restaurant : allRestDB) {
			RestaurantModel restaurantModel = new RestaurantModel();
			BeanUtils.copyProperties(restaurant, restaurantModel);
			restaurantModel.setRating(commonRepository.calculateAvgRatingByRestaurantId(restaurant.getRestaurantId()));
			allRest.add(restaurantModel);
		}
		mav.addObject("restaurants", allRest);
		return mav;
	}
	
	@RequestMapping(value="/admin/addRestaurantForm", method = RequestMethod.GET) 
	public ModelAndView addRestaurantForm() {
		ModelAndView mav = new ModelAndView("admin/add-restaurant-form");
		RestaurantModel newrestaurant = new RestaurantModel();
		mav.addObject("restaurant", newrestaurant);
		return mav;
	}
//	
	@RequestMapping(value="/admin/saveRestaurant", method = RequestMethod.POST) 
	public String saverestaurant(@ModelAttribute RestaurantModel restaurant) {
		restaurantService.saveRestaurant(restaurant);
		return "redirect:/admin/restaurants";
	}
	
	@RequestMapping(value="/admin/updateRestaurant", method = RequestMethod.POST) 
	public String updaterestaurant(@ModelAttribute RestaurantModel restaurant,@RequestParam Integer restaurantId) {
		restaurant.setRestaurantId(restaurantId);
		restaurantService.updateRestaurant(restaurant);
		return "redirect:/admin/restaurants";
	}
//	
	@GetMapping("/admin/showResUpdateForm")
	public ModelAndView showUpdateForm(@RequestParam Integer restaurantId) {
		ModelAndView mav = new ModelAndView("admin/update-restaurant-form");
		Restaurant restaurant = restaurantService.findById(restaurantId);
		RestaurantModel newrestaurant = new RestaurantModel();
		BeanUtils.copyProperties(restaurant, newrestaurant);
		mav.addObject("restaurant", newrestaurant);
		return mav;
	}
	
	@GetMapping("/admin/deleteRestaurant")
	public String deleteEmployee(@RequestParam Integer restaurantId) {
		restaurantService.deleteRestaurantById(restaurantId);
		return "redirect:/admin/restaurants";
	}
}