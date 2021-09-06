package com.ex01.mapper;

import java.util.ArrayList;

import com.ex01.domain.AttachImageVO;
import com.ex01.domain.OrderVO;
import com.ex01.domain.ReviewVO;

public interface OrderMapper {
	// 주문 등록
	public void insertOrder(OrderVO order);
	// myPage 주문 출력
	public ArrayList<OrderVO> getMyProduct(String member_id);
	// 리뷰 등록
	public void reviewRegister(ReviewVO review);
	// 리뷰 이미지 등록
	public void rimgRegister(AttachImageVO vo);
	// 상세페이지 리뷰 출력 리스트
	public ArrayList<ReviewVO> getReview(int product_no);
}
