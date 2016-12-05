package com.bc.bee.user.certification.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.TUser;
import com.bc.bee.entity.TeaCer;
import com.framework.BaseDao;

@Repository
public class CertificationTUserDaoImpl extends BaseDao<TeaCer, String> {
		
	public void save(TUser tuser, String id_num, String sid_num, String name) {
		try {
			TeaCer teacer = super.findOne("from TeaCer tea where tea.tuser.TUId=?", new Object[] { tuser.getTUId() });
			teacer.setTUName(name);
			teacer.setIdnum(id_num);
			teacer.setSIdnum(sid_num);			
			super.update(teacer);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}