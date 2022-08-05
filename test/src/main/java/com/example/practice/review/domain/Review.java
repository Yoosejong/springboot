package com.example.practice.review.domain;

import java.sql.Date;

public class Review {
	
	private int rv_no;
	private String rv_id;
	private String rv_nickName;
	private String rv_content;
	
	private float rv_score;
	
	private int rv_score1;
	private int rv_score2;
	private int rv_score3;
	private int rv_score4;
	private int rv_score5;
	private Date rv_writeDate;
	private Date rv_updateDate;
	
	public Review() {
		
	}
	
	public Review(int rv_no, String rv_id, String rv_nickName, String rv_content, float rv_score, int rv_score1,
			int rv_score2, int rv_score3, int rv_score4, int rv_score5, Date rv_writeDate, Date rv_updateDate) {
		super();
		this.rv_no = rv_no;
		this.rv_id = rv_id;
		this.rv_nickName = rv_nickName;
		this.rv_content = rv_content;
		this.rv_score = rv_score;
		this.rv_score1 = rv_score1;
		this.rv_score2 = rv_score2;
		this.rv_score3 = rv_score3;
		this.rv_score4 = rv_score4;
		this.rv_score5 = rv_score5;
		this.rv_writeDate = rv_writeDate;
		this.rv_updateDate = rv_updateDate;
	}

	public int getRv_no() {
		return rv_no;
	}

	public void setRv_no(int rv_no) {
		this.rv_no = rv_no;
	}

	public String getRv_id() {
		return rv_id;
	}

	public void setRv_id(String rv_id) {
		this.rv_id = rv_id;
	}

	public String getRv_nickName() {
		return rv_nickName;
	}

	public void setRv_nickName(String rv_nickName) {
		this.rv_nickName = rv_nickName;
	}

	public String getRv_content() {
		return rv_content;
	}

	public void setRv_content(String rv_content) {
		this.rv_content = rv_content;
	}

	public float getRv_score() {
		return rv_score;
	}

	public void setRv_score(float rv_score) {
		this.rv_score = rv_score;
	}

	public int getRv_score1() {
		return rv_score1;
	}

	public void setRv_score1(int rv_score1) {
		this.rv_score1 = rv_score1;
	}

	public int getRv_score2() {
		return rv_score2;
	}

	public void setRv_score2(int rv_score2) {
		this.rv_score2 = rv_score2;
	}

	public int getRv_score3() {
		return rv_score3;
	}

	public void setRv_score3(int rv_score3) {
		this.rv_score3 = rv_score3;
	}

	public int getRv_score4() {
		return rv_score4;
	}

	public void setRv_score4(int rv_score4) {
		this.rv_score4 = rv_score4;
	}

	public int getRv_score5() {
		return rv_score5;
	}

	public void setRv_score5(int rv_score5) {
		this.rv_score5 = rv_score5;
	}

	public Date getRv_writeDate() {
		return rv_writeDate;
	}

	public void setRv_writeDate(Date rv_writeDate) {
		this.rv_writeDate = rv_writeDate;
	}

	public Date getRv_updateDate() {
		return rv_updateDate;
	}

	public void setRv_updateDate(Date rv_updateDate) {
		this.rv_updateDate = rv_updateDate;
	}

	@Override
	public String toString() {
		return "Review [rv_no=" + rv_no + ", rv_id=" + rv_id + ", rv_nickName=" + rv_nickName + ", rv_content="
				+ rv_content + ", rv_score=" + rv_score + ", rv_score1=" + rv_score1 + ", rv_score2=" + rv_score2
				+ ", rv_score3=" + rv_score3 + ", rv_score4=" + rv_score4 + ", rv_score5=" + rv_score5
				+ ", rv_writeDate=" + rv_writeDate + ", rv_updateDate=" + rv_updateDate + "]";
	}
}