package com.bc.bee.send.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.bc.bee.entity.TUser;
import com.framework.BaseDao;

@Repository
public class SaveDaoImpl extends BaseDao<TUser, String> {
	
	public  List<TUser> findByName(String TUName) {
		Session u = super.getSessionFactory().openSession();
		System.out.println(TUName);
		try{ 
			Query query = u.createQuery("from TUser where TUName = '"+TUName+"'");

			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}finally{
			u.close();
		}
	
	}
	
	
	 
	
	
	
	
	

}
