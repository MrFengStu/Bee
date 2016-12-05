package com.bc.bee.jiazhanginfo.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bc.bee.entity.PUser;
import com.bc.bee.entity.RecInfo;
import com.framework.BaseDao;
/**
 *  author：吴敬怡
 *  日期：2016/11/17
 *  功能：从数据库获取数据并做相应修改
 */


@Repository
public class JiainfoDaoImpl extends BaseDao<PUser, Integer> {

	public PUser getPUser(String name, String tel, String email,Integer id) {
		try {
			Session s = super.getSessionFactory().openSession();
			PUser p = s.get(PUser.class, id);
			s.close();
			return p;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public void updatePUser(PUser p) {
		try {
			String name = p.getPUName();
			name = new String(name.getBytes("iso-8859-1"),"utf-8");
			p.setPUName(name);
			this.update(p);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public  List<PUser> findById(Integer id){
		Session u = super.getSessionFactory().openSession();
		try{
			System.out.println(id);
			Query query = u.createQuery("from PUser where PUId = '"+id+"'");
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
