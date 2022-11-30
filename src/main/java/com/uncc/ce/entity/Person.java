package com.uncc.ce.entity;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * The persistent class for the person database table.
 * 
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "person")
public class Person implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5222874780530930672L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
	@Column(name="person_id")
	private int personId;

	private Long cell;

	@Column(name="person_email")
	private String personEmail;

	@Column(name="person_name")
	private String personName;

	//bi-directional many-to-one association to Faculty
	@OneToMany(mappedBy="person")
	private List<Faculty> faculties;

	//bi-directional many-to-one association to Order
	@OneToMany(mappedBy="person")
	private List<Orders> orders;

	//bi-directional many-to-one association to Staff
	@OneToMany(mappedBy="person")
	private List<Staff> staffs;

	//bi-directional many-to-one association to Student
	@OneToMany(mappedBy="person")
	private List<Student> students;

}