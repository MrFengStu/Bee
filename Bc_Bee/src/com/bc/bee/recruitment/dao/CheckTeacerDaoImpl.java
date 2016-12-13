package com.bc.bee.recruitment.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.TeaCer;
import com.framework.BaseDao;

@Repository
public class CheckTeacerDaoImpl extends BaseDao<TeaCer, String> {
	

	public TeaCer selectTeacer(Integer TUId){
		try {
			return super.findOne("from TeaCer te where te.tuser.TUId=?", new Object[]{TUId});
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
