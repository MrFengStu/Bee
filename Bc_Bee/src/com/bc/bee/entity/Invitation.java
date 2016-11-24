package com.bc.bee.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
/*
 *  邀请函表
 *	InId（邀请表Id） int
 *	UId（教员Id 外键）int
 *	RIId（招聘表Id 外键）int
 *	InTime（邀请时间）date
 *	State（状态）varchar
 */
@Entity
@Table(name="invitation")
public class Invitation {

	private Integer InId;
	private TUser tuser;
	private PUser puser;
	private Date InTime;
	private char State;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getInId() {
		return InId;
	}
	public void setInId(Integer inId) {
		InId = inId;
	}
	
	@ManyToOne
	@JoinColumn(name="TUId")
	public TUser getTuser() {
		return tuser;
	}
	public void setTuser(TUser tuser) {
		this.tuser = tuser;
	}
	
	@ManyToOne
	@JoinColumn(name="PUId")
	public PUser getPuser() {
		return puser;
	}
	public void setPuser(PUser puser) {
		this.puser = puser;
	}
	public Date getInTime() {
		return InTime;
	}
	public void setInTime(Date inTime) {
		InTime = inTime;
	}
	public char getState() {
		return State;
	}
	public void setState(char state) {
		State = state;
	}
	
}
