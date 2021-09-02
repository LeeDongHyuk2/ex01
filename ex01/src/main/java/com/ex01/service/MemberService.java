package com.ex01.service;

import com.ex01.domain.MemberVO;

public interface MemberService {
	// 회원가입
	public void join(MemberVO member);
	// 로그인
	public MemberVO memberLogin(MemberVO member) throws Exception;
	// 아이디 중복 검사
	public int idCheck(String member_id) throws Exception;
}
