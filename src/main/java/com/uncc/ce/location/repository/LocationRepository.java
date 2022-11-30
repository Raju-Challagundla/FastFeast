package com.uncc.ce.location.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.uncc.ce.entity.Location;
import com.uncc.ce.entity.Vehicle;

@Repository
public interface LocationRepository extends JpaRepository<Location, Integer> {
	Vehicle findByLocationId(String lId);
}