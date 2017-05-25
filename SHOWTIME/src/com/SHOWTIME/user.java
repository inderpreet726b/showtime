package com.SHOWTIME;

public class user {
   String email,name,password,mobile;
   user(String email,String password,String name,String mobile)
   {  this.email=email;
   this.name=name;
   this.password=password;
   
   this.mobile=mobile;	
	}
	public String getemail() {
		return email;
	}

	public void setemail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

		public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	

}
