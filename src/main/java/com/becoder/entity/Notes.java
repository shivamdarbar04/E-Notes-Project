package com.becoder.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;


@Entity
public class Notes {
    
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String date;
	
	@Column(length = 50)
	private String title;
	
	@Column(length = 500)
	private String discription;
	
	@ManyToOne
	private User user;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Notes [id=" + id + ", date=" + date + ", title=" + title + ", discription=" + discription + ", user="
				+ user + "]";
	}

	
	
	
	
}
