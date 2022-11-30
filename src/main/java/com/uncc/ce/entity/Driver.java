package com.uncc.ce.entity;

import java.io.Serializable;
import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;


/**
 * The persistent class for the driver database table.
 * 
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "driver")
public class Driver implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3141781120303215478L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
	@Column(name="driver_id")
	private int driverId;

	@Temporal(TemporalType.DATE)
	@Column(name="date_hired")
	private Date dateHired;

	@Column(name="license_number")
	private String licenseNumber;

//	private float rating;
	
	//bi-directional many-to-one association to Delivery
	@OneToMany(mappedBy="driver")
	private List<Delivery> deliveries;

	//bi-directional many-to-one association to Student
	@ManyToOne
	@JoinColumn(name="student_id")
	private Student student;

	//bi-directional many-to-one association to Order
	@OneToMany(mappedBy="driver")
	private List<Orders> orders;

}