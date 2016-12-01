package com.bc.bee.search.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.RecInfo;
import com.bc.bee.search.dao.IndexserDao;

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
	
}
