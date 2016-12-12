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

import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.Resume;
import com.bc.bee.browse.dao.JoblistDao;

@Controller
public class JoblistController {
	
	@Resource
	private JoblistDao JoblistDao;
	
//	@RequestMapping("joblist")
//	public String jiao(HttpServletRequest request,HttpSession session){
//		
//		List<RecInfo> recinfo=this.JoblistDao.findAll();
//		session.setAttribute("recinfo", recinfo);
//		
//		return "list";
//	}
//	
	@RequestMapping("job1")
	public String job(String id,HttpServletRequest request,HttpSession session){
		
		//String id=request.getParameter("id");
		System.out.println(id);
		Integer idn = Integer.parseInt(id);
		System.out.println(idn);
		
		List<RecInfo> recinfo1=this.JoblistDao.findById(idn);
		session.setAttribute("recinfo1", recinfo1);
		
		return "jobdetail1";
	
	}

}
