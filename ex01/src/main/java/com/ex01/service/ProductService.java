package com.ex01.service;

import java.util.ArrayList;

import com.ex01.domain.ProductVO;

public interface ProductService {
	public ArrayList<ProductVO> getNewList();
	public ArrayList<ProductVO> getHotList();
	public ArrayList<ProductVO> getListPage(String page);
}
