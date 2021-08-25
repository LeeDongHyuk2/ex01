package com.ex01.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ex01.controller.MemberController;
import com.ex01.domain.MemberVO;
import com.ex01.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{
	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public void join(MemberVO member) {
		// ȸ������(join) ������
		logger.info("member join-" + member);
		mapper.join(member);
	}

	@Override
	public void login(MemberVO Member) {
		// TODO Auto-generated method stub
		
	}
}