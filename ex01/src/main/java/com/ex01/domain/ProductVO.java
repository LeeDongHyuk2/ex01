package com.ex01.domain;

import java.util.Date;

public class ProductVO {
	// ��ǰ��ȣ
	private int product_no;
	// ��ǰ�̸�
	private String product_name;
	// ��ǰī�װ�
	private String product_category;
	// ��ǰ����
	private String product_price;
	// ��ǰ����
	private String product_memo;
	// ��ǰ���
	private String product_stock;
	// ��ǰ��ϳ�¥
	private Date product_regdate;
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_category() {
		return product_category;
	}
	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}
	public String getProduct_price() {
		return product_price;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}
	public String getProduct_memo() {
		return product_memo;
	}
	public void setProduct_memo(String product_memo) {
		this.product_memo = product_memo;
	}
	public String getProduct_stock() {
		return product_stock;
	}
	public void setProduct_stock(String product_stock) {
		this.product_stock = product_stock;
	}
	public Date getProduct_regdate() {
		return product_regdate;
	}
	public void setProduct_regdate(Date product_regdate) {
		this.product_regdate = product_regdate;
	}
	@Override
	public String toString() {
		return "ProductVO [product_no=" + product_no + ", product_name=" + product_name + ", product_category="
				+ product_category + ", product_price=" + product_price + ", product_memo=" + product_memo
				+ ", product_stock=" + product_stock + ", product_regdate=" + product_regdate + "]";
	}
}
