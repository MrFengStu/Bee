package com.bc.bee.mailing.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.RecInfo;
import com.framework.BaseDao;

@Repository
public class RecInDaoImpl extends BaseDao<RecInfo, String> {

	public RecInfo findByRlId(Integer RlId){
		try {
			RecInfo recinfo = super.findOne("from RecInfo where RlId=?", new Object[]{RlId});
			return recinfo;
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
			return null;
		}
	}
}
