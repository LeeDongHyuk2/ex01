package com.ex01.domain;

import java.util.Date;
import java.util.List;

public class ReviewVO {
	// 리뷰 번호
	private int review_no;
	// 리뷰 등록한 사람 아이디
	private String member_id;
	// 리뷰 제품 번호
	private int product_no;
	// 리뷰 타이틀
	private String review_title;
	// 리뷰 내용
	private String review_content;
	// 리뷰 등록 날짜
	private Date review_regdate;
	// 리뷰 수정 날짜
	private Date review_updatedate;
	// 이미지 VO
	private List<AttachImageVO> imageList;
	public List<AttachImageVO> getImageList() {
		return imageList;
	}
	public void setImageList(List<AttachImageVO> imageList) {
		this.imageList = imageList;
	}
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public Date getReview_regdate() {
		return review_regdate;
	}
	public void setReview_regdate(Date review_regdate) {
		this.review_regdate = review_regdate;
	}
	public Date getReview_updatedate() {
		return review_updatedate;
	}
	public void setReview_updatedate(Date review_updatedate) {
		this.review_updatedate = review_updatedate;
	}
	@Override
	public String toString() {
		return "ReviewVO [review_no=" + review_no + ", member_id=" + member_id + ", product_no=" + product_no
				+ ", review_title=" + review_title + ", review_content=" + review_content + ", review_regdate="
				+ review_regdate + ", review_updatedate=" + review_updatedate + ", imageList=" + imageList + "]";
	}	
}
