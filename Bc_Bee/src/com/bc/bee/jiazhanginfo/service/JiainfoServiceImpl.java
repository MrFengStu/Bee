package com.bc.bee.jiazhanginfo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.PUser;
import com.bc.bee.jiazhanginfo.dao.JiainfoDaoImpl;
/**
 *  author：吴敬怡
 *  日期：2016/11/17
 *  功能：传递到dao 并set参数
 */


@Service
@Transactional(readOnly=false)
public class JiainfoServiceImpl {
	
	@Resource
	private JiainfoDaoImpl jiainfoDaoImpl;
	
	public void editPUser(String name,String tel,String email,Integer id){
		PUser p = this.jiainfoDaoImpl.getPUser(name,tel,email,id);
		p.setPUName(name);
		p.setPMailbox(email);
		p.setPMobile(tel);
		this.jiainfoDaoImpl.updatePUser(p);
	}
	public List<PUser> findById(Integer id){
		return this.jiainfoDaoImpl.findById(id);
	}

}
