package com.ex01.mapper;

import com.ex01.domain.MemberVO;

public interface MemberMapper {
	public void join(MemberVO member);	
	public MemberVO read(String member_id);
}
