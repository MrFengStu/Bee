package com.bc.bee.user.login.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.PUser;
import com.framework.BaseDao;

@Repository
public class LoginPUserDaoImpl extends BaseDao<PUser, String> {

	public PUser findByMailAndPwd(String pu_mail, String pu_pwd) {
		try {
			return super.findOne("from PUser pu where pu.PMailbox=? and pu.PUPwd=?", new Object[] { pu_mail, pu_pwd });
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
