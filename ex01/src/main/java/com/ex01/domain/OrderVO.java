package com.ex01.domain;

import java.util.Date;

public class OrderVO {
	// 주문 번호
	private int order_no;
	// 주문자 아이디
	private String order_id;
	// 주문상품 번호
	private int product_no;
	// 수령인
	private String order_name;
	// 주문 수량
	private int order_stock;
	// 주문 가격
	private int order_price;
	// 배송 우편번호
	private String order_addr1;
	// 배송 주소
	private String order_addr2;
	// 배송 상세주소
	private String order_addr3;
	// 연락처1
	private String order_phone1;
	// 연락처2
	private String order_phone2;
	// 배송 메모
	private String order_memo;
	// 결제수단
	private String order_pay;
	// 입금은행
	private String order_bank;
	// 계좌
	private String order_account;
	// 주문 등록 날짜
	private Date order_regdate;
	// 주문 완료 날짜
	private Date order_enddate;
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public String getOrder_name() {
		return order_name;
	}
	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}
	public int getOrder_stock() {
		return order_stock;
	}
	public void setOrder_stock(int order_stock) {
		this.order_stock = order_stock;
	}
	public int getOrder_price() {
		return order_price;
	}
	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}
	public String getOrder_addr1() {
		return order_addr1;
	}
	public void setOrder_addr1(String order_addr1) {
		this.order_addr1 = order_addr1;
	}
	public String getOrder_addr2() {
		return order_addr2;
	}
	public void setOrder_addr2(String order_addr2) {
		this.order_addr2 = order_addr2;
	}
	public String getOrder_addr3() {
		return order_addr3;
	}
	public void setOrder_addr3(String order_addr3) {
		this.order_addr3 = order_addr3;
	}
	public String getOrder_phone1() {
		return order_phone1;
	}
	public void setOrder_phone1(String order_phone1) {
		this.order_phone1 = order_phone1;
	}
	public String getOrder_phone2() {
		return order_phone2;
	}
	public void setOrder_phone2(String order_phone2) {
		this.order_phone2 = order_phone2;
	}
	public String getOrder_memo() {
		return order_memo;
	}
	public void setOrder_memo(String order_memo) {
		this.order_memo = order_memo;
	}
	public String getOrder_pay() {
		return order_pay;
	}
	public void setOrder_pay(String order_pay) {
		this.order_pay = order_pay;
	}
	public String getOrder_bank() {
		return order_bank;
	}
	public void setOrder_bank(String order_bank) {
		this.order_bank = order_bank;
	}
	public String getOrder_account() {
		return order_account;
	}
	public void setOrder_account(String order_account) {
		this.order_account = order_account;
	}
	public Date getOrder_regdate() {
		return order_regdate;
	}
	public void setOrder_regdate(Date order_regdate) {
		this.order_regdate = order_regdate;
	}
	public Date getOrder_enddate() {
		return order_enddate;
	}
	public void setOrder_enddate(Date order_enddate) {
		this.order_enddate = order_enddate;
	}
	@Override
	public String toString() {
		return "OrderVO [order_no=" + order_no + ", order_id=" + order_id + ", product_no=" + product_no
				+ ", order_name=" + order_name + ", order_stock=" + order_stock + ", order_price=" + order_price
				+ ", order_addr1=" + order_addr1 + ", order_addr2=" + order_addr2 + ", order_addr3=" + order_addr3
				+ ", order_phone1=" + order_phone1 + ", order_phone2=" + order_phone2 + ", order_memo=" + order_memo
				+ ", order_pay=" + order_pay + ", order_bank=" + order_bank + ", order_account=" + order_account
				+ ", order_regdate=" + order_regdate + ", order_enddate=" + order_enddate + "]";
	}
	
}
