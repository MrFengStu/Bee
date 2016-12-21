package com.bc.bee.deal.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.Success;
import com.framework.BaseDao;

@Repository
public class SuccessDaoImpl extends BaseDao<Success, String> {

	public void saveSuccess(Success success){
		try {
			super.save(success);
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}
	public List<Success> findByPUId(Integer PUId){
		try {
			return super.findByProperty("from Success su where su.PUId=? ", new Object[]{PUId});
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
			return null;
		}
	}
}
