package com.uncc.ce.orders.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.uncc.ce.orders.service.OrdersService;

@Controller
public class OrdersController {
	
	@Autowired
	private OrdersService ordersService;
	
	@RequestMapping(value="/admin/orders", method = RequestMethod.GET)
	public ModelAndView getAllEmployees() {
		ModelAndView mav = new ModelAndView("admin/list-orders");
		mav.addObject("orders", ordersService.findAllOrders());
		return mav;
	}
	
//	@RequestMapping(value="/admin/addOrdersForm", method = RequestMethod.GET) 
//	public ModelAndView addOrdersForm() {
//		ModelAndView mav = new ModelAndView("admin/add-order-form");
//		OrdersModel neworder = new OrdersModel();
//		mav.addObject("order", neworder);
//		return mav;
//	}
////	
//	@RequestMapping(value="/admin/saveOrders", method = RequestMethod.POST) 
//	public String saveorder(@ModelAttribute OrdersModel order) {
//		orderService.saveOrders(order);
//		return "redirect:/admin/orders";
//	}
//	
//	@RequestMapping(value="/admin/updateOrders", method = RequestMethod.POST) 
//	public String updateorder(@ModelAttribute OrdersModel order,@RequestParam Integer orderId) {
//		order.setOrdersId(orderId);
//		orderService.updateOrders(order);
//		return "redirect:/admin/orders";
//	}
////	
//	@GetMapping("/admin/showResUpdateForm")
//	public ModelAndView showUpdateForm(@RequestParam Integer orderId) {
//		ModelAndView mav = new ModelAndView("admin/update-order-form");
//		Orders order = orderService.findById(orderId);
//		OrdersModel neworder = new OrdersModel();
//		BeanUtils.copyProperties(order, neworder);
//		mav.addObject("order", neworder);
//		return mav;
//	}
//	
//	@GetMapping("/admin/deleteOrders")
//	public String deleteEmployee(@RequestParam Integer orderId) {
//		orderService.deleteOrdersById(orderId);
//		return "redirect:/admin/orders";
//	}
}