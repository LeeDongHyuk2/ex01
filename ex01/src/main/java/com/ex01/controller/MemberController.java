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
	public String loginPost(MemberVO Member, HttpServletRequest req, RedirectAttributes rttr) {
		HttpSession session = req.getSession();
		MemberVO login = service.login(Member);
		logger.info("post login - id = " + Member.getMember_id() + " pwd = " + Member.getMember_pwd());
		if(login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}else {
			session.setAttribute("member", login);
		}
		logger.info(""+session.getAttribute("member"));
		return "redirect:/";
	}
	@GetMapping("logout")
	public String logout(HttpServletRequest req, RedirectAttributes rttr) {
		HttpSession session = req.getSession();
		session.invalidate();
		logger.info("user logout");
		return "redirect:/";
	}
	
	@PostMapping("/memberIdChk")
	@ResponseBody
	public String memberIdChkPOST(String member_id) throws Exception{
		logger.info("memberIdChk : " + member_id);
		int result = service.idCheck(member_id);
		logger.info("memberIdChk 결과  : "+result);
		if(result != 0) {
			return "fail";
		}else {
			return "success";
		}
	}
}
