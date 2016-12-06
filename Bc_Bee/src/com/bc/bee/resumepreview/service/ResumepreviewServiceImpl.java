package com.bc.bee.resumepreview.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.Resume;
import com.bc.bee.entity.TUser;
import com.bc.bee.resumepreview.dao.ResumepreviewDaoImpl;

 
@Service
@Transactional(readOnly=false)
public class ResumepreviewServiceImpl {
	
	@Resource
	private ResumepreviewDaoImpl resumepreviewDaoImpl;
	
	
	public java.util.List<Resume> findById(Integer TUId){
		java.util.List<Resume> list = resumepreviewDaoImpl.findById(TUId);
		return list;
	}
	
	public java.util.List<Resume> findByName(String faculty){
		System.out.println("222"+faculty);
		java.util.List<Resume> list = resumepreviewDaoImpl.findByName(faculty);
		return list;
	}
	

}
