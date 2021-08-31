package com.ex01.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.ex01.controller.MemberController;
import com.ex01.domain.MemberVO;

@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class MemberMapperTests {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	private MemberMapper mapper;
	
	@Test
	public void memberIdChk() throws Exception{
		String id = "ldh11871";
		String id2 = "admin";
		mapper.idCheck(id);
		mapper.idCheck(id2);
	}
}
