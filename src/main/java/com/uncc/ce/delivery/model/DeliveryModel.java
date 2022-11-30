package com.uncc.ce.delivery.model;

import java.io.Serializable;
import java.util.List;

import com.uncc.ce.entity.Orders;
import com.uncc.ce.entity.Status;
import com.uncc.ce.entity.Student;
import com.uncc.ce.entity.Vehicle;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class DeliveryModel implements Serializable{



	/**
	 * 
	 */
	private static final long serialVersionUID = 8555367737229205501L;

	private int deliveryId;

	private String pickedupTime;
	
	private String deliveryTime;

	private Status status;
	
	private List<Orders> orders;
	
	private List<Student> students;
	
	private List<Vehicle> vehicles;
	
	private int lastSelectedOrder;
	
	private int lastSelectedStudent;
	
	private int lastSelectedVehicle;
	
	private int studentId;
	
	private int vehicleId;
}
