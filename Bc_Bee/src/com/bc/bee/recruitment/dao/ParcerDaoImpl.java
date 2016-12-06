package com.bc.bee.recruitment.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.Parcer;
import com.framework.BaseDao;

@Repository
public class ParcerDaoImpl extends BaseDao<Parcer, String> {

	public Parcer selectParcer(Integer PUId){
		try {
			return super.findOne("from Parcer pa where pa.puser.PUId=?", new Object[]{PUId});
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
