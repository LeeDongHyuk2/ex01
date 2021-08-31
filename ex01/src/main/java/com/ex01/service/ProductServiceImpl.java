package com.ex01.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ex01.domain.AttachImageVO;
import com.ex01.domain.ProductVO;
import com.ex01.mapper.ProductMapper;

@Service
public class ProductServiceImpl implements ProductService {
	private static final Logger logger = LoggerFactory.getLogger(ProductService.class);
	@Autowired
	private ProductMapper mapper;
	// 신 상품 리스트 출력
	@Override
	public ArrayList<ProductVO> getNewList() {
		logger.info("getNewList.....");
		return mapper.getNewList();
	}
	// 인기 상품 리스트 출력
	@Override
	public ArrayList<ProductVO> getHotList() {
		logger.info("getHotList.....");
		return mapper.getHotList();
	}
	// 세일 상품 리스트 출력
	@Override
	public ArrayList<ProductVO> getSailList() {
		logger.info("getSailList.....");
		return mapper.getSailList();
	}
	// gnb 각 항목 페이지 이동
	@Override
	public ArrayList<ProductVO> getListPage(String page) {
		logger.info("changePage : /"+ page);
		return mapper.getListPage(page);
	}
	
	// 상품 등록
	@Transactional
	@Override
	public void productResgister(ProductVO product) {
		logger.info("productRegsiter : " + product);
		mapper.productRegister(product);
		
		if(product.getImageList() == null || product.getImageList().size() <= 0) {
			return;
		}
		product.getImageList().forEach(attach->{
			
			attach.setProduct_no(product.getProduct_no());
			mapper.pimgRegister(attach);			
		});		
	}
	// 이미지 데이터 반환
	@Override
	public List<AttachImageVO> getAttachList(int product_no) {
		logger.info("getAttachList......");
				
		return mapper.getAttachList(product_no);
	}
	// 상품 조회 페이지
	@Override
	public ProductVO productGetDetail(int product_no) {
		logger.info("productGetDetail......" + product_no);
		return mapper.productGetDetail(product_no);
	}

	
	
}