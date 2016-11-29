package com.bc.bee.mailing.dao;

import java.util.Date;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.Delivery;
import com.bc.bee.entity.RecInfo;
import com.framework.BaseDao;

@Repository
public class MailingDaoImpl extends BaseDao<Delivery, String> {

	public void save(Delivery delivery){
		try {
			super.save(delivery);
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}
}
