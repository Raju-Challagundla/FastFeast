package com.uncc.ce.login.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.uncc.ce.entity.Admin;
import com.uncc.ce.entity.Restaurant;
import com.uncc.ce.login.model.AdminModel;
import com.uncc.ce.login.service.AdminService;
import com.uncc.ce.restaurant.service.RestaurantService;

@Controller
public class LoginController {

	@Autowired
	private AdminService adminService;
	@Autowired
	private RestaurantService restaurantService;

	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login");
		return modelAndView;
	}

	@RequestMapping(value = { "/", "/customer/home" }, method = RequestMethod.GET)
	public ModelAndView customerHome() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("customer/home");
		List<Restaurant> allRestDB = restaurantService.findAllRestaurants();

		Map<String, Integer> allRest = new HashMap<>();
		for (Restaurant restaurant : allRestDB) {
			allRest.put(restaurant.getRestaurantName(), restaurant.getRestaurantId());
		}
		modelAndView.addObject("restaurants", allRest);

		List<String> allRestNames = new ArrayList<>();

		for (Restaurant restaurant : allRestDB) {
			allRestNames.add(restaurant.getRestaurantName());
		}
		String[] resNames = new String[allRest.size()];
		modelAndView.addObject("resNames", allRestNames.toArray(resNames));
		return modelAndView;
	}

	@RequestMapping(value = "signin")
	public ModelAndView signin() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login");
		return modelAndView;
	}

	@RequestMapping(value = "/admin/registration", method = RequestMethod.GET)
	public ModelAndView registration() {
		ModelAndView modelAndView = new ModelAndView();
		AdminModel user = new AdminModel();
		modelAndView.addObject("adminModel", user);
		modelAndView.setViewName("admin/registration");
		return modelAndView;
	}

	@RequestMapping(value = "/admin/registration", method = RequestMethod.POST)
	public ModelAndView createNewUser(@Valid AdminModel adminModel, BindingResult bindingResult) {
		ModelAndView modelAndView = new ModelAndView();
		Admin userExists = adminService.findUserByEmail(adminModel.getPersonEmail());
		if (userExists != null) {
			bindingResult.rejectValue("userName", "error.user",
					"There is already a user registered with the user name provided");
		}
		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("admin/registration");
		} else {
			adminService.saveAdmin(adminModel);
			modelAndView.addObject("successMessage", "User has been registered successfully");
			modelAndView.addObject("user", new AdminModel());
			modelAndView.setViewName("admin/registration");

		}
		return modelAndView;
	}

	@RequestMapping(value = "/admin/home", method = RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView modelAndView = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Admin user = adminService.findUserByEmail(auth.getName());
		modelAndView.addObject("userName", "Welcome " + user.getStaff().getPerson().getPersonEmail() + "/"
				+ user.getStaff().getPerson().getPersonName());
		modelAndView.addObject("adminMessage", "Content Available Only for Users with Admin Role");
		modelAndView.setViewName("admin/home");
		return modelAndView;
	}

}