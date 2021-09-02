package com.ex01.mapper;

import java.util.ArrayList;

import com.ex01.domain.OrderVO;

public interface OrderMapper {
	// 주문 등록
	public void insertOrder(OrderVO order);
	
	public ArrayList<OrderVO> getMyProduct(String member_id);
}
