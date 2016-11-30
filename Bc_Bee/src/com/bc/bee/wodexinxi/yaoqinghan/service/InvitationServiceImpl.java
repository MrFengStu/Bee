package com.bc.bee.wodexinxi.yaoqinghan.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.Invitation;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.wodexinxi.yaoqinghan.dao.YaoqingbiaoRecInfoDaoImpl;
import com.bc.bee.wodexinxi.yaoqinghan.dao.InvitationDaoImpl;

@Service
@Transactional(readOnly=true)
public class InvitationServiceImpl {
	@Resource
	private InvitationDaoImpl InvitationDaoImpl;
	@Resource
	private YaoqingbiaoRecInfoDaoImpl RecInfoDaoImpl;
	
	public List<Invitation> findByTUId(int TUId){
		return this.InvitationDaoImpl.findByTUId(TUId);
	}
	public RecInfo findRecByRlId(int RlId){
		return this.RecInfoDaoImpl.findByRlId(RlId);
	}
	@Transactional(readOnly=false)
	public void deleteByDeId(int InId){
		this.InvitationDaoImpl.deleteByInId(InId);
	}
}
