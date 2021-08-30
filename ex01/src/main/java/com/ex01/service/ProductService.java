package com.ex01.service;

import java.util.ArrayList;
import java.util.List;

import com.ex01.domain.AttachImageVO;
import com.ex01.domain.ProductVO;

public interface ProductService {
	public ArrayList<ProductVO> getNewList();
	public ArrayList<ProductVO> getHotList();
	public ArrayList<ProductVO> getListPage(String page);
	public void productResgister(ProductVO product);
	// 이미지 데이터 반환
	public List<AttachImageVO> getAttachList(int product_no);
	
	// 상품 조회 페이지
	public ProductVO productGetDetail(int product_no);
}
