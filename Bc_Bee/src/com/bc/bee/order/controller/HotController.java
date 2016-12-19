package com.bc.bee.order.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bc.bee.entity.Hotsearch;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.order.service.HotServiceImpl;
import com.bc.bee.search.service.HotsearchServiceImpl;

@Controller
public class HotController {
	@Resource
	private HotServiceImpl HotServiceImpl;
	@Resource
	private HotsearchServiceImpl HotsearchServiceImpl;
	@RequestMapping("/")
	public String order(HttpServletRequest request,HttpSession session){
		System.out.println("a");
		List<RecInfo> recinfo=this.HotServiceImpl.orderByView();
		session.setAttribute("recinfo", recinfo);
		System.out.println("b");
		List<RecInfo> recinfo1=this.HotServiceImpl.orderByTime();
		session.setAttribute("recinfo1", recinfo1);
		
		List<Hotsearch> hotsearch=this.HotsearchServiceImpl.findByCount();
		session.setAttribute("hotsearch", hotsearch);
		
		
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
