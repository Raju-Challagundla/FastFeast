package com.uncc.ce.location.model;

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
public class LocationModel implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6607935120076724381L;

	private int locationId;

	private String dropOffPoint;

	private String locationName;

}
