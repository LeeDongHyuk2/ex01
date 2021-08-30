package com.ex01.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ex01.domain.AttachImageVO;
import com.ex01.domain.ProductVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class ProductTest {
	@Autowired
	private ProductMapper mapper;
	
	@Test
	public void productRegisterTest() throws Exception{
		ProductVO product = new ProductVO();
		
		product.setProduct_name("의자");
		product.setProduct_price(50000);
		product.setProduct_stock(100);
		product.setMember_id("이동혁");
		product.setProduct_memo("좋은 의자입니다.");
		product.setProduct_category("chair");
		
		
		//mapper.productRegister(product);
	}
	
	// 이미지 등록
	@Test
	public void imageRegisterTest() {
		AttachImageVO vo = new AttachImageVO();
		
		vo.setProduct_no(1);
		vo.setFileName("test");
		vo.setUploadPath("test");
		vo.setUuid("test123");
		
		//mapper.pimgRegister(vo);
	}
	
	@Test
	public void getAttachListTests() {
		int product_no = 8;
		//System.out.println("이미지 정보 : " + mapper.getAttachList(product_no));
	}
	
	// 상품 조회
	@Test
	public void productGetDetailTest() {
		int product_no = 2;
		
		System.out.println("상품 조회 데이터 : " + mapper.productGetDetail(product_no));
	}
}
