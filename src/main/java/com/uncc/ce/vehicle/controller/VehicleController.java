package com.uncc.ce.vehicle.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uncc.ce.entity.Vehicle;
import com.uncc.ce.vehicle.model.VehicleModel;
import com.uncc.ce.vehicle.service.VehicleService;

@Controller
public class VehicleController {
	
	@Autowired
	private VehicleService vehicleService;
//	
	@RequestMapping(value="/admin/vehicles", method = RequestMethod.GET)
	public ModelAndView getAllEmployees() {
		ModelAndView mav = new ModelAndView("admin/list-vehicles");
		List<Vehicle> allDB = vehicleService.findAllVehicles();
		mav.addObject("vehicles", allDB);
		return mav;
	}
	
	@RequestMapping(value="/admin/addVehicleForm", method = RequestMethod.GET) 
	public ModelAndView addEmployeeForm() {
		ModelAndView mav = new ModelAndView("admin/add-vehicle-form");
		VehicleModel newVehicle = new VehicleModel();
		mav.addObject("vehicle", newVehicle);
		return mav;
	}
	
	@RequestMapping(value="/admin/saveVehicle", method = RequestMethod.POST) 
	public String saveVehicle(@ModelAttribute VehicleModel vehicle) {
		vehicleService.saveVehicle(vehicle);
		return "redirect:/admin/vehicles";
	}
	
	@RequestMapping(value="/admin/updateVehicle", method = RequestMethod.POST) 
	public String updateVehicle(@ModelAttribute VehicleModel vehicle,@RequestParam Integer vehicleId) {
		vehicle.setVehicleId(vehicleId);
		vehicleService.updateVehicle(vehicle);
		return "redirect:/admin/vehicles";
	}
////	
	@GetMapping("/admin/showVehicleUpdateForm")
	public ModelAndView showUpdateForm(@RequestParam Integer vehicleId) {
		ModelAndView mav = new ModelAndView("admin/update-vehicle-form");
		Vehicle vehicle = vehicleService.findById(vehicleId);
		mav.addObject("vehicle", vehicle);
		return mav;
	}
//	
	@GetMapping("/admin/deleteVehicle")
	public String deleteEmployee(@RequestParam Integer vehicleId) {
		vehicleService.deleteVehicleById(vehicleId);
		return "redirect:/admin/vehicles";
	}
}