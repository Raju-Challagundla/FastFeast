package com.uncc.ce.entity;

import java.io.Serializable;
import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;


/**
 * The persistent class for the delivery database table.
 * 
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "delivery")
public class Delivery implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -943423108514544130L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
	@Column(name="delivery_id")
	private int deliveryId;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="pickedup_time")
	private Date pickedupTime;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="delivery_time")
	private Date deliveryTime;

	@ManyToOne
	@JoinColumn(name="delivery_status")
	private Status status;
	
	//bi-directional many-to-one association to Driver
	@ManyToOne
	@JoinColumn(name="driver_id")
	private Driver driver;

	//bi-directional many-to-one association to Vehicle
	@ManyToOne
	@JoinColumn(name="vehicle_id")
	private Vehicle vehicle;

	//bi-directional many-to-one association to Order
	@OneToMany(mappedBy="delivery")
	private List<Orders> orders;

}