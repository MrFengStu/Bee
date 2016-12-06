package com.bc.bee.resumepreview.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.Resume;
import com.bc.bee.entity.TUser;
import com.framework.BaseDao;

@Repository
public class ResumepreviewDaoImpl extends BaseDao<Resume, String> {

	public  List<Resume> findById(Integer TUId) {
		Session u = super.getSessionFactory().openSession();
		
		try{ 
			Query query = u.createQuery("from Resume where TUId = '"+TUId+"'");

			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}finally{
			u.close();
		}
	
	}
	
	public  List<Resume> findByName(String faculty) {
		Session u = super.getSessionFactory().openSession();
		System.out.println(faculty);
		try{ 
			Query query = u.createQuery("from Resume where TUName = '"+faculty+"'");

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
