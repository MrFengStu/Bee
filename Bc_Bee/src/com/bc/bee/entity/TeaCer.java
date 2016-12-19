package com.bc.bee.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * author：贾帅勇
 * 日期：2016/11/15
 * 教员认证表
 * 
 * TcId（表Id）
 *TUId（学生Id 外键）
 *TUName(学生真实姓名)
 *Idnum（身份证号）
 *SIdnum（学生证号）
 */

@Entity
@Table(name="teacer")
public class TeaCer {
	private Integer TcId;
	private TUser tuser;
	private String Idnum;
	private String SIdnum;
	private String TUName;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getTcId() {
		return TcId;
	}
	public void setTcId(Integer tcId) {
		TcId = tcId;
	}
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="TUId")
	public TUser getTuser() {
		return tuser;
	}
	public void setTuser(TUser tuser) {
		this.tuser = tuser;
	}
	
	public String getIdnum() {
		return Idnum;
	}
	public void setIdnum(String idnum) {
		Idnum = idnum;
	}
	public String getSIdnum() {
		return SIdnum;
	}
	public void setSIdnum(String sIdnum) {
		SIdnum = sIdnum;
	}
	public String getTUName() {
		return TUName;
	}
	public void setTUName(String tUName) {
		TUName = tUName;
	}
	
	
}
