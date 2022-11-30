package com.uncc.ce.common.model;

import java.io.Serializable;
import java.math.BigInteger;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;


/**
 * The persistent class for the person database table.
 * 
 */
@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class PersonModel implements Serializable {


	/**
	 * 
	 */
	private static final long serialVersionUID = -7105647296754710526L;

	private Long cell;

	@Email(message = "*Please provide a valid Email")
    @NotEmpty(message = "*Please provide an email")
	private String personEmail;

    @NotEmpty(message = "*Please provide person name")
	private String personName;


}