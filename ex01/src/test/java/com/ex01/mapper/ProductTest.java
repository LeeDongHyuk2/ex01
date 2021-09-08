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
		
		product.setProduct_name("�쓽�옄");
		product.setProduct_price(50000);
		product.setProduct_stock(100);
		product.setMember_id("�씠�룞�쁺");
		product.setProduct_memo("醫뗭� �쓽�옄�엯�땲�떎.");
		product.setProduct_category("chair");
		
		
		//mapper.productRegister(product);
	}
	
	// �씠誘몄� �벑濡�
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
		// System.out.println("�씠誘몄� �젙蹂� : " + mapper.getAttachList(product_no, ));
	}
	
	// �긽�뭹 議고쉶
	@Test
	public void productGetDetailTest() {
		int product_no = 2;
		
		System.out.println("�긽�뭹 議고쉶 �뜲�씠�꽣 : " + mapper.productGetDetail(product_no));
	}
}
