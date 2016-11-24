package com.bc.bee.wodexinxi.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.RecInfo;
import com.bc.framework.BaseDao;
@Repository
public class RecInfoDaoImpl extends BaseDao<RecInfo, String> {
	public RecInfo findByRlId(int RlId){
		try {
			return super.findOne("from RecInfo where RlId=?",new Object[]{RlId});
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
