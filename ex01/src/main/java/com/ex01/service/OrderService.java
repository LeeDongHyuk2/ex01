package com.ex01.service;

import java.util.ArrayList;

import com.ex01.domain.OrderVO;
import com.ex01.domain.ReviewVO;

public interface OrderService {
	// 주문 등록
	public void insertOrder(OrderVO order);
	// 내가 주문한 주문이 덜끝난 목록 리스트 가져오기
	public ArrayList<OrderVO> getMyProduct(String member_id);
	// 리뷰 등록
	public void reviewRegister(ReviewVO review) throws Exception;
	// 제품 상세페이지 리뷰 출력
	public ArrayList<ReviewVO> getReview(int product_no);
	// index 페이지 리뷰 리스트 출력
	public ArrayList<ReviewVO> getIndexReview();
}
