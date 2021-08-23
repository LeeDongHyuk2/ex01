package com.ex01.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ex01.domain.MemberVO;
import com.ex01.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	private MemberService service;
	@RequestMapping(value="login", method = RequestMethod.GET)
	
	public String login() {
		logger.info("login page.");		
		return "login";
	}
	
	@RequestMapping(value="join", method = RequestMethod.GET)
	public String join() {
		logger.info("join page.");		
		return "join";
	}
	
	@PostMapping(value="join")
	public String join_member(MemberVO member) {
		logger.info("join");
		service.member_join(member);
		return "redirect:/";
	}
}
