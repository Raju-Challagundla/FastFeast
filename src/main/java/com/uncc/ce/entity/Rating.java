package com.uncc.ce.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * The persistent class for the delivery database table.
 * 
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "rating")
public class Rating implements Serializable {


	/**
	 * 
	 */
	private static final long serialVersionUID = -3813641071018776320L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
	@Column(name="rating_id")
	private int ratingId;

	@Column(name="restaurant_rating")
	private Float restaurantRating;

	@Column(name="driver_rating")
	private Float driverRating;
	
	@Column(name="item_rating")
	private Float itemRating;
	
	@Column(name="comments")
	private String comments;

	@Column(name="picture")
	private String picture;


//	//bi-directional many-to-one association to Driver
//	@ManyToOne
//	@JoinColumn(name="restaurant_id")
//	private Restaurant restaurant;
//		
//	//bi-directional many-to-one association to Driver
//	@ManyToOne
//	@JoinColumn(name="driver_id")
//	private Driver driver;

	@ManyToOne
	@JoinColumn(name="order_id")
	private Orders order;
	
	//bi-directional many-to-one association to Vehicle
	@ManyToOne
	@JoinColumn(name="item_id")
	private Items items;
}