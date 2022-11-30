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
 * The persistent class for the vehicle database table.
 * 
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "vehicle")
public class Vehicle implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3445893188268143495L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
	@Column(name="vehicle_id")
	private int vehicleId;

	private String make;

	private String model;

	@Column(name="vehicle_plate")
	private String vehiclePlate;

	//bi-directional many-to-one association to Delivery
	@OneToMany(mappedBy="vehicle")
	private List<Delivery> deliveries;

}