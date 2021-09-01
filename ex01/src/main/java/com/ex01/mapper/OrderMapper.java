package com.ex01.mapper;

import com.ex01.domain.OrderVO;

public interface OrderMapper {
	// 주문 등록
	public void insertOrder(OrderVO order);
}
