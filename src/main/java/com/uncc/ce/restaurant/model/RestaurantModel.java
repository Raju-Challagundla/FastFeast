package com.uncc.ce.restaurant.model;

import java.io.Serializable;
import java.util.List;

import com.uncc.ce.entity.Items;
import com.uncc.ce.entity.Orders;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class RestaurantModel implements Serializable{


	/**
	 * 
	 */
	private static final long serialVersionUID = -164988359365083997L;

	private Integer restaurantId;

	private String location;

	private String restaurantName;

	private String schedule;

	private String website;
	
	private Float rating;
	
	private List<Orders> orders;

	private List<Items> items;

}
