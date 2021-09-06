package com.ex01.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ex01.domain.ProductVO;
import com.ex01.service.ProductService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private ProductService pservice;
	
	// �⺻ Ȩ������
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	// �⺻ȭ�鿡�� �Ż�ǰ ����Ʈ ���
	@GetMapping(value="getNewList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<ArrayList<ProductVO>> getNewList(){
		logger.info("getNewList.....");
		return new ResponseEntity<>(pservice.getNewList(), HttpStatus.OK);
	}
	// �⺻ȭ�鿡�� �α��ǰ ����Ʈ ���
	@GetMapping(value="getHotList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<ArrayList<ProductVO>> getHotList(){
		logger.info("getHotList.....");
		return new ResponseEntity<>(pservice.getHotList(), HttpStatus.OK);
	}
	// 세일리스트 출력
	@GetMapping(value="getSailList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<ArrayList<ProductVO>> getSailList(){
		logger.info("getSailList");
		return new ResponseEntity<>(pservice.getSailList(), HttpStatus.OK);
	}
	
	// gnb ������ �̵�
	@GetMapping(value="/list/{page}")
	public String movePage(@PathVariable("page") String page) {
		return "page";
	}
	
	@GetMapping(value="/{page}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<ArrayList<ProductVO>> getListPage(@PathVariable("page") String page){
		logger.info("getListPage : "+page);		
		return new ResponseEntity<>(pservice.getListPage(page), HttpStatus.OK);
	}
	@GetMapping(value="productRegister")
	public String productRegister() {
		return "productRegister";
	}
	
	@GetMapping("myPage")
	public String myPage() {
		return "myPage";
	}
}
