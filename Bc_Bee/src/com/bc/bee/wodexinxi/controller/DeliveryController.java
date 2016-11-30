package com.bc.bee.wodexinxi.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.context.expression.MapAccessor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bc.bee.entity.Delivery;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.TUser;
import com.bc.bee.wodexinxi.service.DeliveryServiceImpl;

@Controller
@RequestMapping("Delivery")
public class DeliveryController {
	@Resource
	private DeliveryServiceImpl DeliveryServiceImpl;
	
	//初始化方法
	@RequestMapping("Init")
	public String Init(HttpSession session){
//	TUser tuser= (TUser) session.getAttribute("TUser");
	//模拟tuser已经获取到	
//		TUser tuser = new TUser();
//		tuser.setTUId(1);
//		tuser.setTUName("scbnbb");
		TUser tuser = (TUser) session.getAttribute("student");
		//根据用户Id查询出在数据库投递表中这个用户所有的投递记录
		List<Delivery> deliverys = DeliveryServiceImpl.findByTUId(tuser.getTUId());
		
		//根据deliverys中的招聘表外键找到家长招聘表记录
		
		//  循环遍历deliverys ，每一个delivery都有一个招聘recinfo，用键值对的方式存到map中
		Iterator i=deliverys.iterator();
		HashMap map=new HashMap();
		HashMap mapa=new HashMap();
		HashMap mapb=new HashMap();
		HashMap mapc=new HashMap();
		HashMap mapd=new HashMap();
		HashMap mape=new HashMap();
		while(i.hasNext()){
			Delivery delivery = (Delivery) i.next();
			RecInfo recinfo = DeliveryServiceImpl.findByRlId(delivery.getRlId());
			if(delivery.getState()=='a'){
				mapa.put(delivery, recinfo);
			}else if(delivery.getState()=='b'){
				mapb.put(delivery, recinfo);
			}
			else if(delivery.getState()=='c'){
				mapc.put(delivery, recinfo);
			}
			else if(delivery.getState()=='d'){
				mapd.put(delivery, recinfo);
			}
			else{
				mape.put(delivery, recinfo);
			}
			map.put(delivery, recinfo);
		}
		session.setAttribute("name", tuser.getTUName());
		
		session.setAttribute("map", map);
		session.setAttribute("mapa", mapa);
		session.setAttribute("mapb", mapb);
		session.setAttribute("mapc", mapc);
		session.setAttribute("mapd", mapd);
		session.setAttribute("mape", mape);
		return "delivery";
	}
	//投递成功
		@RequestMapping("a")
		public String A(HttpSession session,HttpServletRequest request){
			HashMap mapa=(HashMap) session.getAttribute("mapa");
			request.setAttribute("map", mapa);
			return "delivery";
		}
		//被查看
		@RequestMapping("b")
		public String B(HttpSession session,HttpServletRequest request){
			HashMap mapb=(HashMap) session.getAttribute("mapb");
			request.setAttribute("map", mapb);
			return "delivery";
		}			
		//通过初筛
		@RequestMapping("c")
		public String C(HttpSession session,HttpServletRequest request){
			HashMap mapc=(HashMap) session.getAttribute("mapc");
			request.setAttribute("map", mapc);
			return "delivery";
		}
		//通知面试
		@RequestMapping("d")
		public String D(HttpSession session,HttpServletRequest request){
			HashMap mapd=(HashMap) session.getAttribute("mapd");
			request.setAttribute("map", mapd);
			return "delivery";
		}
		//不合适
		@RequestMapping("e")
		public String E(HttpSession session,HttpServletRequest request){
			HashMap mape=(HashMap) session.getAttribute("mape");
			request.setAttribute("map", mape);
			return "delivery";
		}
		//删除
		@RequestMapping(value="delete",method=RequestMethod.GET)
		public String Delete(@RequestParam("DeId") int DeId,HttpSession session){
//			System.out.println(DeId);
			//因为是级联，所以不能直接删
		//	this.DeliveryServiceImpl.deleteByDeId(DeId);
			return "delivery";
		}
}
