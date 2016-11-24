package com.bc.bee.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

/**
 * author：王子凡
 *  日期：2016/11/15
 *  学生用户表
 * 
 *  TUId（学生用户Id）  		
 *	TUName（用户名）
 *	TUPwd（密码）
 *	TMailbox（邮箱）
 */

@Entity
@Table(name="tuser")
public class TUser {
	private Integer TUId;
	private String TUName;
	private String TUpwd;
	private String TMailbox;
	
	private TeaCer teacer;
	private TDeInfo tdeinfo;
	private Resume resume;
	private Set<Comment> comments=new HashSet<Comment>(0);
	private Set<Delivery> deliverys=new HashSet<Delivery>(0);
	private Set<Invitation> invitations=new HashSet<Invitation>(0);

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getTUId() {
		return TUId;
	}

	public void setTUId(Integer tUId) {
		TUId = tUId;
	}

	public String getTUName() {
		return TUName;
	}

	public void setTUName(String tUName) {
		TUName = tUName;
	}

	public String getTUpwd() {
		return TUpwd;
	}

	public void setTUpwd(String tUpwd) {
		TUpwd = tUpwd;
	}

	public String getTMailbox() {
		return TMailbox;
	}

	public void setTMailbox(String tMailbox) {
		TMailbox = tMailbox;
	}

	@OneToOne(mappedBy = "tuser",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	public TeaCer getTeacer() {
		return teacer;
	}

	public void setTeacer(TeaCer teacer) {
		this.teacer = teacer;
	}

	@OneToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	@PrimaryKeyJoinColumn
	public TDeInfo getTdeinfo() {
		return tdeinfo;
	}

	public void setTdeinfo(TDeInfo tdeinfo) {
		this.tdeinfo = tdeinfo;
	}

	@OneToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	@PrimaryKeyJoinColumn
	public Resume getResume() {
		return resume;
	}

	public void setResume(Resume resume) {
		this.resume = resume;
	}

	@OneToMany(mappedBy="tuser",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	public Set<Comment> getComments() {
		return comments;
	}

	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}

	@OneToMany(mappedBy="tuser",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	public Set<Delivery> getDeliverys() {
		return deliverys;
	}

	public void setDeliverys(Set<Delivery> deliverys) {
		this.deliverys = deliverys;
	}

	@OneToMany(mappedBy="tuser",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	public Set<Invitation> getInvitations() {
		return invitations;
	}

	public void setInvitations(Set<Invitation> invitations) {
		this.invitations = invitations;
	}

	
	
}
