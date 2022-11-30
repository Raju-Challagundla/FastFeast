package com.uncc.ce.location.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uncc.ce.location.repository.LocationRepository;

@Service
public class LocationService {

	@Autowired
    private LocationRepository locationRepository;
    

    
}