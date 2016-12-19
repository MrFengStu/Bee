package com.bc.bee.search.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.bc.bee.entity.RecInfo;
import com.framework.BaseDao;

@Repository
public class IndexserDao extends BaseDao<RecInfo, String> {

	public List<RecInfo> findByName(String name, int offset, int length) {
		Session u = super.getSessionFactory().openSession();
		try {
			name = new String(name.getBytes("iso-8859-1"), "utf-8");
			System.out.println(name);
			Query query = u.createQuery("from RecInfo where JobTitle like '%" + name + "%'");

			query.setFirstResult(offset);
			query.setMaxResults(length);

			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			u.close();
		}

	}

	// 查询记录总数
	public int getAllRowCount1(String name) {
		Session session2 = super.getSessionFactory().openSession();
		try {

			String hql = "select count(*) from RecInfo where JobTitle like '%" + name + "%'";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<RecInfo> findByName1(String name, int offset, int length) {
		Session u = super.getSessionFactory().openSession();
		try {
			// name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(name);
			Query query = u.createQuery("from RecInfo where JobTitle like '%" + name + "%'");

			query.setFirstResult(offset);
			query.setMaxResults(length);

			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			u.close();
		}

	}

	public int getAllRowCount2(String name) {
		Session session2 = super.getSessionFactory().openSession();
		try {

			String hql = "select count(*) from RecInfo where JobTitle like '%" + name + "%'";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<RecInfo> findByAreaSchoolSubject(String area, String school, String subject, int offset, int length) {
		Session u = super.getSessionFactory().openSession();
		try {
			// name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(area + school + subject);
			String hql = " from  RecInfo where Qu = '" + area + "'and School  = '" + school
					+ "'and recinfo.getSubject() = '" + subject + "'";
			Query query = u.createQuery(hql);

			query.setFirstResult(offset);
			query.setMaxResults(length);

			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			u.close();
		}

	}

	public int getAllRowCount3(String area, String school, String subject) {
		Session session2 = super.getSessionFactory().openSession();
		try {

			String hql = "select count(*) from  RecInfo where Qu = '" + area + "'and School  = '" + school
					+ "'and recinfo.getSubject() = '" + subject + "'";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<RecInfo> findByAreaSchool(String area, String school, int offset, int length) {
		Session u = super.getSessionFactory().openSession();
		try {
			// name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(area + school);
			String hql = " from  RecInfo  where Qu = '" + area + "'and School = '" + school + "'";
			Query query = u.createQuery(hql);

			query.setFirstResult(offset);
			query.setMaxResults(length);

			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			u.close();
		}

	}

	public int getAllRowCount4(String area, String school) {
		Session session2 = super.getSessionFactory().openSession();
		try {

			String hql = "select count(*) from  RecInfo  where Qu = '" + area + "'and School = '" + school + "'";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<RecInfo> findBySchoolSubject(String school, String subject, int offset, int length) {
		Session u = super.getSessionFactory().openSession();
		try {
			// name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(school + subject);
			String hql = " from  RecInfo where School = '" + school + "'and Subject = '" + subject + "'";
			Query query = u.createQuery(hql);

			query.setFirstResult(offset);
			query.setMaxResults(length);

			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			u.close();
		}

	}

	public int getAllRowCount5(String school, String subject) {
		Session session2 = super.getSessionFactory().openSession();
		try {

			String hql = "select count(*) from  RecInfo where School = '" + school + "'and Subject = '" + subject + "'";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<RecInfo> findByAreaSubject(String area, String subject, int offset, int length) {
		Session u = super.getSessionFactory().openSession();
		try {
			// name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(area + subject);
			String hql = " from  RecInfo where Qu = '" + area + "'and Subject = '" + subject + "'";
			Query query = u.createQuery(hql);

			query.setFirstResult(offset);
			query.setMaxResults(length);

			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			u.close();
		}

	}

	public int getAllRowCount6(String area, String subject) {
		Session session2 = super.getSessionFactory().openSession();
		try {

			String hql = "select count(*) from  RecInfo where Qu = '" + area + "'and Subject = '" + subject + "'";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<RecInfo> findByArea(String area, int offset, int length) {
		Session u = super.getSessionFactory().openSession();
		try {
			// name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(area);
			String hql = " from  RecInfo where Qu = '" + area + "'";
			Query query = u.createQuery(hql);

			query.setFirstResult(offset);
			query.setMaxResults(length);

			List<RecInfo> list = query.list();
			return list;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			u.close();
		}

	}

	public int getAllRowCount7(String area) {
		Session session2 = super.getSessionFactory().openSession();
		try {

			String hql = "select count(*) from  RecInfo where Qu = '" + area + "'";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<RecInfo> findBySchool(String school, int offset, int length) {
		Session u = super.getSessionFactory().openSession();
		try {
			// name = new String(name.getBytes("iso-8859-1"),"utf-8");
			// System.out.println(school+"赵丹利");
			String hql = " from  RecInfo where School = '" + school + "'";
			Query query = u.createQuery(hql);

			query.setFirstResult(offset);
			query.setMaxResults(length);

			List<RecInfo> list = query.list();
			return list;
		} catch (Exception e) {
			// TODO Auto-generated ca tch block
			e.printStackTrace();
			return null;
		} finally {
			u.close();
		}

	}

	public int getAllRowCount8(String school) {
		Session session2 = super.getSessionFactory().openSession();
		try {

			String hql = "select count(*) from  RecInfo where School = '" + school + "'";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<RecInfo> findBySubject(String subject, int offset, int length) {
		Session u = super.getSessionFactory().openSession();
		try {
			// name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(subject);
			String hql = " from  RecInfo where Subject = '" + subject + "'";
			Query query = u.createQuery(hql);

			query.setFirstResult(offset);
			query.setMaxResults(length);

			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			u.close();
		}

	}

	public int getAllRowCount9(String subject) {
		Session session2 = super.getSessionFactory().openSession();
		try {

			String hql = "select count(*) from  RecInfo where Subject = '" + subject + "'";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
}
