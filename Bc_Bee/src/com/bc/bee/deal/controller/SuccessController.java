package com.bc.bee.deal.controller;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bc.bee.deal.service.SuccessServiceImpl;
import com.bc.bee.entity.PUser;
import com.bc.bee.entity.Success;
import com.bc.bee.entity.TeaCer;

@Controller
@RequestMapping("success")
public class SuccessController {

	@Resource
	private SuccessServiceImpl successserviceimpl;
	
	@RequestMapping("receive")
	public String receive(@RequestParam("time") String time,HttpSession session){
		// 从session中获取家长点击的对应的学生的TUId
		Integer TUId = (Integer)session.getAttribute("success_TUId");
		PUser puser = (PUser)session.getAttribute("parent");
		Success success = new Success();
		success.setTime(time);
		success.setTUId(TUId);
		success.setPUId(puser.getPUId());
		this.successserviceimpl.updateTdinfo(TUId);
		this.successserviceimpl.saveSuccess(success);
		return "index";
	}
	
	@RequestMapping("student")
	public void student(HttpSession session){
		PUser puser = (PUser)session.getAttribute("parent");
		List<Success> list = this.successserviceimpl.findByPUId(puser.getPUId());
		Iterator i = list.iterator();
		List<TeaCer> teacers = null;
		while(i.hasNext()){
			Success success = (Success) i.next();
			TeaCer teacer = this.successserviceimpl.findByTUId(success.getTUId());
			teacers.add(teacer);
		}
		session.setAttribute("teacer", teacers);
	}
}
