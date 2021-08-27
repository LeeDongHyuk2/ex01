package com.ex01.mapper;

import java.util.ArrayList;

import com.ex01.domain.ProductVO;

public interface ProductMapper {
	// 새 제품 리스트
	public ArrayList<ProductVO> getNewList();
	// 인기 제품 리스트
	public ArrayList<ProductVO> getHotList();
	// 카테고리 리스트
	public ArrayList<ProductVO> getListPage(String page);
}
