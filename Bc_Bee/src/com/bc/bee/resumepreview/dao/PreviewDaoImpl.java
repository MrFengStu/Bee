package com.bc.bee.resumepreview.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.Resume;
import com.bc.bee.entity.TDeInfo;
import com.bc.bee.entity.TUser;
import com.framework.BaseDao;

@Repository
public class PreviewDaoImpl extends BaseDao<TDeInfo, String> {

	public TDeInfo findByTUId(Integer TUId){
		try {
			return super.findOne("from TDeInfo where TUId=?",new Object[]{TUId});
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	public TDeInfo findByNameP(String faculty){
		try {
			return super.findOne("from TDeInfo where TName=?",new Object[]{faculty});
		} catch (Exception e) {
			e.printStackTrace();
			return null;
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
