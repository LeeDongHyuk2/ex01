package com.ex01.domain;

import java.util.Date;
// 회원 VO
public class MemberVO {
	// 회원 구분
	private int member_type;
	// 회원 아이디
	private String member_id;
	// 회원 비밀번호
	private String member_pwd;
	// 회원 이름
	private String member_name;
	// 회원 생년월일
	private String member_birth;
	// 회원 성별
	private String member_gender;
	// 회원 전화번호
	private String member_phone;
	// 회원 우편번호
	private String member_addr1;
	// 회원 주소
	private String member_addr2;
	// 회원 상세 주소
	private String member_addr3;
	// 회원 이메일
	private String member_email;
	// 회원 등록날짜
	private Date member_regdate;
	// 회원 정보수정날짜
	private Date member_updatedate;
	// 회원 아이디사용유무
	private boolean member_enabled;
	// ȸ�� ���� ����Ʈ
	public int getMember_type() {
		return member_type;
	}
	public void setMember_type(int member_type) {
		this.member_type = member_type;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pwd() {
		return member_pwd;
	}
	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_gender() {
		return member_gender;
	}
	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_addr1() {
		return member_addr1;
	}
	public void setMember_addr1(String member_addr1) {
		this.member_addr1 = member_addr1;
	}
	public String getMember_addr2() {
		return member_addr2;
	}
	public void setMember_addr2(String member_addr2) {
		this.member_addr2 = member_addr2;
	}
	public String getMember_addr3() {
		return member_addr3;
	}
	public void setMember_addr3(String member_addr3) {
		this.member_addr3 = member_addr3;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public Date getMember_regdate() {
		return member_regdate;
	}
	public void setMember_regdate(Date member_regdate) {
		this.member_regdate = member_regdate;
	}
	public Date getMember_updatedate() {
		return member_updatedate;
	}
	public void setMember_updatedate(Date member_updatedate) {
		this.member_updatedate = member_updatedate;
	}
	public boolean isMember_enabled() {
		return member_enabled;
	}
	public void setMember_enabled(boolean member_enabled) {
		this.member_enabled = member_enabled;
	}
	@Override
	public String toString() {
		return "MemberVO [member_type=" + member_type + ", member_id=" + member_id + ", member_pwd=" + member_pwd
				+ ", member_name=" + member_name + ", member_birth=" + member_birth + ", member_gender=" + member_gender
				+ ", member_phone=" + member_phone + ", member_addr1=" + member_addr1 + ", member_addr2=" + member_addr2
				+ ", member_addr3=" + member_addr3 + ", member_email=" + member_email + ", member_regdate="
				+ member_regdate + ", member_updatedate=" + member_updatedate + ", member_enabled=" + member_enabled
				+ "]";
	}
	
}
