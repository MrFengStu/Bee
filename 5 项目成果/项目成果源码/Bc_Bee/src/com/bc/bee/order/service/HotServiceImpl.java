package com.bc.bee.order.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.RecInfo;
import com.bc.bee.order.dao.HotDao;

@Service
@Transactional(readOnly=false)
public class HotServiceImpl {
	@Resource
	private HotDao HotDao;
	
	public List<RecInfo> orderByView(){
		return this.HotDao.orderByView();
	}
	public List<RecInfo> orderByTime(){
		return this.HotDao.orderByTime();
	}
	
}
