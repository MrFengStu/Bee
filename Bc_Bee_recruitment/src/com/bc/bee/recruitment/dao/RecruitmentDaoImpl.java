package com.bc.bee.recruitment.dao;

import com.bc.bee.entity.RecInfo;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.bc.framework.BaseDao;

@Repository 
public class RecruitmentDaoImpl extends BaseDao<RecInfo, Integer> {
	
	public void saveRecInfo(RecInfo r){
		try{
			this.save(r);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	public List<RecInfo> findTime(Integer PUser) {
		Session session = sessionFactory.openSession();
		RecInfo recInfo = null;
		try{
			Query query = session.createQuery("from RecInfo where PUser = '1'");
			
			
			List<RecInfo> list = query.list();
		 
				System.out.println("kong");
			 
			return list;
		}finally{
			session.close();
		}
	}

}
