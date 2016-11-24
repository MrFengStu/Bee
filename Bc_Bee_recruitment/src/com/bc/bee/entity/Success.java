package com.bc.bee.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/*
 * 交易成功表
 *	TrId（交易表Id）int
 *	UId（教员Id）int
 *	RlId（招聘表Id）int
 */
@Entity
@Table(name="success")
public class Success {

	private Integer TrId;
	private Integer PUId;
	private Integer TUId;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getTrId() {
		return TrId;
	}
	public void setTrId(Integer trId) {
		TrId = trId;
	}
	public Integer getPUId() {
		return PUId;
	}
	public void setPUId(Integer pUId) {
		PUId = pUId;
	}
	public Integer getTUId() {
		return TUId;
	}
	public void setTUId(Integer tUId) {
		TUId = tUId;
	}
	
}
