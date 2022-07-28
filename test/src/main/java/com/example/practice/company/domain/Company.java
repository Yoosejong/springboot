package com.example.practice.company.domain;

import java.sql.Date;

public class Company {
	
	private int cm_no;
	private String cm_name;
	private String cm_content;
	private String cm_percent;
	private Date cm_deadline;
	private String cm_job;
	private String cm_career;
	private String cm_careerType;
	private String cm_salary;
	private String cm_skill;
	private String cm_imageLink;
	
	public Company() {
		
	}
	
	public Company(int cm_no, String cm_name, String cm_content, String cm_percent, Date cm_deadline, String cm_job, String cm_career,
			String cm_careerType, String cm_salary, String cm_skill, String cm_imageLink) {
		super();
		this.cm_no = cm_no;
		this.cm_name = cm_name;
		this.cm_content = cm_content;
		this.cm_percent = cm_percent;
		this.cm_deadline = cm_deadline;
		this.cm_job = cm_job;
		this.cm_career = cm_career;
		this.cm_careerType = cm_careerType;
		this.cm_salary = cm_salary;
		this.cm_skill = cm_skill;
		this.cm_imageLink = cm_imageLink;
	}

	public int getCm_no() {
		return cm_no;
	}

	public void setCm_no(int cm_no) {
		this.cm_no = cm_no;
	}

	public String getCm_name() {
		return cm_name;
	}

	public void setCm_name(String cm_name) {
		this.cm_name = cm_name;
	}

	public String getCm_content() {
		return cm_content;
	}

	public void setCm_content(String cm_content) {
		this.cm_content = cm_content;
	}

	public String getCm_percent() {
		return cm_percent;
	}

	public void setCm_percent(String cm_percent) {
		this.cm_percent = cm_percent;
	}

	public Date getCm_deadline() {
		return cm_deadline;
	}

	public void setCm_deadline(Date cm_deadline) {
		this.cm_deadline = cm_deadline;
	}

	public String getCm_job() {
		return cm_job;
	}

	public void setCm_job(String cm_job) {
		this.cm_job = cm_job;
	}

	public String getCm_career() {
		return cm_career;
	}

	public void setCm_career(String cm_career) {
		this.cm_career = cm_career;
	}

	public String getCm_careerType() {
		return cm_careerType;
	}

	public void setCm_careerType(String cm_careerType) {
		this.cm_careerType = cm_careerType;
	}

	public String getCm_salary() {
		return cm_salary;
	}

	public void setCm_salary(String cm_salary) {
		this.cm_salary = cm_salary;
	}

	public String getCm_skill() {
		return cm_skill;
	}

	public void setCm_skill(String cm_skill) {
		this.cm_skill = cm_skill;
	}

	public String getCm_imageLink() {
		return cm_imageLink;
	}

	public void setCm_imageLink(String cm_imageLink) {
		this.cm_imageLink = cm_imageLink;
	}

	@Override
	public String toString() {
		return "Company [cm_no=" + cm_no + ", cm_name=" + cm_name + ", cm_content=" + cm_content + ", cm_percent="
				+ cm_percent + ", cm_deadline=" + cm_deadline + ", cm_job=" + cm_job + ", cm_career=" + cm_career
				+ ", cm_careerType=" + cm_careerType + ", cm_salary=" + cm_salary + ", cm_skill=" + cm_skill
				+ ", cm_imageLink=" + cm_imageLink + "]";
	}
}