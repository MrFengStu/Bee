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
 * 投递箱表
 *	DeId（表Id）int
 *	UId（教员Id外键）int
 *	RlId（家长招聘Id 外键）int
 *	ReId（简历Id 外键）int
 *	State（状态）char
 *	DeTime（投递时间）date
 */
@Entity
@Table(name="delivery")
public class Delivery {

	private Integer DeId;
	private TUser tuser;
	private PUser puser;
	private Integer ReId;
	private char State;
	private Date DeTime;
	private Integer RlId;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getDeId() {
		return DeId;
	}
	public void setDeId(Integer deId) {
		DeId = deId;
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
	public Integer getReId() {
		return ReId;
	}
	public void setReId(Integer reId) {
		ReId = reId;
	}
	public char getState() {
		return State;
	}
	public void setState(char state) {
		State = state;
	}
	public Date getDeTime() {
		return DeTime;
	}
	public void setDeTime(Date deTime) {
		DeTime = deTime;
	}
	public Integer getRlId() {
		return RlId;
	}
	public void setRlId(Integer rlId) {
		RlId = rlId;
	}
	
}
