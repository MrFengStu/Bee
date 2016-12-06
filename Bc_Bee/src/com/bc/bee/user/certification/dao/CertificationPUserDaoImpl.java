package com.bc.bee.user.certification.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.PUser;
//import com.bc.bee.entity.PUser;
import com.bc.bee.entity.Parcer;
import com.framework.BaseDao;

@Repository
public class CertificationPUserDaoImpl extends BaseDao<Parcer, String> {
	public void save(PUser puser, String id_num, String prname) {
		try {
			Parcer parcer = super.findOne("from Parcer pa where pa.puser.PUId=?", new Object[] { puser.getPUId() });
			parcer.setPRName(prname);
			parcer.setIdnum(id_num);		
			super.update(parcer);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
