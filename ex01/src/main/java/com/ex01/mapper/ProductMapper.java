package com.ex01.mapper;

import java.util.ArrayList;

import com.ex01.domain.ProductVO;

public interface ProductMapper {
	// �� ��ǰ ����Ʈ
	public ArrayList<ProductVO> getNewList();
	// �α� ��ǰ ����Ʈ
	public ArrayList<ProductVO> getHotList();
	// ī�װ� ����Ʈ
	public ArrayList<ProductVO> getListPage(String page);
}
