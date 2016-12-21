package com.bc.bee.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
/*
 * 教员详细信息表
 * TdId（Teacher details表Id）Int
 *  UId（用户Id 外键）Int
 *	TName（教员姓名）varchar    30
 *	TSex （教员性别） char   
 *	TCollege （教员学校）varchar   30
 *	T Major  （教员专业）varchar   30
 *	TGrade（教员年级）varchar      30
 *	TContactInfo（联系方式）varchar   30
 *	TMailbox（邮箱）varchar//可以是用户表邮箱外键    50
 *	TAddress（居住地址）varchar     255
 *
 */
@Entity
@Table(name="tdeinfo")
public class TDeInfo {

	private Integer TDId;
	private TUser tuser;
	private String TName;
	private String TSex;
	private String TCollege;
	private String TMajor;
	private String TGrade;
	private String TContactInfo;
	private String TMailbox;
	private String TAddress;
	private Integer Count;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getTDId() {
		return TDId;
	}
	public void setTDId(Integer tDId) {
		TDId = tDId;
	}
	
	@OneToOne
	@JoinColumn(name="TUId")
	public TUser getTuser() {
		return tuser;
	}
	public void setTuser(TUser tuser) {
		this.tuser = tuser;
	}
	public String getTName() {
		return TName;
	}
	public void setTName(String tName) {
		TName = tName;
	}
	public String getTSex() {
		return TSex;
	}
	public void setTSex(String tSex) {
		TSex = tSex;
	}
	public String getTCollege() {
		return TCollege;
	}
	public void setTCollege(String tCollege) {
		TCollege = tCollege;
	}
	public String getTMajor() {
		return TMajor;
	}
	public void setTMajor(String tMajor) {
		TMajor = tMajor;
	}
	public String getTGrade() {
		return TGrade;
	}
	public void setTGrade(String tGrade) {
		TGrade = tGrade;
	}
	public String getTContactInfo() {
		return TContactInfo;
	}
	public void setTContactInfo(String tContactInfo) {
		TContactInfo = tContactInfo;
	}
	public String getTMailbox() {
		return TMailbox;
	}
	public void setTMailbox(String tMailbox) {
		TMailbox = tMailbox;
	}
	public String getTAddress() {
		return TAddress;
	}
	public void setTAddress(String tAddress) {
		TAddress = tAddress;
	}
	public Integer getCount() {
		return Count;
	}
	public void setCount(Integer count) {
		Count = count;
	}
	
}
