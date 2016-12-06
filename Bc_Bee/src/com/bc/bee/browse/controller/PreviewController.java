package com.bc.bee.browse.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.FormSubmitEvent.MethodType;

import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bc.bee.entity.Comment;
import com.bc.bee.entity.PUser;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.TUser;
import com.bc.bee.resumepreview.service.ResumepreviewServiceImpl;
import com.bc.bee.browse.dao.PreviewDao;
import com.bc.bee.entity.Resume;

@Controller
@RequestMapping("preview")
public class PreviewController {
	
	@Resource
	private PreviewDao PreviewDao;
	@Resource
	private ResumepreviewServiceImpl resumepreviewserviceimpl;
	
	@RequestMapping(value="show")
	public String show(String id,HttpServletRequest request,HttpSession session){
		
			System.out.println(id);
			Integer id2 = Integer.parseInt(id);
			System.out.println(id2);
			
			List<Resume> resume=(List<Resume>) this.resumepreviewserviceimpl.findById(id2);
			session.setAttribute("resume", resume);
			
			List<Comment> comment=this.PreviewDao.findById(id2);
			session.setAttribute("tuser1",comment );
			System.out.println("测试");
		
			return "preview";
	}
	
	@RequestMapping(value="save")
	public String save(String id,HttpServletRequest request,HttpSession session){
		String text=(String) session.getAttribute("text");
		session.setAttribute("comment", text);
		System.out.println(id);
		Integer id2 = Integer.parseInt(id);
		System.out.println(id2);
		Comment t=(Comment) this.PreviewDao.findById(id2);
		t.setComCon(text);
		this.PreviewDao.save(t);
		
		return "preview";
	}
	
}
