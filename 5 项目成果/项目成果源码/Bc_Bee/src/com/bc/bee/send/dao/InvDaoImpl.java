package com.bc.bee.send.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.Invitation;
import com.bc.bee.entity.PUser;
import com.bc.bee.entity.TUser;
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
