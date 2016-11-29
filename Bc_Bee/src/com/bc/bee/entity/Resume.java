package com.bc.bee.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
/*
 *  简历表
 *	ReId（resume 表Id）int
 *	UId（用户表Id 外键）int
 *	Ted （教育经历）varchar    255
 *	Expertise（个人专长）varchar  255
 *	SGrade（所教学生年级）varchar   30
 *	Area（工作区）varchar    255
 *	TeaSubject（授课科目）varchar  30
 *	TeaMode（授课方式）varchar     30
 *	Settle（结算方式）char 
 *	Discount（优惠信息）varchar    30
 *	Brief（个人介绍）varchar     255
 *	Pte（part-time experience兼职经历）
 *	Varchar   255
 *	State（状态）char
 *TeTime 更新时间
 */
@Entity
@Table(name="resume")
public class Resume {

	private Integer ReId;
	private TUser tuser;
	private String Ted;
	private String Expertise;
	private String SGrade;
	private String Area;
	private String TeaSubject;
	private String TeaMode;
	private String Settle;
	private String Discount;
	private String Brief;
	private String Pte;
	private String State;
	private String Salary;
	private String TUName;
	private String ReTime;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getReId() {
		return ReId;
	}
	public void setReId(Integer reId) {
		ReId = reId;
	}
	
	@OneToOne
	@JoinColumn(name="TUId")
	public TUser getTuser() {
		return tuser;
	}
	public void setTuser(TUser tuser) {
		this.tuser = tuser;
	}
	public String getTed() {
		return Ted;
	}
	public void setTed(String ted) {
		Ted = ted;
	}
	public String getExpertise() {
		return Expertise;
	}
	public void setExpertise(String expertise) {
		Expertise = expertise;
	}
	public String getSGrade() {
		return SGrade;
	}
	public void setSGrade(String sGrade) {
		SGrade = sGrade;
	}
	public String getArea() {
		return Area;
	}
	public void setArea(String area) {
		Area = area;
	}
	public String getTeaSubject() {
		return TeaSubject;
	}
	public void setTeaSubject(String teaSubject) {
		TeaSubject = teaSubject;
	}
	public String getTeaMode() {
		return TeaMode;
	}
	public void setTeaMode(String teaMode) {
		TeaMode = teaMode;
	}
	public String getDiscount() {
		return Discount;
	}
	public void setDiscount(String discount) {
		Discount = discount;
	}
	public String getBrief() {
		return Brief;
	}
	public void setBrief(String brief) {
		Brief = brief;
	}
	public String getPte() {
		return Pte;
	}
	public void setPte(String pte) {
		Pte = pte;
	}
	public String getSettle() {
		return Settle;
	}
	public void setSettle(String settle) {
		Settle = settle;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getSalary() {
		return Salary;
	}
	public void setSalary(String salary) {
		Salary = salary;
	}
	public String getTUName() {
		return TUName;
	}
	public void setTUName(String tUName) {
		TUName = tUName;
	}
	public String getReTime() {
		return ReTime;
	}
	public void setReTime(String reTime) {
		ReTime = reTime;
	}
	
}
