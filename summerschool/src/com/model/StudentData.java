package com.model;

public class StudentData {

	private String libid;
	private String firstName;
	private String middleName;
	private String lastName;
	private String dob;
	private String doa;
	private String email;
	private String phone;
	private String address;
	private String fatherName;
	private String pin;
	private String branch;

	public StudentData() {

	}

	public StudentData(String libid, String firstName, String middleName,
			String lastName, String dob, String doa, String email,
			String phone, String address, String fatherName, String pin,
			String branch) {
		super();
		this.libid = libid;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.dob = dob;
		this.doa = doa;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.fatherName = fatherName;
		this.pin = pin;
		this.branch = branch;
	}

	public String getLibid() {
		return libid;
	}

	public void setLibid(String libid) {
		this.libid = libid;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getDoa() {
		return doa;
	}

	public void setDoa(String doa) {
		this.doa = doa;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	@Override
	public String toString() {
		return "StudentData [libid=" + libid + ", firstName=" + firstName
				+ ", middleName=" + middleName + ", lastName=" + lastName
				+ ", dob=" + dob + ", doa=" + doa + ", email=" + email
				+ ", phone=" + phone + ", address=" + address + ", fatherName="
				+ fatherName + ", pin=" + pin + ", branch=" + branch + "]";
	}

}


