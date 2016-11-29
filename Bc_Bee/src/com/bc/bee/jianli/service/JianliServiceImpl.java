package com.bc.bee.jianli.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.Resume;
import com.bc.bee.entity.TDeInfo;
import com.bc.bee.jianli.dao.JibenDaoImpl;
import com.bc.bee.jianli.dao.JianliDaoImpl;

@Service
@Transactional(readOnly=true)
public class JianliServiceImpl {
	@Resource
	private JibenDaoImpl JibenDaoImpl;
	@Resource
	private JianliDaoImpl JianliDaoImpl;
	
	
	public TDeInfo jiben(Integer name){
		return this.JibenDaoImpl.findByName(name);	
	}
	
	
	public Resume jianli(Integer TUId){
		return this.JianliDaoImpl.findByTUId(TUId);
	}
	
	@Transactional(readOnly=false)
	public void jibenUpdate(TDeInfo tdeinfo){
		this.JibenDaoImpl.jibenUpdate(tdeinfo);
	}
	
	@Transactional(readOnly=false)
	public void jianliQW(Resume res,String area,String sub, String salary){
		res.setArea(area);
		res.setTeaSubject(sub);
//		if(salary.equals("30元以下")){
//			res.setSalary(25);
//		}else if(salary.equals("30元-50元")){
//			res.setSalary(40);
//		}else if(salary.equals("50元-100元")){
//			res.setSalary(80);
//		}else{
//			res.setSalary(150);
//		}
		res.setSalary(salary);
		this.JianliDaoImpl.upDateResume(res);
	}
	@Transactional(readOnly=false)
	public void jianliJL(Resume res, String pte){
		res.setPte(pte);
		this.JianliDaoImpl.upDateResume(res);
	}
	
	@Transactional(readOnly=false)
	public void jianliMS(Resume res, String brief){
		res.setBrief(brief);
		this.JianliDaoImpl.upDateResume(res);
	}
	
	@Transactional(readOnly=false)
	public void jibenJY(TDeInfo tde, String school, String major){
		tde.setTCollege(school);
		tde.setTMajor(major);
		this.JibenDaoImpl.jibenJY(tde);
	}
	
	@Transactional(readOnly=false)
	public void jianliZC(Resume res, String expertise){
		res.setExpertise(expertise);
		this.JianliDaoImpl.upDateResume(res);
	}
	
	@Transactional(readOnly=false)
	public void upDateTime(Resume res, String reTime){
		res.setReTime(reTime);
		this.JianliDaoImpl.upDateResume(res);
	}
}
