package com.bc.bee.user.upload.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.PUser;
import com.framework.BaseDao;

@Repository
public class UploadDaoImpl extends BaseDao<PUser, String> {

	public void upload(Integer PUId,String filePath){
		try {
			PUser puser =  super.findOne("from PUser pu where pu.PUId=?", new Object[] {PUId});
			puser.setPic(filePath);
			super.update(puser);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
