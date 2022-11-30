package com.uncc.ce.login.model;

import java.io.Serializable;

import javax.validation.constraints.NotEmpty;

import org.hibernate.validator.constraints.Length;

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
public class AdminModel extends PersonModel implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6733147562105266689L;

    @NotEmpty(message = "*Please provide position")
	private String position;
	
	@Length(min = 5, message = "*Your password must have at least 5 characters")
    @NotEmpty(message = "*Please provide password")
	private String password;

}
