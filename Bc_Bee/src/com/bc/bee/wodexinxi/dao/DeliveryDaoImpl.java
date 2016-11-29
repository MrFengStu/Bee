package com.bc.bee.wodexinxi.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.Delivery;
import com.framework.BaseDao;

@Repository
public class DeliveryDaoImpl extends BaseDao<Delivery, String> {
	public List<Delivery> findByTUId(int TUId){
		try {
			List<Delivery> list = super.findByProperty("from Delivery lu where lu.tuser.TUId=? ", new Object[]{TUId});
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void deleteByDeId(int DeId){

		try {
			super.delete(DeId);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
