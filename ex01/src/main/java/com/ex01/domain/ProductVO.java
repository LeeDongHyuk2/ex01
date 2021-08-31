package com.ex01.domain;

import java.util.Date;
import java.util.List;
// 상품VO
public class ProductVO {
	// 상품 번호
	private int product_no;
	// 상품 등록 멤버
	private String member_id;
	// 상품 이름
	private String product_name;
	// 상품 종류
	private String product_category;
	// 상품 가격
	private int product_price;
	// 상품 메모
	private String product_memo;
	// 상품 재고
	private int product_stock;
	// 상품 등록 날짜
	private Date product_regdate;
	// 상품 수정 날짜
	private Date product_updatedate;
	// 상품 할인률
	private int product_discount;
	// 이미지 VO
	private List<AttachImageVO> imageList;
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
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
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_memo() {
		return product_memo;
	}
	public void setProduct_memo(String product_memo) {
		this.product_memo = product_memo;
	}
	public int getProduct_stock() {
		return product_stock;
	}
	public void setProduct_stock(int product_stock) {
		this.product_stock = product_stock;
	}
	public Date getProduct_regdate() {
		return product_regdate;
	}
	public void setProduct_regdate(Date product_regdate) {
		this.product_regdate = product_regdate;
	}
	public Date getProduct_updatedate() {
		return product_updatedate;
	}
	public void setProduct_updatedate(Date product_updatedate) {
		this.product_updatedate = product_updatedate;
	}
	public int getProduct_discount() {
		return product_discount;
	}
	public void setProduct_discount(int product_discount) {
		this.product_discount = product_discount;
	}
	public List<AttachImageVO> getImageList() {
		return imageList;
	}
	public void setImageList(List<AttachImageVO> imageList) {
		this.imageList = imageList;
	}
	@Override
	public String toString() {
		return "ProductVO [product_no=" + product_no + ", member_id=" + member_id + ", product_name=" + product_name
				+ ", product_category=" + product_category + ", product_price=" + product_price + ", product_memo="
				+ product_memo + ", product_stock=" + product_stock + ", product_regdate=" + product_regdate
				+ ", product_updatedate=" + product_updatedate + ", product_discount=" + product_discount
				+ ", imageList=" + imageList + "]";
	}	
}
