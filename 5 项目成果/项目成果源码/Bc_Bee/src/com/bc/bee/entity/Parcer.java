package com.bc.bee.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
/*
 * 家长认证表
 *	PcId（表Id）
 *	UId（用户Id外键）
 *	Idnum（身份证号）
 *	PRName（真实姓名）
 */
@Entity
@Table(name="parcer")
public class Parcer {

	private Integer PcId;
	private PUser puser;
	private String Idnum;
	private String PRName;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getPcId() {
		return PcId;
	}
	public void setPcId(Integer pcId) {
		PcId = pcId;
	}
	
	@OneToOne
	@JoinColumn(name="PUId")
	public PUser getPuser() {
		return puser;
	}
	public void setPuser(PUser puser) {
		this.puser = puser;
	}
	public String getIdnum() {
		return Idnum;
	}
	public void setIdnum(String idnum) {
		Idnum = idnum;
	}
	public String getPRName() {
		return PRName;
	}
	public void setPRName(String pRName) {
		PRName = pRName;
	}
	
}
