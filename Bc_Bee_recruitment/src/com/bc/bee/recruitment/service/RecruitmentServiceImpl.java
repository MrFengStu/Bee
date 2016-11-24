package com.bc.bee.recruitment.service;

import com.bc.bee.entity.RecInfo;
import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.framework.BaseDao;

import antlr.collections.List;

import com.bc.bee.recruitment.dao.RecruitmentDaoImpl;

@Service
@Transactional(readOnly=false)
public class RecruitmentServiceImpl {
	
	@Resource
	private RecruitmentDaoImpl recruitmentDaoImpl;
	
	public void addRecruitment(RecInfo r){
		this.recruitmentDaoImpl.saveRecInfo(r);
	}
	public java.util.List<RecInfo> findTime(Integer PUser){
		java.util.List<RecInfo> list = recruitmentDaoImpl.findTime(PUser);
		return list;
	}
	

}
