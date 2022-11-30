package com.uncc.ce.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * The persistent class for the order database table.
 * 
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "orders")
public class Orders implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1530468809632465130L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
	@Column(name="order_id")
	private int orderId;

	@Column(name="delivery_charge")
	private float deliveryCharge;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="ordered_time")
	private Date orderedTime;

	@Column(name="total_price")
	private float totalPrice;
	
	@ManyToOne
	@JoinColumn(name="order_status")
	private Status status;
	
	//bi-directional many-to-one association to Delivery
	@ManyToOne
	@JoinColumn(name="delivery_id")
	private Delivery delivery;

	//bi-directional many-to-one association to Driver
	@ManyToOne
	@JoinColumn(name="driver_id")
	private Driver driver;

	//bi-directional many-to-one association to Location
	@ManyToOne
	@JoinColumn(name="location_id")
	private Location location;

	//bi-directional many-to-one association to Person
	@ManyToOne
	@JoinColumn(name="person_id")
	private Person person;

	//bi-directional many-to-one association to Restaurant
	@ManyToOne
	@JoinColumn(name="restaurant_id")
	private Restaurant restaurant;
	
	@ManyToMany(cascade = CascadeType.MERGE)
    @JoinTable(name = "orders_items", joinColumns = @JoinColumn(name = "order_id"), inverseJoinColumns = @JoinColumn(name = "item_id"))
    private Set<Items> items;

}