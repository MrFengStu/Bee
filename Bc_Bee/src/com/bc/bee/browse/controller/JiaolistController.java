package com.bc.bee.browse.controller;


import java.util.List;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import com.bc.bee.browse.dao.JiaoliatDao;
import com.bc.bee.browse.dao.PreviewDao;
import com.bc.bee.entity.Comment;

import com.bc.bee.entity.Resume;



@Controller
public class JiaolistController{

	
	@Resource
	private JiaoliatDao JiaoliatDao;
	@Resource
	private PreviewDao PreviewDao;
	
//	@RequestMapping("jiaoyuan")
//	public String jiao(HttpServletRequest request,HttpSession session){
//		
//		List<Resume> resumes=this.JiaoliatDao.findAll();
//		session.setAttribute("resumes", resumes);
//		
//		return "jiaoyuanlist";
//	
//	}
	
	@RequestMapping("peopledetail")
	public String people(String id,HttpServletRequest request,HttpSession session){
		
		System.out.println(id);
		Integer idn = Integer.parseInt(id);
		System.out.println(idn);
		List<Resume> resume=this.JiaoliatDao.findById(idn);
		session.setAttribute("resume", resume);
		List<Comment> comment=this.PreviewDao.findById(idn);
		session.setAttribute("tuser1",comment );
		
		return "peopledetail";
	
	}

	private Integer toInteger(String parameter) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
