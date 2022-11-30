package com.uncc.ce.entity;

import java.io.Serializable;
import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;


/**
 * The persistent class for the restaurant database table.
 * 
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "restaurant")
public class Restaurant implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5649571280729557105L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
	@Column(name="restaurant_id")
	private int restaurantId;

	private String location;

	@Column(name="restaurant_name")
	private String restaurantName;

	private String schedule;

	private String website;

	//bi-directional many-to-one association to Order
	@OneToMany(mappedBy="restaurant")
	private List<Orders> orders;

	//bi-directional many-to-one association to Order
	@OneToMany(mappedBy="restaurant")
	private List<Items> items;
		
}