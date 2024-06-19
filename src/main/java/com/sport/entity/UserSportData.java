package com.sport.entity;

import java.util.List;

public class UserSportData {
	private int code;

	private String msg;

	private int count;

	private List<Sport> data;

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public List<Sport> getData() {
		return data;
	}

	public void setData(List<Sport> data) {
		this.data = data;
	}

	public UserSportData(String msg, int count, List<Sport> data) {
		super();
		this.msg = msg;
		this.count = count;
		this.data = data;
	}

	public UserSportData(int code, String msg, int count, List<Sport> data) {
		super();
		this.code = code;
		this.msg = msg;
		this.count = count;
		this.data = data;
	}

	public UserSportData() {
		super();
	}
}
