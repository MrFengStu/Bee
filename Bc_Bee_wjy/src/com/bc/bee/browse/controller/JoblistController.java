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
	
	@RequestMapping("/")
	public void jiao(HttpServletRequest request,HttpSession session){
		
		List<RecInfo> recinfo=this.JoblistDao.findAll();
		session.setAttribute("recinfo", recinfo);
		
	
	}
	
	@RequestMapping("/job1")
	public void job(HttpServletRequest request,HttpSession session){
		
		List<RecInfo> recinfo1=this.JoblistDao.findById();
		session.setAttribute("recinfo1", recinfo1);
		
	
	}

}
