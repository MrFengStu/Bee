package com.bc.bee.deal.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.TeaCer;
import com.framework.BaseDao;

@Repository
public class TeacerDaoImpl extends BaseDao<TeaCer, String> {

	public TeaCer findByTUId(Integer TUId){
		try {
			return super.findOne("from TeaCer te where te.tuser.TUId=?", new Object[]{TUId});
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
			return null;
		}
	}
}
