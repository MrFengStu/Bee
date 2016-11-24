package com.bc.bee.jiazhanginfo.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bc.bee.entity.PUser;
import com.bc.framework.BaseDao;
/**
 *  author：吴敬怡
 *  日期：2016/11/17
 *  功能：从数据库获取数据并做相应修改
 */


@Repository
public class JiainfoDaoImpl extends BaseDao<PUser, Integer> {

	public PUser getPUser(String name, String tel, String email) {
		try {
			Session s = super.getSessionFactory().openSession();
			PUser p = s.get(PUser.class, 1);
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
			this.update(p);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
