package com.bc.bee.user.upload.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.PUser;
import com.bc.bee.entity.TUser;
import com.framework.BaseDao;

@Repository
public class UploadTUserDaoImpl extends BaseDao<TUser, String> {

	public void upload(Integer TUId,String filePath){
		try {
			TUser tuser =  super.findOne("from TUser tu where tu.TUId=?", new Object[] {TUId});
			tuser.setPic(filePath);
			super.update(tuser);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
