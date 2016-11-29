package com.bc.bee.mailing.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bc.bee.entity.Delivery;
import com.bc.bee.entity.PUser;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.TUser;
import com.bc.bee.mailing.service.MailingServiceImpl;

@Controller
@RequestMapping("mail")
public class MailingControllerImpl {

	@Resource
	private MailingServiceImpl mailingserviceimpl;
	
	@RequestMapping("add")
	public String mail(Integer RlId, HttpSession session){
		System.out.println(RlId);
		RecInfo re = this.mailingserviceimpl.findRecInfo(RlId);
		re.getRlId();
		PUser puser = re.getPuser();
		TUser tuser = (TUser)session.getAttribute("student");
		Delivery delivery = new Delivery();
		delivery.setPuser(puser);
		delivery.setTuser(tuser);
		delivery.setRlId(re.getRlId());
		delivery.setReId(tuser.getResume().getReId());
		delivery.setState('a');
		Date time = new Date();
		delivery.setDeTime(time);
		this.mailingserviceimpl.add(delivery);
		//System.out.println(re.getPuser().getPUId());
		return "list";
	}
}
