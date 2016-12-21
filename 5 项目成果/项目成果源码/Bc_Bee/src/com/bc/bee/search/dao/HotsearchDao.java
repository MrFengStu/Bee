package com.bc.bee.search.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.bc.bee.entity.Hotsearch;
import com.framework.BaseDao;

@Repository
public class HotsearchDao extends BaseDao<Hotsearch, String>{

	public  List<Hotsearch> getSearch(String name) {
		Session u = super.getSessionFactory().openSession();
		try{
			//name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(name);
			Query query = u.createQuery("from Hotsearch where Including='"+name+"'");
			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}finally{
			u.close();
		}

		
	}
	
	public void save1(Hotsearch hot2){
		try {
			this.save(hot2);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void update1(Hotsearch hot2){
		try {
			this.update(hot2);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<Hotsearch> findByCount() {
		Session u = super.getSessionFactory().openSession();
		try {
			Query query = u.createQuery("from Hotsearch order by Countn desc");
			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			u.close();
		}

		
	}
}
