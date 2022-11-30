package com.uncc.ce.vehicle.model;

import java.io.Serializable;
import java.util.List;

import com.uncc.ce.entity.Delivery;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class VehicleModel implements Serializable {


	/**
	 * 
	 */
	private static final long serialVersionUID = 634566319700529568L;

	private int vehicleId;

	private String make;

	private String model;

	private String vehiclePlate;

	private List<Delivery> deliveries;
}
