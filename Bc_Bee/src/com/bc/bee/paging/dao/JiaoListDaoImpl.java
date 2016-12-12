package com.bc.bee.paging.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.bc.bee.entity.Resume;
import com.framework.BaseDao;

@Repository
public class JiaoListDaoImpl extends BaseDao<Resume, String> {
	// 查询所有的记录数
	@SuppressWarnings("unchecked")
	public List<Resume> queryForPage(int offset, int length) {
		Session session1 = super.getSessionFactory().openSession();
		try {
			String hql = "from Resume";
			Query query = session1.createQuery(hql);
			query.setFirstResult(offset);
			query.setMaxResults(length);
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// 查询记录总数
	public int getAllRowCount() {
		Session session2 = super.getSessionFactory().openSession();
		try {
			// int count = ((Integer) session2.createQuery("select count(*) from
			// RecInfo as RlId").iterate().next()).intValue();
			// Integer count=((Integer)
			// sessionFactory.getCurrentSession().createQuery( "select count(*)
			// from RecInfo as RlId").iterate().next()).intValue();

			String hql = "select count(*) from Resume as ReId";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
}
