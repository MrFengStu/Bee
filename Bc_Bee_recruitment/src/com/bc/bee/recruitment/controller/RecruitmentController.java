package com.bc.bee.recruitment.controller;

import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.sql.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bc.bee.entity.RecInfo;
import com.bc.bee.recruitment.service.RecruitmentServiceImpl;


import antlr.collections.List;



@Controller
@RequestMapping("publish")
public class RecruitmentController {
	
	
	@Resource
	private RecruitmentServiceImpl recruitmentServiceImpl;
	private Integer PUser;
	
	@RequestMapping("jump")
	public String jump(Integer PUser){
		java.util.List<RecInfo> list = recruitmentServiceImpl.findTime(PUser);
		System.out.println(list);
		return "/recruitment";
	}
	
	
	@RequestMapping("add")
	public String add(RecInfo recInfo){
		this.recruitmentServiceImpl.addRecruitment(recInfo);
		return "/recruitment_success";
	}
	

	
	@RequestMapping("preview")
	public String preview(HttpServletRequest request,HttpSession session){
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String jobTitle = (String)request.getParameter("jobTitle");
		String contacts = (String)request.getParameter("contacts");
		String contactInfo = (String)request.getParameter("contactInfo");
		String shi = (String)request.getParameter("shi");
		String qu = (String)request.getParameter("qu");
		String address = (String)request.getParameter("address");
		String subject = (String)request.getParameter("subject");
		String salary = (String)request.getParameter("salary");
		String settle = (String)request.getParameter("settle");
		String stuInfo = (String)request.getParameter("stuInfo");
		String error = null;

		 
			session.setAttribute("jobTitle",jobTitle);
			session.setAttribute("contacts",contacts);
			session.setAttribute("contactInfo",contactInfo);
			session.setAttribute("shi",shi);
			session.setAttribute("qu",qu);
			session.setAttribute("address",address);
			session.setAttribute("subject",subject);
			session.setAttribute("salary",salary);
			session.setAttribute("settle",settle);
			session.setAttribute("stuInfo",stuInfo);

			
			if(jobTitle == ""){
				error="��Ƹ��Ŀ����Ϊ��";
				session.setAttribute("jobTitleError", error);
			 
			}
			if(contacts == ""){
				error="��ϵ�˲���Ϊ��";
				session.setAttribute("contactsError", error);
			 
			}
			if(contactInfo == ""){
				error="��ϵ��ʽ����Ϊ��";
				session.setAttribute("contactInfoError", error);
			 
			}
			if(shi == ""||qu == ""){
				error="�к�������Ϊ��";
				session.setAttribute("ShiQuError", error);
				 
			}
			 
			if(address == ""){
				error="��ϸ��ַ����Ϊ��";
				session.setAttribute("addressError", error);
				 
			
			}
			if(subject == ""){
				error="�ڿο�Ŀ����Ϊ��";
				session.setAttribute("subjectError", error);

			}
			if(salary == ""){
				error="н��ˮƽ����Ϊ��";
				session.setAttribute("salaryError", error);
				 
			
			}
			if(settle == ""){
				error="���㷽ʽ����Ϊ��";
				session.setAttribute("settleError", error);
				 
			
			}
			 
			if(jobTitle == ""||contacts == ""||contactInfo == ""||shi == ""||qu == ""||address == ""||subject == ""||salary == ""|| settle == ""){
				return "/recruitment";
			}
			
			return "/recruitment_preview";
	
	
}
}

