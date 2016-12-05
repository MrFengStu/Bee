package com.bc.bee.wodexinxi.yaoqinghan.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.Resume;
import com.framework.BaseDao;

@Repository
public class ResumeDaoImpl extends BaseDao<Resume, String> {
	public Resume findByTUId(int TUId){
		try {
			return super.findOne("from Resume where TUId=?",new Object[]{TUId});
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
