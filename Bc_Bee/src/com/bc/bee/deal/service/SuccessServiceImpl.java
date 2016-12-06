package com.bc.bee.deal.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bc.bee.deal.dao.SuccessDaoImpl;
import com.bc.bee.deal.dao.TeacerDaoImpl;
import com.bc.bee.entity.Success;
import com.bc.bee.entity.TeaCer;
import com.bc.bee.jianli.dao.JibenDaoImpl;

@Service
public class SuccessServiceImpl {

	@Resource
	private SuccessDaoImpl successdaoimpl;
	
	@Resource
	private TeacerDaoImpl teacerdaoimpl;
	
	@Resource
	private JibenDaoImpl jibendaoimpl;
	
	public void saveSuccess(Success success){
		this.successdaoimpl.saveSuccess(success);
	}
	public List<Success> findByPUId(Integer PUId){
		return this.successdaoimpl.findByPUId(PUId);
	}
	public TeaCer findByTUId(Integer TUId){
		return this.teacerdaoimpl.findByTUId(TUId);
	}
	public void updateTdinfo(Integer TUId){
		this.jibendaoimpl.updateCount(TUId);
	}
}
