package com.bc.bee.wodexinxi.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.Delivery;
import com.framework.BaseDao;
import com.framework.Page;

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
	public List<Delivery> findByPUId(int PUId){
		try {
			List<Delivery> list = super.findByProperty("from Delivery lu where lu.puser.PUId=? ", new Object[]{PUId});
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
	public Delivery findByDeId(int DeId){
		try {
			return super.findOne("from Delivery where DeId=?", new Object[]{DeId});
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public Page<Delivery> findDeliveryPageList(int TUId,int pageNum,String state, int pageSize,Object[] params){
		String hql = "from Delivery lu where lu.tuser.TUId="+TUId;
		if(!state.equals("f")){
			hql = "from Delivery lu where State ='"+state+"' and lu.tuser.TUId= '"+TUId+"'";
		}
		System.out.println("hql语句："+hql);
		try {
			Page<Delivery> deliveryPageList = new Page<Delivery>();
			deliveryPageList.setCurrentPageNum(pageNum);
			deliveryPageList.setPageSize(pageSize);
			deliveryPageList=this.findByPage(pageNum, pageSize, hql, params);
			return deliveryPageList;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public Page<Delivery> findJzDeliveryPageList(int PUId, int pageNum, int pageSize,Object[] params){
		String hql = "from Delivery lu where lu.puser.PUId="+PUId;
		try {
			Page<Delivery> deliveryPageList = new Page<Delivery>();
			deliveryPageList.setCurrentPageNum(pageNum);
			deliveryPageList.setPageSize(pageSize);
			deliveryPageList=this.findByPage(pageNum, pageSize, hql, params);
			return deliveryPageList;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
