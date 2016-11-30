package com.bc.bee.order.dao;

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
public class HotDao extends BaseDao<RecInfo, String> {

	public List<RecInfo> orderByView() {
		Session u = super.getSessionFactory().openSession();
		try {
			Query query = u.createQuery("from RecInfo order by View desc");
			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			u.close();
		}
	}
	
	public List<RecInfo> orderByTime() {
		Session u = super.getSessionFactory().openSession();
		try {
			Query query = u.createQuery("from RecInfo order by ReTime desc");
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
