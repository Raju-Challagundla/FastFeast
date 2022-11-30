package com.uncc.ce.fooditem.model;

import java.io.Serializable;
import java.util.List;

import com.uncc.ce.entity.Restaurant;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class FoodItemModel implements Serializable {


	/**
	 * 
	 */
	private static final long serialVersionUID = 7529208400827995389L;

	private int itemId;

    private String item;
	
    private String price;
    
    private int restaurantId;

	private List<Restaurant> restaurants;
}
