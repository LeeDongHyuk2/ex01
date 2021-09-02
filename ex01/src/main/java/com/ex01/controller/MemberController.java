package com.ex01.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ex01.domain.MemberVO;
import com.ex01.service.MemberService;

@Controller
@RequestMapping(value="member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	private MemberService service;
	// 로그인 페이지 이동
	@RequestMapping(value="login", method = RequestMethod.GET)	
	public String login() {
		logger.info("login page.");		
		return "login";
	}
	// 회원가입 페이지 이동
	@RequestMapping(value="join", method = RequestMethod.GET)
	public String join() {
		logger.info("join page.");		
		return "join";
	}
	// 회원가입
	@PostMapping("join")
	public String joinPost(MemberVO member) {		
		service.join(member);
		logger.info("join" + member);
		return "redirect:/";
	}
	// 로그인
	@PostMapping("login")
	public String loginPost(MemberVO member, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("member : " + member);
		
		HttpSession session = req.getSession();
		MemberVO login = service.memberLogin(member);
		if(login == null) {
			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:/member/login";
		}
		session.setAttribute("member", login);
		
		return "redirect:/";
	}
	// 로그아웃
	@GetMapping("logout")
	public String logout(HttpServletRequest req, RedirectAttributes rttr) {
		HttpSession session = req.getSession();
		session.invalidate();
		logger.info("user logout");
		return "redirect:/";
	}
	// 아이디 유효성 확인
	@PostMapping("/memberIdChk")
	@ResponseBody
	public String memberIdChkPOST(String member_id) throws Exception{
		int result = service.idCheck(member_id);
		if(result != 0) {
			return "fail";
		}else {
			return "success";
		}
	}
}
