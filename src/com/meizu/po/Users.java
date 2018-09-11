package com.meizu.po;

public class Users {
	private int userid;
	private String username;
	private String password;
	private String realname;
	private String sex;
	private int age;
	private String residence;
	private String email;
	private String tel;

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getResidence() {
		return residence;
	}

	public void setResidence(String residence) {
		this.residence = residence;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	@Override
	public String toString() {
		return "Users [userid=" + userid + ", username=" + username + ", password=" + password + ", realname="
				+ realname + ", sex=" + sex + ", age=" + age + ", residence=" + residence + ", email=" + email
				+ ", tel=" + tel + "]";
	}

	public Users(int userid, String username, String password, String realname, String sex, int age, String residence,
			String email, String tel) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.realname = realname;
		this.sex = sex;
		this.age = age;
		this.residence = residence;
		this.email = email;
		this.tel = tel;
	}

	public Users() {
		super();
	}

}
