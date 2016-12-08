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
	public void jianliQW(Resume res,String area,String sub, String salary, String teaMode){
		if(area!=null && area.length()!=0 ){
			res.setArea(area);
		}
		if(sub!=null && sub.length()!=0){
			res.setTeaSubject(sub);
		}
		if( teaMode!= null && teaMode.length()!=0){
			res.setTeaMode(teaMode);
		}
		if(salary!=null && salary.length()!=0){
			res.setSalary(salary);
		}
		this.JianliDaoImpl.upDateResume(res);
	}
	@Transactional(readOnly=false)
	public void jianliJL(Resume res, String pte, String sGrade){
		
		if(pte!=null && pte.length()!=0 ){
			res.setPte(pte);
		}
		if(sGrade!=null && sGrade.length()!=0){
			res.setSGrade(sGrade);
		}
		this.JianliDaoImpl.upDateResume(res);
	}
	
	@Transactional(readOnly=false)
	public void jianliMS(Resume res, String brief){
		res.setBrief(brief);
		this.JianliDaoImpl.upDateResume(res);
	}
	
	@Transactional(readOnly=false)
	public void jianliJY(Resume res, String ted){
		if(ted!=null && ted.length()!=0){
			res.setTed(ted);
		}
		this.JianliDaoImpl.upDateResume(res);
	}
	
	@Transactional(readOnly=false)
	public void jianliZC(Resume res, String expertise, String discount){
		
		if(expertise!=null && expertise.length()!=0){
			res.setExpertise(expertise);
		}
		if(discount!=null && discount.length()!=0){
			res.setDiscount(discount);
		}
		this.JianliDaoImpl.upDateResume(res);
	}
	
	@Transactional(readOnly=false)
	public void upDateTime(Resume res, String reTime){
		res.setReTime(reTime);
		this.JianliDaoImpl.upDateResume(res);
	}
	@Transactional(readOnly=false)
	public void upDatejianli(Resume res){
		this.JianliDaoImpl.upDateResume(res);
	}
}
