package com.uncc.ce.fooditem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uncc.ce.entity.Items;
import com.uncc.ce.entity.Restaurant;
import com.uncc.ce.fooditem.model.FoodItemModel;
import com.uncc.ce.fooditem.repository.FoodItemRepository;

@Service
public class FoodItemService {

	@Autowired
    private FoodItemRepository foodItemRepository;
    

    public List<Items> findAllFoodItems() {
    	List<Items> foodItems = foodItemRepository.findAll();
        return foodItems;
    }

    public Items findById(Integer foodItemId) {
    	return foodItemRepository.findById(foodItemId).get();
    }
    
    public void deleteFoodItemById(Integer foodItemId) {
    	foodItemRepository.deleteById(foodItemId);
    }
    
    public Items saveFoodItem(FoodItemModel sm,Restaurant restaurant) {
    	Items stu = new Items();
    	stu.setItem(sm.getItem());
    	stu.setPrice(sm.getPrice());
    	stu.setRestaurant(restaurant);
        return foodItemRepository.save(stu);
    }
    public Items updateFoodItem(FoodItemModel sm) {
    	Items stu =foodItemRepository.findByItemId(sm.getItemId());
    	stu.setItem(sm.getItem());
    	stu.setPrice(sm.getPrice());
        return foodItemRepository.save(stu);
    }
    
}