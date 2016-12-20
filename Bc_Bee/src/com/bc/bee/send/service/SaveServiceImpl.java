package com.bc.bee.send.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.Invitation;
import com.bc.bee.entity.PUser;
import com.bc.bee.entity.TUser;
import com.bc.bee.send.dao.InvDaoImpl;
import com.bc.bee.send.dao.SaveDaoImpl;

@Service
@Transactional(readOnly=false)
public class SaveServiceImpl {
	
	@Resource
	private SaveDaoImpl saveDaoImpl;
 
	@Resource
	private InvDaoImpl invDaoImpl;
 
	public java.util.List<TUser> findByName(String TUName){
		System.out.println("222"+TUName);
		java.util.List<TUser> list = saveDaoImpl.findByName(TUName);
		return list;
	}
	public void save(Invitation invitation,PUser puser,TUser tuser){
		this.invDaoImpl.save(invitation, puser, tuser);
	}
	

}
