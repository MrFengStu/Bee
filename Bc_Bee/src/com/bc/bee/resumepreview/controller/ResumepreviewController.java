package com.bc.bee.resumepreview.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bc.bee.entity.PUser;
import com.bc.bee.entity.Resume;
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
		
		List<Resume> resume=(List<Resume>) this.resumepreviewserviceimpl.findById(TUId);
		session.setAttribute("resume", resume);
		return "preview";
	}

	
}
