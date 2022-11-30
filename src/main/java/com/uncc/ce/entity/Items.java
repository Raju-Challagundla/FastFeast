package com.uncc.ce.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

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
@Table(name = "items")
public class Items implements Serializable {


	/**
	 * 
	 */
	private static final long serialVersionUID = 3489089474645988425L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
	@Column(name="item_id")
	private int itemId;

	@Column(name = "item")
    private String item;
	
	@Column(name = "price")
    private String price;

	//bi-directional many-to-one association to Person
	@ManyToOne
	@JoinColumn(name="restaurant_id")
	private Restaurant restaurant;

}