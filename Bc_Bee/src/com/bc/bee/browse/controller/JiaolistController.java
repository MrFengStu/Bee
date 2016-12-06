package com.bc.bee.browse.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.FormSubmitEvent.MethodType;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.bc.bee.browse.dao.JiaoliatDao;
import com.bc.bee.browse.dao.PreviewDao;
import com.bc.bee.entity.Comment;
import com.bc.bee.entity.PUser;
import com.bc.bee.entity.Resume;
import com.bc.bee.entity.TDeInfo;
import com.bc.bee.entity.TUser;
import com.bc.bee.jiazhanginfo.service.JiainfoServiceImpl;


@Controller
public class JiaolistController{

	
	@Resource
	private JiaoliatDao JiaoliatDao;
	@Resource
	private PreviewDao PreviewDao;
	
	@RequestMapping("jiaoyuan")
	public String jiao(HttpServletRequest request,HttpSession session){
		
		List<Resume> resumes=this.JiaoliatDao.findAll();
		session.setAttribute("resumes", resumes);
		
		return "jiaoyuanlist";
	
	}
	
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
