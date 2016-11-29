package com.bc.bee.search.controller;

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
import com.bc.bee.search.service.IndexserServiceImpl;

@Controller
public class IndexserController {
	
	@Resource
	private IndexserServiceImpl IndexserServiceImpl;
	
	@RequestMapping("search")
	public String search(HttpServletRequest request,HttpSession session){
		
		String name=request.getParameter("kd");
		
		List<RecInfo> recinfo=this.IndexserServiceImpl.findByName(name);
		session.setAttribute("recinfo", recinfo);
		
		return "list";
	}
}
