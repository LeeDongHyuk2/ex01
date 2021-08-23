package com.ex01.domain;

import java.util.Date;

public class MemberVO {
	private int member_no;
	private int member_type;
	private String member_id;
	private String member_pwd;
	private String member_name;
	private String member_nickname;
	private Date member_birth;
	private String member_gender;
	private String member_address;
	private String member_phone;
	private String member_email;
	private Date member_register_date;
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
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
	public String getMember_nickname() {
		return member_nickname;
	}
	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}
	public Date getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(Date member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_gender() {
		return member_gender;
	}
	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}
	public String getMember_address() {
		return member_address;
	}
	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public Date getMember_register_date() {
		return member_register_date;
	}
	public void setMember_register_date(Date member_register_date) {
		this.member_register_date = member_register_date;
	}
	@Override
	public String toString() {
		return "MemberVO [member_no=" + member_no + ", member_type=" + member_type + ", member_id=" + member_id
				+ ", member_pwd=" + member_pwd + ", member_name=" + member_name + ", member_nickname=" + member_nickname
				+ ", member_birth=" + member_birth + ", member_gender=" + member_gender + ", member_address="
				+ member_address + ", member_phone=" + member_phone + ", member_email=" + member_email
				+ ", member_register_date=" + member_register_date + "]";
	}	
}
