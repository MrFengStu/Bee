package com.bc.bee.search.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.Hotsearch;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.search.dao.IndexserDao;
import com.framework.Page;

@Service
@Transactional(readOnly=false)
public class IndexserServiceImpl {
	
	@Resource
	private IndexserDao IndexserDao;
	
	public List<RecInfo> findByName(String name){
		return this.IndexserDao.findByName(name);
	}
	
	
	
	public List<RecInfo> findByName1(String name){
		return this.IndexserDao.findByName1(name);
	}
	
	public List<RecInfo> findByAreaSchoolSubject(String area, String school, String subject){
		return this.IndexserDao.findByAreaSchoolSubject(area, school, subject);
	}
	public List<RecInfo> findByAreaSchool(String area, String school){
		return this.IndexserDao.findByAreaSchool(area, school);
	}
	public List<RecInfo> findBySchoolSubject(String school, String subject){
		return this.IndexserDao.findBySchoolSubject(school, subject);
	}
	public List<RecInfo> findByAreaSubject(String area, String subject){
		return this.IndexserDao.findByAreaSubject(area, subject);
	}
	public List<RecInfo> findByArea(String area ){
		System.out.println("service实现");
		return this.IndexserDao.findByArea(area);
		
	}
	public List<RecInfo> findBySchool(String school){
		return this.IndexserDao.findBySchool(school);
	}
	public List<RecInfo> findBySubject(String subject){
		return this.IndexserDao.findBySubject(subject);
	}
}
