package com.ex01.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ex01.domain.OrderVO;
import com.ex01.domain.ReviewVO;
import com.ex01.mapper.OrderMapper;

@Service
public class OrderServiceImpl implements OrderService {
	private static final Logger logger = LoggerFactory.getLogger(OrderServiceImpl.class);
	
	@Autowired
	private OrderMapper omapper;
	
	// 주문 등록
	@Override
	public void insertOrder(OrderVO order) {
		logger.info("order : " + order);
		omapper.insertOrder(order);		
	}
	// my페이지 주문 리스트
	@Override
	public ArrayList<OrderVO> getMyProduct(String member_id) {
		logger.info("member_id : " + member_id);
		return omapper.getMyProduct(member_id);
	}
	// 리뷰 등록
	@Override
	public void reviewRegister(ReviewVO review) throws Exception {
		omapper.reviewRegister(review);
		
		if(review.getImageList() == null || review.getImageList().size() <= 0) {
			return;
		}
		review.getImageList().forEach(attach->{
			attach.setProduct_no(review.getReview_no());
			omapper.rimgRegister(attach);
		});
	}
	
	// 제품 상세 페이지 리뷰리스트
	@Override
	public ArrayList<ReviewVO> getReview(int product_no) {		
		return omapper.getReview(product_no);
	}
	
	// index페이지 리뷰리스트
	@Override
	public ArrayList<ReviewVO> getIndexReview() {
		return omapper.getIndexReview();
	}
	
}
