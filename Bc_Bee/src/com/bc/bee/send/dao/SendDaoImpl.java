package com.bc.bee.send.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import com.bc.bee.entity.RecInfo;
import com.framework.BaseDao;

@Repository
public class SendDaoImpl extends BaseDao<RecInfo, String> {
	
	public  List<RecInfo> findById(Integer PUId) {
		Session u = super.getSessionFactory().openSession();
		
		try{ 
			Query query = u.createQuery("from RecInfo where PUId = '"+PUId+"'");

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
