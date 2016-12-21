package com.bc.bee.user.register.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.Resume;
import com.bc.bee.entity.TDeInfo;
import com.bc.bee.entity.TUser;
import com.bc.bee.entity.TeaCer;
import com.framework.BaseDao;

@Repository
public class RegisterTUserDaoImpl extends BaseDao<TUser, String> {

	public TUser findByTUName(String name){
		TUser tuser = null;
		try{
			tuser = super.findOne("from TUser lu where lu.TUName=?", new Object[]{name});
			return tuser;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public TUser findByTUEmail(String email){
		TUser tuser = null;
		try{
			tuser = super.findOne("from TUser lu where lu.TMailbox=?", new Object[]{email});
			return tuser;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public void save(TUser tuser){
		try {
			TeaCer teacer = new TeaCer();
			TDeInfo tdeinfo = new TDeInfo();
			Resume resume = new Resume();
			tuser.setTeacer(teacer);
			tuser.setTdeinfo(tdeinfo);
			tuser.setResume(resume);
			
			teacer.setTuser(tuser);
			tdeinfo.setTuser(tuser);
			resume.setTuser(tuser);
			super.save(tuser);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
