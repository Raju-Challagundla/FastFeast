package com.uncc.ce.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * The persistent class for the staff database table.
 * 
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "staff")
public class Staff implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7612563628173400917L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
	@Column(name="staff_id")
	private int staffId;

	@Column(name="is_admin")
	private String isAdmin;

	private String position;

	//bi-directional many-to-one association to Person
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="person_id")
	private Person person;
	
	//bi-directional many-to-one association to admin
	@OneToMany(mappedBy="staff")
	private List<Admin> admins;

}