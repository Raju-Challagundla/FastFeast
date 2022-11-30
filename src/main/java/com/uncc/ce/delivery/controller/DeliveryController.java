package com.uncc.ce.delivery.controller;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uncc.ce.delivery.model.DeliveryModel;
import com.uncc.ce.delivery.service.DeliveryService;
import com.uncc.ce.entity.Delivery;
import com.uncc.ce.entity.Student;
import com.uncc.ce.entity.Vehicle;
import com.uncc.ce.orders.service.OrdersService;
import com.uncc.ce.student.service.StudentService;
import com.uncc.ce.vehicle.service.VehicleService;

@Controller
public class DeliveryController {
	
	@Autowired
	private DeliveryService deliveryService;
	
	@Autowired
	private OrdersService ordersService;
//	
	@Autowired
	private VehicleService vehicleService;
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value="/admin/deliveries", method = RequestMethod.GET)
	public ModelAndView getAllEmployees() {
		ModelAndView mav = new ModelAndView("admin/list-deliveries");
		mav.addObject("deliveries", deliveryService.findAllDeliveries());
		return mav;
	}
	
//	@RequestMapping(value="/admin/addDeliveryForm", method = RequestMethod.GET) 
//	public ModelAndView addDeliveryForm() {
//		ModelAndView mav = new ModelAndView("admin/add-delivery-form");
//		DeliveryModel newdelivery = new DeliveryModel();
//		mav.addObject("delivery", newdelivery);
//		return mav;
//	}
//	
//	@RequestMapping(value="/admin/saveDelivery", method = RequestMethod.POST) 
//	public String savedelivery(@ModelAttribute DeliveryModel delivery) {
//		deliveryService.saveDelivery(delivery);
//		return "redirect:/admin/deliverys";
//	}
//	
	@RequestMapping(value="/admin/manageDelivery", method = RequestMethod.POST) 
	public String updatedelivery(@ModelAttribute DeliveryModel delivery,@RequestParam Integer deliveryId) {
		delivery.setDeliveryId(deliveryId);
		Vehicle vehicle = vehicleService.findById(delivery.getLastSelectedVehicle());
		Student student = studentService.findById(delivery.getLastSelectedStudent());
		deliveryService.updateDelivery(delivery,vehicle,student.getDrivers().get(0));
		return "redirect:/admin/deliveries";
	}
//	
	@GetMapping("/admin/manageDeliveryForm")
	public ModelAndView showUpdateForm(@RequestParam Integer deliveryId) {
		ModelAndView mav = new ModelAndView("admin/manage-delivery");
		Delivery delivery = deliveryService.findById(deliveryId);
		DeliveryModel newdelivery = new DeliveryModel();
		BeanUtils.copyProperties(delivery, newdelivery);
		newdelivery.setStudents(studentService.findAllStudents());
		newdelivery.setOrders(ordersService.findAllOrders());
		newdelivery.setVehicles(vehicleService.findAllVehicles());
		newdelivery.setLastSelectedOrder(delivery.getOrders().get(0).getOrderId());
		newdelivery.setLastSelectedStudent(delivery.getDriver() != null ? delivery.getDriver().getStudent().getStudentId():null);
		newdelivery.setLastSelectedVehicle(delivery.getVehicle() != null ? delivery.getVehicle().getVehicleId() : null);
		mav.addObject("delivery", newdelivery);
		return mav;
	}
//	
//	@GetMapping("/admin/deleteDelivery")
//	public String deleteEmployee(@RequestParam Integer deliveryId) {
//		deliveryService.deleteDeliveryById(deliveryId);
//		return "redirect:/admin/deliverys";
//	}
}