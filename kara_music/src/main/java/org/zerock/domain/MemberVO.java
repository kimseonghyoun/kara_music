package org.zerock.domain;

import java.util.Date;

public class MemberVO {
	
	private String user_id;
	private String user_pwd;
	private String user_nm;
	private String email;
	private String phone;
	private Date joindate;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_nm() {
		return user_nm;
	}
	public void setUser_nm(String user_nm) {
		this.user_nm = user_nm;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	@Override
	public String toString() {
		return "MemberVO [user_id=" + user_id + ", user_pwd=" + user_pwd + ", user_nm=" + user_nm + ", email=" + email
				+ ", phone=" + phone + ", joindate=" + joindate + "]";
	}	
}
