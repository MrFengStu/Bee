package com.bc.bee.jianli.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.TDeInfo;
import com.framework.BaseDao;

@Repository
public class JibenDaoImpl extends BaseDao<TDeInfo, String> {

	public TDeInfo findByName(int name){
		try {
			return super.findOne("from TDeInfo lu where lu.tuser.TUId=? ", new Object[]{name});
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void jibenUpdate(TDeInfo tdeinfo){
		try {
			super.update(tdeinfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void jibenJY(TDeInfo tde){
		try {
			super.update(tde);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

