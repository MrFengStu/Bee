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
	
//	@RequestMapping("search")
//	public String search(HttpServletRequest request,HttpSession session){
//		
//		String name=request.getParameter("kd");
//		System.out.println(name);
//		List<RecInfo> recinfo=this.IndexserServiceImpl.findByName(name);
//		session.setAttribute("recinfo", recinfo);
//		
//		return "list";
//	}
	@RequestMapping("search1")
	public String search1(HttpServletRequest request,HttpSession session){
		
		String name=request.getParameter("kd");
		System.out.println(name);
		List<RecInfo> recinfo=this.IndexserServiceImpl.findByName1(name);
		session.setAttribute("recinfo", recinfo);
		
		return "list";
	}
	
	
	@RequestMapping("search")
	public String search(HttpServletRequest request,HttpSession session){
		
		String param=request.getParameter("param").substring(0, 2);
		String paramValue = request.getParameter("param").substring(2);
		System.out.println(param);
		System.out.println(paramValue);
		String didian = "地点";
		String chengdu = "程度";
		String xueke = "科目";
		
		if(param.equalsIgnoreCase(didian)){
			session.setAttribute("area", paramValue);
		}
		if(param.equalsIgnoreCase(chengdu)){
			session.setAttribute("school", paramValue);
		}
		if(param.equalsIgnoreCase(xueke)){
			session.setAttribute("subject", paramValue);
		}
		
		String area = (String)session.getAttribute("area");
		String school = (String)session.getAttribute("school");
		String subject = (String)session.getAttribute("subject");
		System.out.println("111"+area);
		System.out.println("222"+school);
		System.out.println("333"+subject);
		
		//area不为空
		if(session.getAttribute("area")!= null){
			 
			//school不为空
			if(session.getAttribute("school")!= null){
				
				//subject不为空
				if(session.getAttribute("subject")!=null){

					List<RecInfo> recinfo=this.IndexserServiceImpl.findByAreaSchoolSubject(area, school, subject);
					session.setAttribute("recinfo", recinfo);
				
				//subject为空
				}else{
					
					List<RecInfo> recinfo=this.IndexserServiceImpl.findByAreaSchool(area, school);

					session.setAttribute("recinfo", recinfo);
				}
			
		    //school为空
			}else{
				
				//subject不为空
				if(session.getAttribute("subject")!=null){

					List<RecInfo> recinfo=this.IndexserServiceImpl.findByAreaSubject(area,subject);
					session.setAttribute("recinfo", recinfo);
				
				//subject为空
				}else{
					
					List<RecInfo> recinfo=this.IndexserServiceImpl.findByArea(area);
					System.out.println(recinfo.get(0).getContacts());
					session.setAttribute("recinfo", recinfo);
				}
			}
  
		//area为空
		}else{
			
			//school不为空
			if(session.getAttribute("school")!= null){
				
				//subject不为空
				if(session.getAttribute("subject")!=null){

					List<RecInfo> recinfo=this.IndexserServiceImpl.findBySchoolSubject(school, subject);
					session.setAttribute("recinfo", recinfo);
				
				//subject为空
				}else{
					
					List<RecInfo> recinfo=this.IndexserServiceImpl.findBySchool(school);
					System.out.println(recinfo.get(0).getContacts()); 
					session.setAttribute("recinfo", recinfo);
				}
			
		    //school为空
			}else{
				
				//subject不为空
				if(session.getAttribute("subject")!=null){

					List<RecInfo> recinfo=this.IndexserServiceImpl.findBySubject(subject);
					session.setAttribute("recinfo", recinfo);
				
				//subject为空
				}else{
					
					
				}
			}
			
			
			
		}
 
		return "list";
	}
}
