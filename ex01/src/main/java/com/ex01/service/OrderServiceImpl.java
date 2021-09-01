package com.ex01.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ex01.domain.OrderVO;
import com.ex01.mapper.OrderMapper;

@Service
public class OrderServiceImpl implements OrderService {
	private static final Logger logger = LoggerFactory.getLogger(OrderServiceImpl.class);
	
	@Autowired
	private OrderMapper omapper;
	
	@Override
	public void insertOrder(OrderVO order) {
		logger.info("order : " + order);
		omapper.insertOrder(order);		
	}
	
}
