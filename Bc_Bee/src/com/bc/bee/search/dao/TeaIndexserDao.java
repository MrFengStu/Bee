package com.bc.bee.search.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.Resume;
import com.framework.BaseDao;

@Repository
public class TeaIndexserDao extends BaseDao<Resume, String> {

	public List<Resume> findAll(){
		Session u = super.getSessionFactory().openSession();
		try {
  
			Query query = u.createQuery("from resume"); 
			return query.list();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			u.close();
		}
	}
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

	public List<Resume> findByAreaSchoolSubject(String area, String school, String subject, int offset, int length) {
		Session u = super.getSessionFactory().openSession();
		try {
			// name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(area + school + subject);
			String hql = " from  Resume where Qu = '" + area + "'and School  = '" + school
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

			String hql = "select count(*) from  Resume where Qu = '" + area + "'and School  = '" + school
					+ "'and recinfo.getSubject() = '" + subject + "'";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<Resume> findByAreaSchool(String area, String school, int offset, int length) {
		Session u = super.getSessionFactory().openSession();
		try {
			// name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(area + school);
			String hql = " from  Resume  where Qu = '" + area + "'and School = '" + school + "'";
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

			String hql = "select count(*) from  Resume  where Qu = '" + area + "'and School = '" + school + "'";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<Resume> findBySchoolSubject(String school, String subject, int offset, int length) {
		Session u = super.getSessionFactory().openSession();
		try {
			// name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(school + subject);
			String hql = " from  Resume where School like '%" + school + "%'and TeaSubject = '" + subject + "'";
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

			String hql = "select count(*) from  Resume where School like '%" + school + "%'and TeaSubject = '" + subject + "'";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<Resume> findByAreaSubject(String area, String subject, int offset, int length) {
		Session u = super.getSessionFactory().openSession();
		try {
			// name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(area + subject);
			String hql = " from  Resume where Qu = '" + area + "'and Subject = '" + subject + "'";
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

			String hql = "select count(*) from  Resume where Qu = '" + area + "'and Subject = '" + subject + "'";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<Resume> findByArea(String area, int offset, int length) {
		Session u = super.getSessionFactory().openSession();
		try {
			// name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(area);
			String hql = " from  Resume where Qu = '" + area + "'";
			Query query = u.createQuery(hql);

			query.setFirstResult(offset);
			query.setMaxResults(length);

			List<Resume> list = query.list();
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

			String hql = "select count(*) from  Resume where Qu = '" + area + "'";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<Resume> findBySchool(String school, int offset, int length) {
		Session u = super.getSessionFactory().openSession();
		try {
			// name = new String(name.getBytes("iso-8859-1"),"utf-8");
			 
			String hql = " from Resume where School like '%" + school + "%'";
			Query query = u.createQuery(hql);

			query.setFirstResult(offset);
			query.setMaxResults(length);

			List<Resume> list = query.list();
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
			 
			String hql = "select count(*) from  Resume where SGrade like '%" + school + "%'";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<Resume> findBySubject(String subject, int offset, int length) {
		Session u = super.getSessionFactory().openSession();
		try {
			// name = new String(name.getBytes("iso-8859-1"),"utf-8");
			System.out.println(subject);
			String hql = " from  Resume where TeaSubject = '" + subject + "'";
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

			String hql = "select count(*) from  Resume where TeaSubject = '" + subject + "'";
			int count = ((Long) session2.createQuery(hql).iterate().next()).intValue();
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
}
