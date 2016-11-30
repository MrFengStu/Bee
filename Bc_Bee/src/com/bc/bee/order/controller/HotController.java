package com.bc.bee.order.controller;

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
import com.bc.bee.order.service.HotServiceImpl;

@Controller
public class HotController {
	@Resource
	private HotServiceImpl HotServiceImpl;
	@RequestMapping("/")
	public String order(HttpServletRequest request,HttpSession session){
		System.out.println("a");
		List<RecInfo> recinfo=this.HotServiceImpl.orderByView();
		session.setAttribute("recinfo", recinfo);
		System.out.println("b");
		List<RecInfo> recinfo1=this.HotServiceImpl.orderByTime();
		session.setAttribute("recinfo1", recinfo1);
		
		
		return "index";
		
	}
	@RequestMapping("index1")
	public String order1(HttpServletRequest request,HttpSession session){
		System.out.println("a");
		List<RecInfo> recinfo=this.HotServiceImpl.orderByView();
		session.setAttribute("recinfo", recinfo);
		System.out.println("b");
		List<RecInfo> recinfo1=this.HotServiceImpl.orderByTime();
		session.setAttribute("recinfo1", recinfo1);
		
		
		return "index1";
		
	}
	
	
	
	
}
