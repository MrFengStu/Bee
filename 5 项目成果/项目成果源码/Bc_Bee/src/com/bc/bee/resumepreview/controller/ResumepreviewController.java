package com.bc.bee.resumepreview.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bc.bee.entity.Resume;
import com.bc.bee.entity.TDeInfo;
import com.bc.bee.entity.TUser;
import com.bc.bee.resumepreview.service.ResumepreviewServiceImpl;

@Controller
@RequestMapping("resumepreview")
public class ResumepreviewController {

	@Resource
	private ResumepreviewServiceImpl resumepreviewserviceimpl;
	
	@RequestMapping("resume")
	public String resumePreview(HttpServletRequest request, HttpSession session){
		Integer TUId;
		TUser student = (TUser)session.getAttribute("student");
		System.out.println("123");
		TUId = student.getTUId();
		
		 
		Resume resume=this.resumepreviewserviceimpl.findById(TUId);
		TDeInfo tdeinfo=this.resumepreviewserviceimpl.findByTUId(TUId);
		session.setAttribute("resume", resume);
		session.setAttribute("tdeinfo", tdeinfo);
 
		
		return "preview";
	}
 

	@RequestMapping("parentresume")
	public String parentResume(HttpServletRequest request, HttpSession session){
		 
		String faculty = (String) request.getParameter("faculty");
		
		System.out.println(faculty);
		TDeInfo tdeinfo=this.resumepreviewserviceimpl.findByNameP(faculty);
		Resume list= this.resumepreviewserviceimpl.findByName(faculty);
		System.out.println(tdeinfo.getTName());
		session.setAttribute("resume", list);
		session.setAttribute("tdeinfo",tdeinfo);
		return "preview";
	}
}
