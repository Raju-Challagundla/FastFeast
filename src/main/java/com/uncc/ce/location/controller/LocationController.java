package com.uncc.ce.location.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.uncc.ce.location.service.LocationService;

@Controller
public class LocationController {
	
	@Autowired
	private LocationService locationService;
}