package com.sport.entity;

/**
 * 
 * @Description 租房用户
 */
public class Users {

	private int uID;
	private String uName;
	private String uPassword;
	private String uPhoneNumber;
	private String uNickName;
	private Integer age;
	private Double height;
	private Double weight;

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Double getHeight() {
		return height;
	}

	public void setHeight(Double height) {
		this.height = height;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public int getuID() {
		return uID;
	}

	public void setuID(int uID) {
		this.uID = uID;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuPassword() {
		return uPassword;
	}

	public void setuPassword(String uPassword) {
		this.uPassword = uPassword;
	}

	public String getuPhoneNumber() {
		return uPhoneNumber;
	}

	public void setuPhoneNumber(String uPhoneNumber) {
		this.uPhoneNumber = uPhoneNumber;
	}

	public String getuNickName() {
		return uNickName;
	}

	public void setuNickName(String uNickName) {
		this.uNickName = uNickName;
	}

	public Users(int uID, String uName, String uPassword, String uPhoneNumber, String uNickName) {
		super();
		this.uID = uID;
		this.uName = uName;
		this.uPassword = uPassword;
		this.uPhoneNumber = uPhoneNumber;
		this.uNickName = uNickName;
	}

	public Users() {
		super();
	}

	public Users(String uName, String uPassword, String uPhoneNumber, String uNickName) {
		super();
		this.uName = uName;
		this.uPassword = uPassword;
		this.uPhoneNumber = uPhoneNumber;
		this.uNickName = uNickName;
	}

}
