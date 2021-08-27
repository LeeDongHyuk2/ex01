package com.ex01.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.ex01.domain.ProductVO;
import com.ex01.mapper.ProductMapper;

@Service
public class ProductServiceImpl implements ProductService {
	private static final Logger logger = LoggerFactory.getLogger(ProductServiceImpl.class);
	@Autowired
	private ProductMapper mapper;
	@Override
	public ArrayList<ProductVO> getNewList() {
		logger.info("getNewList.....");
		return mapper.getNewList();
	}
	@Override
	public ArrayList<ProductVO> getHotList() {
		logger.info("getHotList.....");
		return mapper.getHotList();
	}
	@Override
	public ArrayList<ProductVO> getListPage(String page) {
		logger.info("changePage : /"+ page);
		return mapper.getListPage(page);
	}
}