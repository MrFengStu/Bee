package com.bc.bee.resumepreview.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.Resume;
import com.bc.bee.entity.TDeInfo;
import com.bc.bee.resumepreview.dao.PreviewDaoImpl;
import com.bc.bee.resumepreview.dao.ResumepreviewDaoImpl;

 
@Service
@Transactional(readOnly=false)
public class ResumepreviewServiceImpl {
	
	@Resource
	private ResumepreviewDaoImpl resumepreviewDaoImpl;
	
	@Resource
	private PreviewDaoImpl previewDaoImpl;
	
	
	public Resume findById(Integer TUId){
		Resume list = resumepreviewDaoImpl.findById(TUId);
		return list;
	}
	
	public TDeInfo findByTUId(Integer TUId){
		TDeInfo list = previewDaoImpl.findByTUId(TUId);
		return list;
	}
	
	public Resume findByName(String faculty){
		Resume list = resumepreviewDaoImpl.findByName(faculty);
		return list;
	}
	
	public TDeInfo findByNameP(String faculty){
		TDeInfo list = previewDaoImpl.findByNameP(faculty);
		return list;
	}
	

}
