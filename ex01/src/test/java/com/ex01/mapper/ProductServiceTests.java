package com.ex01.mapper;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ex01.domain.AttachImageVO;
import com.ex01.domain.ProductVO;
import com.ex01.service.ProductService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ProductServiceTests {
	
	@Autowired
	private ProductService service;
	
	// 상품 등록, 상품 이미지 등록 테스트
	@Test
	public void productRegisterTest() {
		ProductVO product = new ProductVO();
		
		product.setProduct_name("servicetest");
		product.setProduct_category("chair");
		product.setProduct_price(5000);
		product.setProduct_stock(50);
		product.setProduct_memo("안녕하세요");
		
		//이미지 정보
		List<AttachImageVO> imageList = new ArrayList<AttachImageVO>();
		
		AttachImageVO image1 = new AttachImageVO();
		AttachImageVO image2 = new AttachImageVO();
		
		image1.setFileName("테스트 이미지1");
		image1.setUploadPath("Test image 1");
		image1.setUuid("test111111");
		
		image2.setFileName("테스트 이미지2");
		image2.setUploadPath("Test image 2");
		image2.setUuid("test222222");
		
		imageList.add(image1);
		imageList.add(image2);
		
		product.setImageList(imageList);
		
		service.productResgister(product);
		
		System.out.println("등록된 VO : " + product);
	}
}
