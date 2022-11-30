package com.uncc.ce.delivery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uncc.ce.delivery.model.DeliveryModel;
import com.uncc.ce.delivery.repository.DeliveryRepository;
import com.uncc.ce.entity.Delivery;
import com.uncc.ce.entity.Driver;
import com.uncc.ce.entity.Vehicle;

@Service
public class DeliveryService {

	@Autowired
    private DeliveryRepository deliveryRepository;
    

    public List<Delivery> findAllDeliveries() {
    	List<Delivery> ress = deliveryRepository.findAll();
        return ress;
    }

    public Delivery findById(Integer restId) {
    	return deliveryRepository.findById(restId).get();
    }
    
    public void deleteDeliveryById(Integer restId) {
    	deliveryRepository.deleteById(restId);
    }
    
    public Delivery updateDelivery(DeliveryModel sm,Vehicle vehicle,Driver driver) {
    	Delivery delivery = findById(sm.getDeliveryId());
    	delivery.setVehicle(vehicle);
    	delivery.setDriver(driver);
        return deliveryRepository.save(delivery);
    }
    
}