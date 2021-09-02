package com.ex01.service;

import java.util.ArrayList;
import java.util.List;

import com.ex01.domain.OrderVO;

public interface OrderService {
	// 주문 등록
	public void insertOrder(OrderVO order);
	// 내가 주문한 주문이 덜끝난 목록 리스트 가져오기
	public ArrayList<OrderVO> getMyProduct(String member_id);
}
