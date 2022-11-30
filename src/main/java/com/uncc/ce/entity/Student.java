package com.uncc.ce.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * The persistent class for the student database table.
 * 
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "student")
public class Student implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2745340715407096513L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
	@Column(name="student_id")
	private int studentId;

	@Column(name="graduation_year")
	private int graduationYear;

	private String major;

	private String type;

	//bi-directional many-to-one association to Driver
	@OneToMany(mappedBy="student", cascade=CascadeType.ALL)
	private List<Driver> drivers;

	//bi-directional many-to-one association to Person
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="person_id")
	private Person person;

}