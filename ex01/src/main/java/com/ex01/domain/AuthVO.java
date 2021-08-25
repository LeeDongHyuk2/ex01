package com.ex01.domain;

public class AuthVO {
	private String member_id;
	private String auth;
	public String getUserid() {
		return member_id;
	}
	public void setUserid(String member_id) {
		this.member_id = member_id;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	@Override
	public String toString() {
		return "AuthVO [member_id=" + member_id + ", auth=" + auth + "]";
	}	
}
