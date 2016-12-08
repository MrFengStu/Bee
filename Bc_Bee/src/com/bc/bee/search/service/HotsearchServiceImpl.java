package com.bc.bee.search.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.Hotsearch;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.search.dao.HotsearchDao;
import com.bc.bee.search.dao.IndexserDao;

@Service
@Transactional(readOnly=false)
public class HotsearchServiceImpl {
	
	
	@Resource
	private HotsearchDao HotsearchDao;
	
	public List<Hotsearch> getSearch(String names)
	{
		return this.HotsearchDao.getSearch(names);
	}
	
	public void save1(Hotsearch hot1){
		this.HotsearchDao.save1(hot1);
	}
	
	public void update(Hotsearch hot1){
		this.HotsearchDao.update1(hot1);
	}
	public List<Hotsearch> findByCount(){
		return this.HotsearchDao.findByCount();
	}
}
