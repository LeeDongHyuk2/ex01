package com.ex01.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ex01.domain.OrderVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class OrderTest {
	@Autowired
	private OrderMapper mapper;
	
	// 주문 입력 테스트
	@Test
	public void insertOrderTest() throws Exception{
		OrderVO order = new OrderVO();
		
		order.setOrder_id("test");
		order.setOrder_name("수령인");
		order.setProduct_no(1);
		order.setOrder_stock(5);
		order.setOrder_price(50000);
		order.setOrder_addr1("우편번호");
		order.setOrder_addr2("주소");
		order.setOrder_addr3("상세주소");
		order.setOrder_phone1("123456789");
		order.setOrder_memo("메모입니다");
		order.setOrder_pay("결제수단");
		order.setOrder_bank("입금은행");
		order.setOrder_account("계좌");
		
		mapper.insertOrder(order);
	}
}
