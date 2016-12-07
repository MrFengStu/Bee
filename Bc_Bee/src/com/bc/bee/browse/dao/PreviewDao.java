package com.bc.bee.browse.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bc.bee.entity.Comment;
import com.bc.bee.entity.PUser;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.TUser;
import com.framework.BaseDao;

@Repository
public class PreviewDao extends BaseDao<Comment,String> {
	public List<Comment> findById(Integer id) {

		Session u = super.getSessionFactory().openSession();
		try {
			System.out.println(id);
			System.out.println(id);
			Query query = u.createQuery("from Comment where TUId = '" + id + "'");

			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			u.close();
		}
	}

	public void save1(Comment t) {
		try {
			this.save(t);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Comment getComment(Integer id){
		try {
			Session s = super.getSessionFactory().openSession();
			Comment t = s.get(Comment.class, id);
			s.close();
			return t;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

}
