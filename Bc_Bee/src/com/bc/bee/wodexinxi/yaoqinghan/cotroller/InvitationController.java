package com.bc.bee.wodexinxi.yaoqinghan.cotroller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bc.bee.entity.Delivery;
import com.bc.bee.entity.Invitation;
import com.bc.bee.entity.PUser;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.Resume;
import com.bc.bee.entity.TUser;
import com.bc.bee.wodexinxi.yaoqinghan.service.InvitationServiceImpl;
import com.framework.Page;
@Controller
@RequestMapping("Invitation")
public class InvitationController {
	@Resource
	private InvitationServiceImpl InvitationServiceImpl;
	
	//初始化方法
	@RequestMapping("Init")
	public String Init(@RequestParam(name="pageNum", defaultValue="1") int pageNum,HttpSession session){
//		TUser tuser= (TUser) session.getAttribute("TUser");
		//模拟tuser已经获取到
//		TUser tuser = new TUser();
//		tuser.setTUId(1);
//		tuser.setTUName("scbnbb");
		TUser tuser = (TUser) session.getAttribute("student");
		//根据用户Id查询出在数据库邀请表中这个用户所有的邀请记录
//		List<Invitation> invitations = this.InvitationServiceImpl.findByTUId(tuser.getTUId());
//		System.out.println(invitations.size()); 查到了
		Page<Invitation> invitatins = this.InvitationServiceImpl.findJyInvitationPageList(tuser.getTUId(),pageNum, 5);
		Iterator i=invitatins.getList().iterator();
		HashMap invitationmap=new HashMap();
		while(i.hasNext()){
			Invitation invitation = (Invitation) i.next();
//			System.out.println(invitation.getState());
			//根据邀请表中的招聘表外键得到招聘信息
			RecInfo recinfo = this.InvitationServiceImpl.findRecByRlId(invitation.getRlId());
//			System.out.println(recinfo.getAddress());
			invitationmap.put(invitation,recinfo );
			
		}
		session.setAttribute("invitationPage", invitatins);
		session.setAttribute("invitationmap", invitationmap);
		session.setAttribute("name", tuser.getTUName());
		return "mList";
	}
	
	@RequestMapping("send")
	public String send(@RequestParam(name="pageNum", defaultValue="1") int pageNum,HttpSession session){
		PUser puser = (PUser)session.getAttribute("parent");
	//	List <Invitation> invitations = this.InvitationServiceImpl.findByPUId(puser.getPUId());
		Page<Invitation> invitatins = this.InvitationServiceImpl.findJzInvitationPageList(puser.getPUId(),pageNum, 5);
		Iterator i=invitatins.getList().iterator();
		HashMap invitationmap=new HashMap();
		while(i.hasNext()){
			Invitation invitation = (Invitation) i.next();
			Resume resume = this.InvitationServiceImpl.findResumeByTUId(invitation.getTuser().getTUId());
//			RecInfo recinfo = this.InvitationServiceImpl.findRecByRlId(invitation.getRlId());
			invitationmap.put(invitation,resume );
			
		}
		session.setAttribute("invitationmap", invitationmap);
		session.setAttribute("invitationPage", invitatins);
		session.setAttribute("name", puser.getPUName());
		return "parentinvit";
	}
	
	//删除
	@RequestMapping(value="delete",method=RequestMethod.GET)
	public String Delete(@RequestParam("InId") int InId,HttpSession session){
//		System.out.println(InId);
		
		this.InvitationServiceImpl.deleteByInId(InId);
		return "redirect:Init";
	}
	@RequestMapping(value="resumedelete",method=RequestMethod.GET)
	public String resumeDelete(@RequestParam("InId") int InId,HttpSession session){
//		System.out.println(InId);
		this.InvitationServiceImpl.deleteByInId(InId);
		return "redirect:send";
	}
}
