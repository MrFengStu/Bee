package com.bc.bee.wodexinxi.yaoqinghan.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import com.bc.bee.entity.Invitation;

import com.framework.BaseDao;

@Repository
public class InvitationDaoImpl extends BaseDao<Invitation, String> {
	public List<Invitation> findByTUId(int TUId){
		try {
			List<Invitation> list = super.findByProperty("from Invitation lu where lu.tuser.TUId=? ", new Object[]{TUId});
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public void deleteByInId(int InId){

		try {
			super.delete(InId);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
