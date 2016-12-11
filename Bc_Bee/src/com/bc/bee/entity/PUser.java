package com.bc.bee.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
/**
 *  author：王子凡
 *  日期：2016/11/15
 *  家长用户表
 * 
 *  PUId（家长用户Id）  		
 *	PUName（用户名）
 *	PUPwd（密码）
 *	PMailbox（邮箱）
 */
@Entity
@Table(name="puser")
public class PUser {

	private Integer PUId;
	private String PUName;
	private String PUPwd;
	private String PMailbox;
	private String PMobile;
	private String Pic;
	
	private Parcer parcer;
	private Set<RecInfo> recinfos=new HashSet<RecInfo>(0);
	private Set<Comment> comments=new HashSet<Comment>(0);
	private Set<Delivery> deliverys=new HashSet<Delivery>(0);
	private Set<Invitation> invitations=new HashSet<Invitation>(0);
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getPUId() {
		return PUId;
	}
	public void setPUId(Integer pUId) {
		PUId = pUId;
	}
	public String getPUName() {
		return PUName;
	}
	public void setPUName(String pUName) {
		PUName = pUName;
	}
	public String getPUPwd() {
		return PUPwd;
	}
	public void setPUPwd(String pUPwd) {
		PUPwd = pUPwd;
	}
	public String getPMailbox() {
		return PMailbox;
	}
	public void setPMailbox(String pMailbox) {
		PMailbox = pMailbox;
	}
	
	@OneToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	@PrimaryKeyJoinColumn
	public Parcer getParcer() {
		return parcer;
	}
	public void setParcer(Parcer parcer) {
		this.parcer = parcer;
	}
	
	@OneToMany(mappedBy="puser",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	public Set<RecInfo> getRecinfos() {
		return recinfos;
	}
	public void setRecinfos(Set<RecInfo> recinfos) {
		this.recinfos = recinfos;
	}
	
	@OneToMany(mappedBy="puser",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	public Set<Comment> getComments() {
		return comments;
	}
	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}
	
	@OneToMany(mappedBy="puser",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	public Set<Delivery> getDeliverys() {
		return deliverys;
	}
	public void setDeliverys(Set<Delivery> deliverys) {
		this.deliverys = deliverys;
	}
	
	@OneToMany(mappedBy="puser",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	public Set<Invitation> getInvitations() {
		return invitations;
	}
	public void setInvitations(Set<Invitation> invitations) {
		this.invitations = invitations;
	}
	public String getPMobile() {
		return PMobile;
	}
	public void setPMobile(String pMobile) {
		PMobile = pMobile;
	}
	public String getPic() {
		return Pic;
	}
	public void setPic(String pic) {
		Pic = pic;
	}
	
}
