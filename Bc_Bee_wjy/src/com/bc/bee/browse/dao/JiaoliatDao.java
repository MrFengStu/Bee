package com.bc.bee.browse.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.bc.bee.entity.Resume;
import com.bc.framework.BaseDao;

@Repository
public class JiaoliatDao extends BaseDao<Resume, String> {
	
	public  List<Resume> findAll() {
		Session u = super.getSessionFactory().openSession();
		try{
			Query query = u.createQuery("from Resume");
			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}finally{
			u.close();
		}

		
	}
	
	public  List<Resume> findById() {
		Session u = super.getSessionFactory().openSession();
		try{
			Query query = u.createQuery("from Resume where ReId = 1");
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
