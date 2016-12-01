package com.bc.bee.send.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bc.bee.entity.Invitation;
import com.bc.bee.entity.PUser;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.Resume;
import com.bc.bee.entity.TDeInfo;
import com.bc.bee.entity.TUser;
import com.bc.bee.entity.TeaCer;
import com.framework.BaseDao;

@Repository
public class InvDaoImpl extends BaseDao<Invitation, String> {
 
	public void save(Invitation invitation, PUser puser, TUser tuser){
		try {

			 
			//tuser.setInvitations((Set<Invitation>) invitation); 
			
			//puser.setInvitations((Set<Invitation>) invitation); 
			
			//Set<Invitation> setPUser = null;
			//setPUser.add(invitation);
			//tuser.setInvitations(setPUser);
			
			super.save(invitation);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	

}
