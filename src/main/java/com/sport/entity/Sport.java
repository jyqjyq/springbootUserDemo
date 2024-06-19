package com.sport.entity;

import java.util.Date;

public class Sport {
	private int hID;
	private String sportName;
	private String publisher;
	private Date publishTime;
	public int gethID() {
		return hID;
	}
	public void sethID(int hID) {
		this.hID = hID;
	}
	public String getSportName() {
		return sportName;
	}
	public void setSportName(String sportName) {
		this.sportName = sportName;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public Date getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(Date publishTime) {
		this.publishTime = publishTime;
	}
	public Sport(String sportName, String publisher, Date publishTime) {
		super();
		this.sportName = sportName;
		this.publisher = publisher;
		this.publishTime = publishTime;
	}
	public Sport(int hID, String sportName, String publisher, Date publishTime) {
		super();
		this.hID = hID;
		this.sportName = sportName;
		this.publisher = publisher;
		this.publishTime = publishTime;
	}

	public Sport() {
		super();
	}
}
