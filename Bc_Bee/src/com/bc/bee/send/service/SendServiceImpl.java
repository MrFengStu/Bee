package com.bc.bee.send.service;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.framework.BaseDao;

import antlr.collections.List;

import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.TUser;
import com.bc.bee.send.dao.SaveDaoImpl;
import com.bc.bee.send.dao.SendDaoImpl;

@Service
@Transactional(readOnly=false)
public class SendServiceImpl {
	
	@Resource
	private SendDaoImpl sendDaoImpl;
	private SaveDaoImpl saveDaoImpl = null;
	
	 
	public java.util.List<RecInfo> findById(Integer PUId){
		java.util.List<RecInfo> list = sendDaoImpl.findById(PUId);
		return list;
	}

	public java.util.List<TUser> findByName(String TUName){
		System.out.println("222"+TUName);
		java.util.List<TUser> list = saveDaoImpl.findByName(TUName);
		return list;
	}
	

}
