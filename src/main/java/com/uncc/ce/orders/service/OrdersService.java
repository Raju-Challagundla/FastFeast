package com.uncc.ce.orders.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uncc.ce.entity.Orders;
import com.uncc.ce.orders.repository.OrdersRepository;

@Service
public class OrdersService {

	@Autowired
    private OrdersRepository ordersRepository;
    

    public List<Orders> findAllOrders() {
    	List<Orders> ress = ordersRepository.findAll();
        return ress;
    }

    public Orders findById(Integer restId) {
    	return ordersRepository.findById(restId).get();
    }
    
//    public void deleteOrdersById(Integer restId) {
//    	ordersRepository.deleteById(restId);
//    }
    
//    public Orders saveOrders(OrdersModel ordersModel) {
//    	Orders orders = new Orders();
//    	orders.setLocation(ordersModel.getLocation());
//    	orders.setOrdersName(ordersModel.getOrdersName());
//    	orders.setSchedule(ordersModel.getSchedule());
//    	orders.setWebsite(ordersModel.getWebsite());
//        return ordersRepository.save(orders);
//    }
//    public Orders updateOrders(OrdersModel ordersModel) {
//    	Orders orders = findById(ordersModel.getOrdersId());
//    	orders.setLocation(ordersModel.getLocation());
//    	orders.setOrdersName(ordersModel.getOrdersName());
//    	orders.setSchedule(ordersModel.getSchedule());
//    	orders.setWebsite(ordersModel.getWebsite());
//        return ordersRepository.save(orders);
//    }
    
}