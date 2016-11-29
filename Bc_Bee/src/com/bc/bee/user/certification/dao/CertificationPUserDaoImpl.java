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
//			System.out.println(parcer.getPcId());
//			System.out.println(parcer.getPuser().getPUId());
			id_num = new String(id_num.getBytes("iso-8859-1"),"utf-8");
			prname = new String(prname.getBytes("iso-8859-1"),"utf-8");
			parcer.setPRName(prname);
			parcer.setIdnum(id_num);
//			System.out.println(parcer.getPRName());
//			System.out.println(parcer.getIdnum());			
			super.update(parcer);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
