package com.ex01.service;

import com.ex01.domain.MemberVO;

public interface MemberService {
	// 회원가입
	public void join(MemberVO member);
	// 로그인
	public MemberVO login(MemberVO member);
}
