package com.uncc.ce.restaurant.controller;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.uncc.ce.entity.Restaurant;
import com.uncc.ce.restaurant.model.RestaurantModel;
import com.uncc.ce.restaurant.service.RestaurantService;

@RestController
@RequestMapping("rnames")
public class RestaurantsFilterController {

	@Autowired
	private RestaurantService restaurantService;
	private List<Restaurant> allRestDB = null;

	@GetMapping
	public List<RestaurantModel> stateItems(@RequestParam(value = "q", required = false) String query) {

		if (allRestDB == null) {
			allRestDB = restaurantService.findAllRestaurants();
		}
		if (StringUtils.isEmpty(query)) {
			return allRestDB.stream().limit(15).map(this::mapToStateItem).collect(Collectors.toList());
		}

		return allRestDB.stream().filter(restaurant -> restaurant.getRestaurantName().toLowerCase().contains(query)).limit(15)
				.map(this::mapToStateItem).collect(Collectors.toList());
	}

	private RestaurantModel mapToStateItem(Restaurant restaurant) {
		return RestaurantModel.builder().restaurantName(restaurant.getRestaurantName()).build();
	}
}