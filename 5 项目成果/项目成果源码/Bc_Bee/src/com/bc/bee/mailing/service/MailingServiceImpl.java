package com.bc.bee.mailing.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.Delivery;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.mailing.dao.MailingDaoImpl;
import com.bc.bee.mailing.dao.RecInDaoImpl;

@Service
@Transactional(readOnly=true)
public class MailingServiceImpl {

	@Resource
	private RecInDaoImpl recindaoimpl;
	
	@Resource
	private MailingDaoImpl mailingdaoimpl;
	
	public RecInfo findRecInfo(Integer RlId){
		return this.recindaoimpl.findByRlId(RlId);
	}
	
	@Transactional(readOnly=false)
	public void add(Delivery delivery){
		this.mailingdaoimpl.save(delivery);
	}
}
