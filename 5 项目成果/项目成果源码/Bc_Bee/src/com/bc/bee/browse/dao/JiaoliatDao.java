package com.bc.bee.browse.dao;


import java.util.List;



import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import com.bc.bee.entity.Resume;
import com.framework.BaseDao;

@Repository
public class JiaoliatDao extends BaseDao<Resume, String> {
	
//	public  List<Resume> findAll() {
//		Session u = super.getSessionFactory().openSession();
//		try{
//			Query query = u.createQuery("from Resume");
//			return query.list();
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			return null;
//		}finally{
//			u.close();
//		}
//
//		
//	}
	
	public  List<Resume> findById(Integer id) {
		Session u = super.getSessionFactory().openSession();
		try{
			//name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(id);
			Query query = u.createQuery("from Resume where TUId = '"+id+"'");
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
