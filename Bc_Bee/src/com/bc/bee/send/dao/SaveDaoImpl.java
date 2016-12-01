package com.bc.bee.send.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bc.bee.entity.Invitation;
import com.bc.bee.entity.PUser;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.Resume;
import com.bc.bee.entity.TDeInfo;
import com.bc.bee.entity.TUser;
import com.bc.bee.entity.TeaCer;
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
