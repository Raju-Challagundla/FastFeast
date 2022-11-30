package com.uncc.ce.orders.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.uncc.ce.entity.Orders;

@Repository
public interface OrdersRepository extends JpaRepository<Orders, Integer> {
}