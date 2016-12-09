package com.bc.bee.browse.dao;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.bc.bee.entity.RecInfo;
import com.framework.BaseDao;

@Repository
public class JoblistDao extends BaseDao<RecInfo, String> {

//	public List<RecInfo> findAll() {
//		Session a = super.getSessionFactory().openSession();
//		try {
//			Query query = a.createQuery("from RecInfo");
//			return query.list();
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			return null;
//		} finally {
//			a.close();
//		}
//
//	}

	public List<RecInfo> findById(Integer id) {
		Session u = super.getSessionFactory().openSession();
		try {
			System.out.println(id);
			Query query = u.createQuery("from RecInfo where RlId = '" + id + "'");
			// for(int i=0;i<query.list().size();i++){
			// System.out.println(query.list().get(i));
			// }
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
