package com.uncc.ce.fooditem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uncc.ce.entity.Items;
import com.uncc.ce.entity.Restaurant;
import com.uncc.ce.fooditem.model.FoodItemModel;
import com.uncc.ce.fooditem.service.FoodItemService;
import com.uncc.ce.restaurant.service.RestaurantService;

@Controller
public class FoodItemController {
	
	@Autowired
	private FoodItemService foodItemsService;
	
	@Autowired
	private RestaurantService restaurantService;
	
//	
	@RequestMapping(value="/admin/foodItems", method = RequestMethod.GET)
	public ModelAndView getAllEmployees() {
		ModelAndView mav = new ModelAndView("admin/list-foodItems");
		List<Items> allDB = foodItemsService.findAllFoodItems();
		mav.addObject("foodItems", allDB);
		return mav;
	}
	
	@RequestMapping(value="/admin/addFoodItemForm", method = RequestMethod.GET) 
	public ModelAndView addEmployeeForm() {
		ModelAndView mav = new ModelAndView("admin/add-foodItems-form");
		FoodItemModel newFoodItem = new FoodItemModel();
		newFoodItem.setRestaurants(restaurantService.findAllRestaurants());
		mav.addObject("foodItems", newFoodItem);
		return mav;
	}
	
	@RequestMapping(value="/admin/saveFoodItem", method = RequestMethod.POST) 
	public String saveFoodItem(@ModelAttribute FoodItemModel foodItems) {
		Restaurant restaurant = restaurantService.findById(foodItems.getRestaurantId());
		foodItemsService.saveFoodItem(foodItems,restaurant);
		return "redirect:/admin/foodItems";
	}
	
	@RequestMapping(value="/admin/updateFoodItem", method = RequestMethod.POST) 
	public String updateFoodItem(@ModelAttribute FoodItemModel foodItems,@RequestParam Integer itemId) {
		foodItems.setItemId(itemId);
//		Restaurant restaurant = restaurantService.findById(foodItems.getRestaurantId());
		foodItemsService.updateFoodItem(foodItems);
		return "redirect:/admin/foodItems";
	}
////	
	@GetMapping("/admin/showFoodItemUpdateForm")
	public ModelAndView showUpdateForm(@RequestParam Integer itemId) {
		ModelAndView mav = new ModelAndView("admin/update-foodItems-form");
		Items foodItems = foodItemsService.findById(itemId);
		mav.addObject("foodItems", foodItems);
		return mav;
	}
//	
	@GetMapping("/admin/deleteFoodItem")
	public String deleteEmployee(@RequestParam Integer itemId) {
		foodItemsService.deleteFoodItemById(itemId);
		return "redirect:/admin/foodItems";
	}
}