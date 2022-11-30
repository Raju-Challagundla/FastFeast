package com.uncc.ce.restaurant.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uncc.ce.entity.Restaurant;
import com.uncc.ce.restaurant.model.RestaurantModel;
import com.uncc.ce.restaurant.repository.RestaurantRepository;

@Service
public class RestaurantService {

	@Autowired
    private RestaurantRepository restaurantRepository;
    

    public List<Restaurant> findAllRestaurants() {
    	List<Restaurant> ress = restaurantRepository.findAll();
        return ress;
    }

    public Restaurant findById(Integer restId) {
    	return restaurantRepository.findById(restId).get();
    }
    
    public void deleteRestaurantById(Integer restId) {
    	restaurantRepository.deleteById(restId);
    }
    
    public Restaurant saveRestaurant(RestaurantModel restaurantModel) {
    	Restaurant restaurant = new Restaurant();
    	restaurant.setLocation(restaurantModel.getLocation());
    	restaurant.setRestaurantName(restaurantModel.getRestaurantName());
    	restaurant.setSchedule(restaurantModel.getSchedule());
    	restaurant.setWebsite(restaurantModel.getWebsite());
        return restaurantRepository.save(restaurant);
    }
    public Restaurant updateRestaurant(RestaurantModel restaurantModel) {
    	Restaurant restaurant = findById(restaurantModel.getRestaurantId());
    	restaurant.setLocation(restaurantModel.getLocation());
    	restaurant.setRestaurantName(restaurantModel.getRestaurantName());
    	restaurant.setSchedule(restaurantModel.getSchedule());
    	restaurant.setWebsite(restaurantModel.getWebsite());
        return restaurantRepository.save(restaurant);
    }
    
}