package com.bc.bee.wodexinxi.yaoqinghan.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.Invitation;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.Resume;
import com.bc.bee.wodexinxi.yaoqinghan.dao.YaoqingbiaoRecInfoDaoImpl;
import com.framework.Page;
import com.bc.bee.wodexinxi.yaoqinghan.dao.InvitationDaoImpl;
import com.bc.bee.wodexinxi.yaoqinghan.dao.ResumeDaoImpl;

@Service
@Transactional(readOnly=true)
public class InvitationServiceImpl {
	@Resource
	private InvitationDaoImpl InvitationDaoImpl;
	@Resource
	private YaoqingbiaoRecInfoDaoImpl RecInfoDaoImpl;
	
	@Resource
	private ResumeDaoImpl resumedaoimpl;
	
	public List<Invitation> findByTUId(int TUId){
		return this.InvitationDaoImpl.findByTUId(TUId);
	}
	public RecInfo findRecByRlId(int RlId){
		return this.RecInfoDaoImpl.findByRlId(RlId);
	}
	@Transactional(readOnly=false)
	public void deleteByInId(int InId){
		this.InvitationDaoImpl.deleteByInId(InId);
	}
	public List<Invitation> findByPUId(int PUId){
		return this.InvitationDaoImpl.findByPUId(PUId);
	}
	public Resume findResumeByTUId(int TUId){
		return this.resumedaoimpl.findByTUId(TUId);
	}
	public Page<Invitation> findJyInvitationPageList(int TUId, int pageNum, int pageSize){
		return this.InvitationDaoImpl.findJyInvitationPageList(TUId,pageNum,pageSize,null);
	}
	public Page<Invitation> findJzInvitationPageList(int PUId, int pageNum, int pageSize){
		return this.InvitationDaoImpl.findJzInvitationPageList(PUId,pageNum,pageSize,null);
	}
}
