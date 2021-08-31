package com.ex01.mapper;

import java.util.ArrayList;
import java.util.List;

import com.ex01.domain.AttachImageVO;
import com.ex01.domain.ProductVO;

public interface ProductMapper {
	// 신상품 리스트 출력
	public ArrayList<ProductVO> getNewList();
	// 인기상품 리스트 출력
	public ArrayList<ProductVO> getHotList();
	// 세일상품 리스트 출력
	public ArrayList<ProductVO> getSailList();
	// 카테고리 별 리스트 출력
	public ArrayList<ProductVO> getListPage(String page);
	// 상품 등록
	public void productRegister(ProductVO product);
	// 상품 이미지 등록
	public void pimgRegister(AttachImageVO vo);
	// 이미지 데이터 반환
	public List<AttachImageVO> getAttachList(int product_no);
	// 상품 조회
	public ProductVO productGetDetail(int product_no);
}
