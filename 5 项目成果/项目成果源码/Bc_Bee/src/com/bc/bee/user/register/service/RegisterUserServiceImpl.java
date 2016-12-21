package com.bc.bee.user.register.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bc.bee.entity.PUser;
import com.bc.bee.entity.TUser;
import com.bc.bee.user.register.dao.RegisterPUserDaoImpl;
import com.bc.bee.user.register.dao.RegisterTUserDaoImpl;

@Service
public class RegisterUserServiceImpl {

	@Resource
	private RegisterTUserDaoImpl registertuserdaoimpl;
	
	@Resource
	private RegisterPUserDaoImpl registerpuserdaoimpl;
	
	public void registerTUser(TUser tuser){
		this.registertuserdaoimpl.save(tuser);
	}
	public void registerPUser(PUser puser){
		this.registerpuserdaoimpl.save(puser);
	}
	public PUser findPUserName(String name){
		PUser puser = null;
		puser = this.registerpuserdaoimpl.findByPUName(name);
		return puser;
	}
	public PUser findPUserEmail(String email){
		PUser puser = null;
		puser = this.registerpuserdaoimpl.findByPUEmail(email);
		return puser;
	}
	public TUser findTUserName(String name){
		TUser tuser = null;
		tuser = this.registertuserdaoimpl.findByTUName(name);
		return tuser;
	}
	public TUser findTUserEmail(String email){
		TUser tuser = null;
		tuser = this.registertuserdaoimpl.findByTUEmail(email);
		return tuser;
	}
}
