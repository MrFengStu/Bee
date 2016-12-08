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
import com.framework.BaseDao;

@Repository
public class IndexserDao extends BaseDao<RecInfo, String>{
	
	public  List<RecInfo> findByName(String name) {
		Session u = super.getSessionFactory().openSession();
		try{
			name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(name);
			Query query = u.createQuery("from RecInfo where JobTitle like '%" + name + "%'");
			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}finally{
			u.close();
		}

		
	}
	public  List<RecInfo> findByName1(String name) {
		Session u = super.getSessionFactory().openSession();
		try{
			//name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(name);
			Query query = u.createQuery("from RecInfo where JobTitle like '%" + name + "%'");
			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}finally{
			u.close();
		}

		
	}
	
	
	
	public  List<RecInfo> findByAreaSchoolSubject(String area,String school,String subject) {
		Session u = super.getSessionFactory().openSession();
		try{
			//name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(area+school+subject);
			String hql=" from  RecInfo where Qu = '"+area+ "'and School  = '"+school+ "'and recinfo.getSubject() = '"+subject+"'";
			Query query = u.createQuery(hql);
			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}finally{
			u.close();
		}

		
	}
	public  List<RecInfo> findByAreaSchool (String area,String school ) {
		Session u = super.getSessionFactory().openSession();
		try{
			//name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(area+school);
			String hql=" from  RecInfo  where Qu = '"+area+ "'and School = '"+school+ "'";
			Query query = u.createQuery(hql);
			 
			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}finally{
			u.close();
		}

		
	}
	public  List<RecInfo> findBySchoolSubject(String school,String subject) {
		Session u = super.getSessionFactory().openSession();
		try{
			//name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(school+subject);
			String hql=" from  RecInfo where School = '"+school+ "'and Subject = '"+subject+"'";
			Query query = u.createQuery(hql);
			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}finally{
			u.close();
		}

		
	}
	public  List<RecInfo> findByAreaSubject(String area,String subject) {
		Session u = super.getSessionFactory().openSession();
		try{
			//name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(area+subject);
			String hql=" from  RecInfo where Qu = '"+area+"'and Subject = '"+subject+"'";
			Query query = u.createQuery(hql);
			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}finally{
			u.close();
		}

		
	}
	public  List<RecInfo> findByArea(String area) {
		Session u = super.getSessionFactory().openSession();
		try{
			//name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(area);
			String hql=" from  RecInfo where Qu = '"+area+ "'";
			Query query = u.createQuery(hql);
			List<RecInfo> list = query.list();
			return list;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}finally{
			u.close();
		}

		
	}
	public  List<RecInfo> findBySchool( String school ) {
		Session u = super.getSessionFactory().openSession();
		try{
			//name = new String(name.getBytes("iso-8859-1"),"utf-8");
			//System.out.println(school+"赵丹利");
			String hql=" from  RecInfo where School = '"+school+ "'";
			Query query = u.createQuery(hql);
 			List<RecInfo> list = query.list();
			return list;
		}catch (Exception e) {
			// TODO Auto-generated ca  tch block
			e.printStackTrace();
			return null;
		}finally{
			u.close();
		}

		
	}
	public  List<RecInfo> findBySubject( String subject) {
		Session u = super.getSessionFactory().openSession();
		try{
			//name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(subject);
			String hql=" from  RecInfo where Subject = '"+subject+"'";
			Query query = u.createQuery(hql);
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
