package com.uncc.ce.vehicle.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uncc.ce.entity.Vehicle;
import com.uncc.ce.vehicle.model.VehicleModel;
import com.uncc.ce.vehicle.repository.VehicleRepository;

@Service
public class VehicleService {

	@Autowired
    private VehicleRepository vehicleRepository;
    

    public List<Vehicle> findAllVehicles() {
    	List<Vehicle> vehicles = vehicleRepository.findAll();
        return vehicles;
    }

    public Vehicle findById(Integer vehicleId) {
    	return vehicleRepository.findById(vehicleId).get();
    }
    
    public void deleteVehicleById(Integer vehicleId) {
    	vehicleRepository.deleteById(vehicleId);
    }
    
    public Vehicle saveVehicle(VehicleModel sm) {
    	Vehicle stu = new Vehicle();
    	stu.setMake(sm.getMake());
    	stu.setModel(sm.getModel());
    	stu.setVehiclePlate(sm.getVehiclePlate());
        return vehicleRepository.save(stu);
    }
    public Vehicle updateVehicle(VehicleModel sm) {
    	Vehicle stu = findById(sm.getVehicleId());
    	stu.setMake(sm.getMake());
    	stu.setModel(sm.getModel());
    	stu.setVehiclePlate(sm.getVehiclePlate());
        return vehicleRepository.save(stu);
    }
    
}