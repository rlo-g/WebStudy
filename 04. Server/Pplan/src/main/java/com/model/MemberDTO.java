package com.model;

public class MemberDTO {
	private String id;
	private String pw;
	private String nick;
	private String email;
	
	
	public MemberDTO(String id, String pw, String nick, String email) {
		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.email = email;
	}


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


	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pw=" + pw + ", nick=" + nick + ", email=" + email + "]";
	}
	
	
	
}
