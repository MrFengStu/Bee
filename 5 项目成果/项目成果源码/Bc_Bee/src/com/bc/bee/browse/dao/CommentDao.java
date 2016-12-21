package com.bc.bee.browse.dao;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.bc.bee.entity.TUser;
import com.framework.BaseDao;

@Repository
public class CommentDao extends BaseDao<TUser,String>{
	public TUser findStudent(Integer id){
		try {
			Session s = super.getSessionFactory().openSession();
			TUser t= s.get(TUser.class, id);
			s.close();
			return t;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
}
