package com.uncc.ce.student.model;

import java.io.Serializable;
import java.util.List;

import javax.validation.constraints.NotEmpty;

import org.hibernate.validator.constraints.Length;

import com.uncc.ce.entity.Driver;
import com.uncc.ce.entity.Person;

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
public class StudentModel extends DriverModel implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6852469550892558062L;

	@Length(min = 4, message = "*Your graduation year must have at least 4 characters")
	@NotEmpty(message = "*Please provide graduation year")
	private Integer graduationYear;

	@NotEmpty(message = "*Please provide major")
	private String major;

	@NotEmpty(message = "*Please provide type")
	private String type;

	private Integer studentId;

	private List<Driver> drivers;

	private Person person;
}
