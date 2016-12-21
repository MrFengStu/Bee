package com.bc.bee.recruitment.service;

import com.bc.bee.entity.Parcer;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.TeaCer;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.recruitment.dao.ParcerDaoImpl;
import com.bc.bee.recruitment.dao.RecruitmentDaoImpl;
import com.bc.bee.recruitment.dao.CheckTeacerDaoImpl;

@Service
@Transactional(readOnly=false)
public class RecruitmentServiceImpl {
	
	@Resource
	private RecruitmentDaoImpl recruitmentDaoImpl;
	
	@Resource
	private ParcerDaoImpl parcerdaoimpl;
	
	@Resource
	private CheckTeacerDaoImpl checkteacerdaoimpl;
	
	public void addRecruitment(RecInfo r){
		this.recruitmentDaoImpl.saveRecInfo(r);
	}
	public java.util.List<String> findTime(Integer PUId){
		java.util.List<String> list = recruitmentDaoImpl.findTime(PUId);
		return list;
	}
	public Parcer findParcer(Integer PUId){
		return this.parcerdaoimpl.selectParcer(PUId);
	}
	public TeaCer findTeacer(Integer TUId){
		return this.checkteacerdaoimpl.selectTeacer(TUId);
	}

	
}
