package com.ex01.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ex01.domain.AttachImageVO;
import com.ex01.domain.ProductVO;
import com.ex01.mapper.ProductMapper;
import com.ex01.service.ProductService;

import net.coobird.thumbnailator.Thumbnails;

@Controller
@RequestMapping(value="product")
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired
	private ProductService pservice;
	
	@Autowired
	private ProductMapper pmapper;

	/* 첨부 파일 업로드 */
	@PostMapping(value = "/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<AttachImageVO>> uploadAjaxActionPOST(MultipartFile[] uploadFile) {
		logger.info("uploadAjaxActionPOST.......");
		
		// 이미지 파일 체크
		for(MultipartFile multipartFile : uploadFile)	{
			
			File checkfile = new File(multipartFile.getOriginalFilename());
			String type = null;
			
			try {				
				type = Files.probeContentType(checkfile.toPath());
				logger.info("MIME TYPE : " + type);
			} catch(IOException e) {
				e.printStackTrace();
			}
			if(!type.startsWith("image")) {
				List<AttachImageVO> list = null;
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
			}
		}// for
		String uploadFolder = "C:\\upload";
		
		// 날짜 폴더 경로
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		// 경로 구분자가 운영체제환경에 따라 다르기때문에 File.serparator를 사용하여 설정
		String datePath = str.replace("-", File.separator);
		
		File uploadPath = new File(uploadFolder, datePath);
		// 해당경로 폴더가 존재하지 않는다면 폴더생성
		if(uploadPath.exists() == false) { 
			uploadPath.mkdirs();
		}
		// 이미지 정보 담는 객체
		List<AttachImageVO> list = new ArrayList();
		
		// 향상된 for
		for(MultipartFile multipartFile : uploadFile) {
			// 이미지 정보 객체
			AttachImageVO vo = new AttachImageVO();
			
			// 파일 이름
			String uploadFileName = multipartFile.getOriginalFilename();
			vo.setFileName(uploadFileName);
			vo.setUploadPath(datePath);
			
			// uuid 적용 파일 이름
			String uuid = UUID.randomUUID().toString();
			vo.setUuid(uuid);
			
			uploadFileName = uuid + "_" + uploadFileName;
			
			// 파일 위치, 파일 이름을 합친 File 객체
			File saveFile = new File(uploadPath, uploadFileName);
			// 파일 저장
			try {
				multipartFile.transferTo(saveFile);
				
				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);
				
				BufferedImage bo_image = ImageIO.read(saveFile);
					// 비율 
					double ratio = 3;
					// 넓이 높이
					int width = (int)(bo_image.getWidth() / ratio);
					int height = (int)(bo_image.getHeight() / ratio);
				
				
				Thumbnails.of(saveFile)
				.size(width,height)
				.toFile(thumbnailFile);
				
			} catch(Exception e) {
				e.printStackTrace();
			}
			list.add(vo);
		} // for문 끝
		
		ResponseEntity<List<AttachImageVO>> result = new ResponseEntity<List<AttachImageVO>>(list, HttpStatus.OK);
		return result;
	}
	// 제품 등록 시 선택 이미지 출력
	@GetMapping("/display")
	public ResponseEntity<byte[]> getImage(String fileName){
		logger.info("getImage()...... " + fileName);
		
		File file = new File("c:\\upload\\" + fileName);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	// 제품 등록 중 이미지 파일 삭제
	@PostMapping("/deleteFile")
	public ResponseEntity<String> deleteFile(String fileName){
		logger.info("deleteFile......."+fileName);
		
		File file = null;
		
		try {
			// 썸네일 파일 삭제
			file = new File("c:\\upload\\" + URLDecoder.decode(fileName,"UTF-8"));
			
			file.delete();
			
			// 원본 파일 삭제
			String originFileName = file.getAbsolutePath().replace("s_", "");
			
			logger.info("originFileName) ; " + originFileName); 
			
			file = new File(originFileName);
			
			file.delete();
			
			return new ResponseEntity<String>("success", HttpStatus.OK);
			
		}catch(Exception e) {
			e.printStackTrace();
			
			return new ResponseEntity<String> ("fail", HttpStatus.NOT_IMPLEMENTED);
		}
	}
	// 제품 등록
	@PostMapping("/productRegister")
	public String productRegisterPOST(ProductVO product, RedirectAttributes rttr) {
		logger.info("productRegister..... " + product);
		
		pservice.productResgister(product);
		
		rttr.addFlashAttribute("", product.getProduct_name());
		
		return "redirect:/";		
	}
	
	// 이미지 정보 반환
	@GetMapping(value ="/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<AttachImageVO>> getAttachList(int product_no, String type){
		logger.info("getAttachList ....... " + product_no);
		
		return new ResponseEntity<List<AttachImageVO>>(pservice.getAttachList(product_no, type), HttpStatus.OK);
	}
	
	// 상품 조회 페이지
	@GetMapping(value="/productDetail/{product_no}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String productGetDetail(@PathVariable("product_no") int product_no, Model model) {
		logger.info("productGetDetail........" + product_no);
		
		model.addAttribute("productInfo", pservice.productGetDetail(product_no));
		return "productDetail";
	}
	
}
