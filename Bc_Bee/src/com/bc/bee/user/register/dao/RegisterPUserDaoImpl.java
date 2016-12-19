package com.bc.bee.user.register.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.PUser;
import com.bc.bee.entity.Parcer;
import com.framework.BaseDao;

@Repository
public class RegisterPUserDaoImpl extends BaseDao<PUser, String> {
	
	public PUser findByPUName(String name){
		PUser puser = null;
		try{
			puser = super.findOne("from PUser lu where lu.PUName=?", new Object[]{name});
			return puser;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public PUser findByPUEmail(String email){
		PUser puser = null;
		try{
			puser = super.findOne("from PUser lu where lu.PMailbox=?", new Object[]{email});
			return puser;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public void save(PUser puser){
		try {
			Parcer parcer = new Parcer();
			puser.setParcer(parcer);
			parcer.setPuser(puser);
			super.save(puser);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
