package com.bc.bee.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

/*
 *  热门搜索表
 *	HId（热门搜索表Id）int
 *	Including（搜索内容）varchar
 *	Countn（搜索数量）int
 */
@Entity
@Table(name="hotsearch")
public class Hotsearch {
	
	private Integer HId;
	private String Including;
	private Integer Countn;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getHId() {
		return HId;
	}
	public void setHId(Integer hId) {
		HId = hId;
	}
	public String getIncluding() {
		return Including;
	}
	public void setIncluding(String including) {
		Including = including;
	}
	public Integer getCountn() {
		return Countn;
	}
	public void setCountn(Integer countn) {
		Countn = countn;
	}
}
