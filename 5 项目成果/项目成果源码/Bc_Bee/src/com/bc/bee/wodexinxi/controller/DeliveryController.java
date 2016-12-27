package com.bc.bee.wodexinxi.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bc.bee.entity.Delivery;
import com.bc.bee.entity.PUser;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.Resume;
import com.bc.bee.entity.TDeInfo;
import com.bc.bee.entity.TUser;
import com.bc.bee.wodexinxi.service.DeliveryServiceImpl;
import com.framework.Page;

@Controller
@RequestMapping("Delivery")
public class DeliveryController {
	@Resource
	private DeliveryServiceImpl DeliveryServiceImpl;
	
	//初始化方法
	@RequestMapping("Init")
	public String Init(@RequestParam(name="pageNum", defaultValue="1") int pageNum,@RequestParam(name="state", defaultValue="f") String state,HttpSession session){

		System.out.println("state:"+state);
		TUser tuser = (TUser) session.getAttribute("student");
		//根据用户Id查询出在数据库投递表中这个用户所有的投递记录
		Page<Delivery> deliverys;
		deliverys = this.DeliveryServiceImpl.findDeliveryPageList(tuser.getTUId(),pageNum,state, 5);
		//  循环遍历deliverys ，每一个delivery都有一个招聘recinfo，用键值对的方式存到map中
		Iterator i = deliverys.getList().iterator();
		HashMap map=new HashMap();

		while(i.hasNext()){
			Delivery delivery = (Delivery) i.next();
			RecInfo recinfo = DeliveryServiceImpl.findByRlId(delivery.getRlId());

			map.put(delivery, recinfo);
		}
		session.setAttribute("name", tuser.getTUName());
		session.setAttribute("deliveryPage", deliverys);
		session.setAttribute("map", map);
		session.setAttribute("jyDeliveryState", state);
		return "delivery";
	}

		//删除
		@RequestMapping(value="delete",method=RequestMethod.GET)
		public String Delete(@RequestParam("DeId") int DeId,HttpSession session){
			Delivery delivery = this.DeliveryServiceImpl.findByDeId(DeId);
			this.DeliveryServiceImpl.deleteByDeId(DeId);
			return "redirect:Init";
		}
		//家长收到的简历投递
		@RequestMapping("jiazhangInit")
		public String jiazhangInit(@RequestParam(name="pageNum", defaultValue="1") int pageNum,@RequestParam(name="state", defaultValue="a") String state,HttpSession session){
			System.out.println("state:"+state);
			PUser puser = (PUser) session.getAttribute("parent");
			//根据家长用户Id查询出在数据库投递表中这个家长所有的投递记录
			//			List<Delivery> deliverys = DeliveryServiceImpl.findByPUId(puser.getPUId());
			Page<Delivery> deliverys = DeliveryServiceImpl.findJzDeliveryPageList(puser.getPUId(),pageNum,state, 5);

//			System.out.println(deliverys.getList().size());
			List<List> ParDeList = new ArrayList<List>();

			Iterator i=deliverys.getList().iterator();
			while(i.hasNext()){
				Delivery delivery = (Delivery) i.next();
				RecInfo recinfo = DeliveryServiceImpl.findByRlId(delivery.getRlId()); 	//得到
				Resume resume = DeliveryServiceImpl.findByReId(delivery.getReId());		//得到
				TUser tuser = delivery.getTuser();		//得到
		
				TDeInfo tdeinfo = tuser.getTdeinfo();		//得到
				List<String> list = new ArrayList();
				list.add(recinfo.getGrade());		//授课年级0
				list.add(recinfo.getSubject());		//授课科目1
				list.add(delivery.getDeTime().toString());   //投递时间2
				list.add(tdeinfo.getTName());				//教员姓名3
				list.add(tdeinfo.getTSex());				//教员性别4
				list.add(tdeinfo.getTGrade());				//教员年级5
				list.add(tdeinfo.getTCollege());			//教员学校6
				list.add(tdeinfo.getTMajor());				//教员专业7
				list.add(tdeinfo.getTContactInfo());        //教员手机号8
				list.add(tdeinfo.getTMailbox());			//教员邮箱9
				list.add(resume.getTeaSubject());			//擅长科目10
				list.add(resume.getSalary());				//期望薪资11
				list.add(delivery.getDeId().toString());    //投递表主键12
				ParDeList.add(list);
//				ParDeList.add(list);
//				System.out.println(list.get(3));
			}
			System.out.println("page的长度："+deliverys.getList().size());
			session.setAttribute("ParDeList", ParDeList);
			session.setAttribute("jianlivar", state);
			session.setAttribute("deliveryPage", deliverys);
			return "canInterviewResumes";
		}
		//待处理简历
		@RequestMapping("jiazhanga")
		public String jiazhangA(HttpSession session,HttpServletRequest request){
			List<List> ParDeList = (List<List>) session.getAttribute("ParDeListA");
			session.setAttribute("ParDeList", ParDeList);
			String jianlivar = "a";
			session.setAttribute("jianlivar", jianlivar);
			return "canInterviewResumes";
		}
		//待定简历
		@RequestMapping("jiazhangb")
		public String jiazhangB(HttpSession session,HttpServletRequest request){
			List<List> ParDeList = (List<List>) session.getAttribute("ParDeListB");
			session.setAttribute("ParDeList", ParDeList);
			String jianlivar = "b";
			session.setAttribute("jianlivar", jianlivar);
			return "canInterviewResumes";
		}
		//通过初筛简历
		@RequestMapping("jiazhangc")
		public String jiazhangC(HttpSession session,HttpServletRequest request){
			List<List> ParDeList = (List<List>) session.getAttribute("ParDeListC");
			session.setAttribute("ParDeList", ParDeList);
			String jianlivar = "c";
			session.setAttribute("jianlivar", jianlivar);
			return "canInterviewResumes";
		}
		//通知面试简历
		@RequestMapping("jiazhangd")
		public String jiazhangD(HttpSession session,HttpServletRequest request){
			List<List> ParDeList = (List<List>) session.getAttribute("ParDeListD");
			session.setAttribute("ParDeList", ParDeList);
			String jianlivar = "d";
			session.setAttribute("jianlivar", jianlivar);
			return "canInterviewResumes";
		}
		//不合适简历
		@RequestMapping("jiazhange")
		public String jiazhangE(HttpSession session,HttpServletRequest request){
			List<List> ParDeList = (List<List>) session.getAttribute("ParDeListE");
			session.setAttribute("ParDeList", ParDeList);
			String jianlivar = "e";
			session.setAttribute("jianlivar", jianlivar);
			return "canInterviewResumes";
		}
		//不合适方法
		@RequestMapping("buheshi")
		public String  Improper(@RequestParam("DeId") int DeId,HttpSession session){
//			System.out.println(DeId);
			Delivery delivery = this.DeliveryServiceImpl.findByDeId(DeId);
			delivery.setState('e');
			this.DeliveryServiceImpl.uadateDelivery(delivery);
			return "redirect:jiazhangInit";
		}
		//通知面试
		@RequestMapping("notint")
		public String NotInt(@RequestParam("DeId") int DeId,HttpSession session){
			Delivery delivery = this.DeliveryServiceImpl.findByDeId(DeId);
			delivery.setState('d');
			this.DeliveryServiceImpl.uadateDelivery(delivery);
			session.setAttribute("success_TUId", delivery.getTuser().getTUId());
	//		System.out.println(delivery.getTuser().getTUId());
			return "transaction";
		}
}
