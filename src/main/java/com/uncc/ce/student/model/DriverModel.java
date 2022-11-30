package com.uncc.ce.student.model;

import java.io.Serializable;

import javax.validation.constraints.NotEmpty;

import com.uncc.ce.common.model.PersonModel;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@EqualsAndHashCode(callSuper = true)
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class DriverModel extends PersonModel implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6852469550892558062L;

	@NotEmpty(message = "*Please provide Date hired")
	private String dateHired;

	@NotEmpty(message = "*Please provide License Number")
	private String licenseNumber;

	private Float rating;
	
}
