package com.bc.bee.user.login.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.TUser;
import com.framework.BaseDao;

@Repository
public class LoginTUserDaoImpl extends BaseDao<TUser, String> {

	public TUser findByMailAndPwd(String tu_mail, String tu_pwd) {
		try {
			return super.findOne("from TUser tu where tu.TMailbox=? and tu.TUpwd=?", new Object[] { tu_mail, tu_pwd });
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
