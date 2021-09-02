package com.ex01.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ex01.domain.MemberVO;
import com.ex01.domain.OrderVO;
import com.ex01.domain.ProductVO;
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
		logger.info("member 는 "+member);
		order.setOrder_id(member.getMember_id());

		oservice.insertOrder(order);
		logger.info("inesertOrder : " + order);
		
		return "redirect:/myPage";
	}
	
	// 상품 목록 조회 페이지
	@GetMapping(value = "myProduct", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<ArrayList<OrderVO>> getMyProduct(String member_id){
		logger.info("member_id : 값" + member_id);
		
		return new ResponseEntity<>(oservice.getMyProduct(member_id), HttpStatus.OK);
	}
}
