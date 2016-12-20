package com.bc.bee.send.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bc.bee.entity.Invitation;
import com.bc.bee.entity.PUser;
import com.bc.bee.entity.Parcer;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.TUser;
import com.bc.bee.recruitment.service.RecruitmentServiceImpl;
import com.bc.bee.send.service.SaveServiceImpl;
import com.bc.bee.send.service.SendServiceImpl;

@Controller
@RequestMapping("send")
public class SendController {

	@Resource
	private SendServiceImpl sendServiceImpl;

	@Resource
	private SaveServiceImpl saveServiceImpl;

	@Resource
	private RecruitmentServiceImpl recruitmentserviceimpl;
	
	@RequestMapping("sendInvitation")
	public String sendInvitation(HttpServletRequest request, HttpSession session) {
		if(session.getAttribute("student")!=null){
			return "index";
		}
		
		Integer PUId;
		PUser parent = (PUser) session.getAttribute("parent");
		PUId = parent.getPUId();
		Parcer parcer = this.recruitmentserviceimpl.findParcer(PUId);
		if(parcer.getIdnum()==null || parcer.getPRName()==null || parcer.getIdnum().equals("") || parcer.getPRName().equals("")){
			return "certification_parent";
		}
		List<RecInfo> recInfo = (List<RecInfo>) this.sendServiceImpl.findById(PUId);

		session.setAttribute("recInfo", recInfo);

		String TUName;
		TUName = request.getParameter("param");
		session.setAttribute("TUName", TUName);

		return "invitation";

	}

	@RequestMapping("saveInvitation")
	public String saveInvitation(HttpServletRequest request, HttpSession session) {

		System.out.println("123");
		String TUName = (String) session.getAttribute("TUName");
		System.out.println("111" + TUName);
		System.out.println(TUName);
		List<TUser> tuser = this.saveServiceImpl.findByName(TUName);

		PUser parent = (PUser) session.getAttribute("parent");
		String RlIdr = request.getParameter("RlId");
		Integer RlId = Integer.parseInt(RlIdr);

		Invitation invitation = new Invitation();
		invitation.setTuser(tuser.get(0));
		invitation.setPuser(parent);
		invitation.setRlId(RlId);
		this.saveServiceImpl.save(invitation, parent, tuser.get(0));

		return "invitation";
	}

}
