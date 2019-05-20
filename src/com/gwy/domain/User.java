package com.gwy.domain;

import lombok.Getter;
import lombok.Setter;

@Setter@Getter
public class User {
	private String uid;
	private String username;
	private String password;
	private String phone;
	private String birthdate;
	private String sex;
	private String feeling;
	private String orientation;
	private String constellation;
	private String email;
	private String autograph;
	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password=" + password + ", phone=" + phone
				+ ", birthdate=" + birthdate + ", sex=" + sex + ", feeling=" + feeling + ", orientation=" + orientation
				+ ", constellation=" + constellation + ", email=" + email + ", autograph=" + autograph + "]";
	}

}
