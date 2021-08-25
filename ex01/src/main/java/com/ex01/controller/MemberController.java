package com.ex01.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ex01.domain.MemberVO;
import com.ex01.service.MemberService;

@Controller
@RequestMapping(value="member")
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
	
	@PostMapping("join")
	public String joinPost(MemberVO member) {		
		service.join(member);
		logger.info("join" + member);
		return "redirect:/";
	}
	@PostMapping("login")
	public String loginPost(@RequestBody MemberVO Member) {
		service.login(Member);
		logger.info("id = " + Member.getMember_id() + " pwd = " + Member.getMember_pwd());
		return "redirect:/";
	}
}
