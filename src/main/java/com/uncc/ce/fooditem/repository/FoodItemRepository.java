package com.uncc.ce.fooditem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.uncc.ce.entity.Items;

@Repository
public interface FoodItemRepository extends JpaRepository<Items, Integer> {
	Items findByItemId(int vId);
}