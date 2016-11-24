package com.bc.bee.search.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bc.bee.entity.RecInfo;
import com.bc.framework.BaseDao;

@Repository
public class IndexserDao extends BaseDao<RecInfo, String>{
	
	public  List<RecInfo> findByName(String name) {
		Session u = super.getSessionFactory().openSession();
		try{
			Query query = u.createQuery("from RecInfo where JobTitle = %name%");
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
