package com.ex01.domain;

import java.util.Date;
import java.util.List;
// 회원 VO
public class MemberVO {
	// ȸ�� ����
	private int member_type;
	// ȸ�� ���̵�
	private String member_id;
	// ȸ�� ��й�ȣ
	private String member_pwd;
	// ȸ�� �̸�
	private String member_name;
	// ȸ�� �������
	private String member_birth;
	// ȸ�� ����
	private String member_gender;
	// ȸ�� ����ó
	private String member_phone;
	// ȸ�� �ּ�
	private String member_address;
	// ȸ�� �̸���
	private String member_email;
	// ȸ�� �����
	private Date member_regdate;
	// ȸ�� �ֱ� ������
	private Date member_updatedate;
	// ȸ�� 
	private boolean member_enabled;
	// ȸ�� ���� ����Ʈ
	private List<AuthVO> authList;
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
	public String getMember_address() {
		return member_address;
	}
	public void setMember_address(String member_address) {
		this.member_address = member_address;
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
	public List<AuthVO> getAuthList() {
		return authList;
	}
	public void setAuthList(List<AuthVO> authList) {
		this.authList = authList;
	}
	@Override
	public String toString() {
		return "MemberVO [member_type=" + member_type + ", member_id=" + member_id + ", member_pwd=" + member_pwd
				+ ", member_name=" + member_name + ", member_birth=" + member_birth + ", member_gender=" + member_gender
				+ ", member_phone=" + member_phone + ", member_address=" + member_address + ", member_email="
				+ member_email + ", member_regdate=" + member_regdate + ", member_updatedate=" + member_updatedate
				+ ", member_enabled=" + member_enabled + ", authList=" + authList + "]";
	}	
}
