package com.model;

public class RoyalPasswordData {

	private String userId;
	private String password;
	private String accountType;
	
	public RoyalPasswordData() {

	}

	public RoyalPasswordData(String userId, String password, String accountType) {
		super();
		this.userId = userId;
		this.password = password;
		this.accountType = accountType;
		
	}

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId= userId;
	}

	public String getPassword() {
		 return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getAccountType() {
		return accountType;
	}
	public void setAccountType(String accountType) {
		this.accountType=accountType;
	}
	

	@Override
	public String toString() {
		return "PasswordData [userId=" + userId + ", password=" + password
				+ ", accountType=" + accountType + "]";
	}

}


