package com.model;

public class MemberDTO {

	// 입력받은 네 개의 데이터를 하나의 데이터로 묶어서 전달하기 위해 DTO(VO) 생성
	private String email;
	private String pw;
	private String phone;
	private String addr;
	
	
	// DTO 내 데이터 유무를 빠르게 확인 가능
	@Override
	public String toString() {
		return "MessageDTO [email=" + email + ", pw=" + pw + ", phone=" + phone + ", addr=" + addr + "]";
	}
	
	
	// 중복정의 오버로딩
	public MemberDTO(String email, String pw) {
		this.email = email;
		this.pw = pw;
	}



	// 객체 생성 시 무조건 4개의 데이터를 입력받는 생성자 만들기
	public MemberDTO(String email, String pw, String phone, String addr) {
		this.email = email;
		this.pw = pw;
		this.phone = phone;
		this.addr = addr;
	}
	



	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
	
}
