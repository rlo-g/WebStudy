package com.model;

public class MemberDTO {
	// 사용자가 정의한 여러 데이터 타입들을 묶어줌
	private String id;
	private String pw;
	private String nick;
	private String email;
	private String phone;
	private String gender;
	private int age;
	
	// 생성자
	public MemberDTO(String id, String pw, String nick, String email, String phone, String gender, int age) {

		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.age = age;
	}
	
	
	// DeleteService에서 사용하기 위한 생성자(오버로딩)
	public MemberDTO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}



	public String getId() {
		return id;
	}

	public String getPw() {
		return pw;
	}

	public String getNick() {
		return nick;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getGender() {
		return gender;
	}

	public int getAge() {
		return age;
	}
	
	
	
	
}
