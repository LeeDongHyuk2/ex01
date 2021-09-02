package com.ex01.mapper;

import com.ex01.domain.MemberVO;

public interface MemberMapper {
	// 회원가입
	public void join(MemberVO member);
	// 로그인
	public MemberVO memberLogin(MemberVO member);
	// 아이디 중복 검사
	public int idCheck(String member_id);
}
