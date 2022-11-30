package com.uncc.ce.orders.model;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class OrdersModel implements Serializable{


	/**
	 * 
	 */
	private static final long serialVersionUID = -164988359365083997L;

	private Integer restaurantId;

	private String location;

	private String restaurantName;

	private String schedule;

	private String website;
	
}
