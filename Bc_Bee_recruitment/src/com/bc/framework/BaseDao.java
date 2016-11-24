package com.bc.framework;


import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.CriteriaSpecification;

public abstract class BaseDao<T, PK extends Serializable> {
	private Class<T> entityClass;

	@Resource
	protected SessionFactory sessionFactory;

	public BaseDao() {
		this.entityClass = null;
		Class c = getClass();
		Type t = c.getGenericSuperclass();
		if (t instanceof ParameterizedType) {
			Type[] p = ((ParameterizedType) t).getActualTypeArguments();
			this.entityClass = (Class<T>) p[0];
		}
	}

	// **************基本增删改查*********************
	public void save(T entity) throws Exception {
		this.sessionFactory.getCurrentSession().save(entity);
	}

}
