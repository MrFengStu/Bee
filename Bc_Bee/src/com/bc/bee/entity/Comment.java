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
 *  评论表
 *	CId（评论表Id）int
 *	TdId（教员Id）int
 *	PcId（家长Id）int
 *	CTime（评论时间）date       
 *	ComCon（评论内容）varchar     255
 *	SatDeg（Satisfaction degree满意度）int
 */
@Entity
@Table(name="comment")
public class Comment {

	private Integer CId;
	private TUser tuser;
	private PUser puser;
	private Date CTime;
	private String ComCon;
	private Integer SatDeg;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getCId() {
		return CId;
	}
	public void setCId(Integer cId) {
		CId = cId;
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
	public Date getCTime() {
		return CTime;
	}
	public void setCTime(Date cTime) {
		CTime = cTime;
	}
	public String getComCon() {
		return ComCon;
	}
	public void setComCon(String comCon) {
		ComCon = comCon;
	}
	public Integer getSatDeg() {
		return SatDeg;
	}
	public void setSatDeg(Integer satDeg) {
		SatDeg = satDeg;
	}
	
}
