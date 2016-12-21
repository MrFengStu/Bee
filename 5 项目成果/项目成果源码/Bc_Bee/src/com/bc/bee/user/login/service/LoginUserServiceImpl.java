package com.bc.bee.user.login.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.PUser;
import com.bc.bee.entity.TUser;
import com.bc.bee.user.login.dao.LoginPUserDaoImpl;
import com.bc.bee.user.login.dao.LoginTUserDaoImpl;

@Service
@Transactional(readOnly = true)
public class LoginUserServiceImpl {
	@Resource
	private LoginTUserDaoImpl loginTUserDaoImpl;
	
	@Resource
	private LoginPUserDaoImpl loginpuserdaoimpl;

	public TUser Tu_login(String tu_mail, String tu_pwd) {
		return this.loginTUserDaoImpl.findByMailAndPwd(tu_mail, tu_pwd);
	}
	public PUser Pu_login(String pu_mail, String pu_pwd) {
		return this.loginpuserdaoimpl.findByMailAndPwd(pu_mail, pu_pwd);
	}
}
