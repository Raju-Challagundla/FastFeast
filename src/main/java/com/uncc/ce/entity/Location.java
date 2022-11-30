package com.uncc.ce.entity;

import java.io.Serializable;
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
 * The persistent class for the location database table.
 * 
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "location")
public class Location implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7751187791882790314L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
	@Column(name="location_id")
	private int locationId;

	@Column(name="drop_off_point")
	private String dropOffPoint;

	private String latitude;

	@Column(name="location_address")
	private String locationAddress;

	@Column(name="location_name")
	private String locationName;

	private String longitude;

	//bi-directional many-to-one association to Order
	@OneToMany(mappedBy="location")
	private List<Orders> orders;

}