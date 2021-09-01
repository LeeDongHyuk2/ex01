package com.ex01.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ex01.domain.MemberVO;
import com.ex01.domain.OrderVO;
import com.ex01.service.OrderService;
import com.ex01.service.ProductService;


@Controller
@RequestMapping(value="order")
public class OrderController {
	
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	@Autowired
	private ProductService pservice;
	@Autowired
	private OrderService oservice;
	// 제품 주문 페이지	
	@PostMapping("product")
	public String postOrderPage(int product_no, Model model){
		logger.info("getOrderPage(product_no) : " + product_no);

		model.addAttribute("productInfo", pservice.productGetDetail(product_no));
		logger.info("product : " + pservice.productGetDetail(product_no));
		return "order";
	}
	
	@PostMapping("insert")
	public String insertOrder(OrderVO order, HttpServletRequest req) {
		HttpSession session = req.getSession();	
		MemberVO member = (MemberVO)session.getAttribute("member");
		order.setOrder_id(member.getMember_id());

		oservice.insertOrder(order);
		logger.info("inesertOrder : " + order);
		
		return "redirect:/myPage";
	}
}
