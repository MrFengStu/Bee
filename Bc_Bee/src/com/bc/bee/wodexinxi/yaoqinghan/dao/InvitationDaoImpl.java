package com.bc.bee.wodexinxi.yaoqinghan.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import com.bc.bee.entity.Invitation;

import com.framework.BaseDao;
import com.framework.Page;

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
	public List<Invitation> findByPUId(int PUId){
		try{
			List<Invitation> lists = super.findByProperty("from Invitation lu where lu.puser.PUId=? ", new Object[]{PUId});
			return lists;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	public Page<Invitation> findJyInvitationPageList(int TUId, int pageNum, int pageSize, Object[] params){
		String hql = "from Invitation lu where lu.tuser.TUId="+TUId;
	
		try {
			Page<Invitation> InvitationPageList = new Page<Invitation>();
			InvitationPageList.setCurrentPageNum(pageNum);
			InvitationPageList.setPageSize(pageSize);
			InvitationPageList=this.findByPage(pageNum, pageSize, hql, params);
			return InvitationPageList;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
}
