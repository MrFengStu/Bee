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
import com.bc.bee.browse.dao.PreviewDao;

@Controller
@RequestMapping("preview")
public class PreviewController {
	
	@Resource
	private PreviewDao PreviewDao;
	
	@RequestMapping(value="show")
	public String show(String id,HttpServletRequest request,HttpSession session){
		
		if(session.getAttribute("student") != null && session.getAttribute("parent") == null){
			TUser student=(TUser) session.getAttribute("student");
			Integer idn=student.getTUId();
			System.out.println(id);
			
			List<Comment> comment=this.PreviewDao.findById(idn);
			session.setAttribute("tuser1",comment );
			
		}else if(session.getAttribute("student") == null && session.getAttribute("parent") != null){
			System.out.println(id);
			Integer id2 = Integer.parseInt(id);
			System.out.println(id2);
			
			List<Comment> comment=this.PreviewDao.findById(id2);
			session.setAttribute("tuser1",comment );
			System.out.println("测试");
		
		}
		
		
		
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
