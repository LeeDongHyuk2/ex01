package com.ex01.service;

import java.util.ArrayList;
import java.util.List;

import com.ex01.domain.AttachImageVO;
import com.ex01.domain.ProductVO;

public interface ProductService {
	// 새상품 리스트 출력
	public ArrayList<ProductVO> getNewList();
	// 인기상품 리스트
	public ArrayList<ProductVO> getHotList();
	// 할인상품 리스트
	public ArrayList<ProductVO> getSailList();
	// page값에 맞는 상품리스트 반환
	public ArrayList<ProductVO> getListPage(String page);
	// 제품 등록
	public void productResgister(ProductVO product);
	// 이미지 데이터 반환
	public List<AttachImageVO> getAttachList(int product_no, String type);	
	// 상품 조회 페이지
	public ProductVO productGetDetail(int product_no);
}
