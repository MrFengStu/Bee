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
import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.TUser;
import com.bc.bee.wodexinxi.yaoqinghan.service.InvitationServiceImpl;
@Controller
@RequestMapping("Invitation")
public class InvitationController {
	@Resource
	private InvitationServiceImpl InvitationServiceImpl;
	
	//初始化方法
	@RequestMapping("Init")
	public String Init(HttpSession session){
//		TUser tuser= (TUser) session.getAttribute("TUser");
		//模拟tuser已经获取到
//		TUser tuser = new TUser();
//		tuser.setTUId(1);
//		tuser.setTUName("scbnbb");
		TUser tuser = (TUser) session.getAttribute("student");
		//根据用户Id查询出在数据库邀请表中这个用户所有的邀请记录
		List<Invitation> invitations = this.InvitationServiceImpl.findByTUId(tuser.getTUId());
//		System.out.println(invitations.size()); 查到了
		
		Iterator i=invitations.iterator();
		HashMap invitationmap=new HashMap();
		while(i.hasNext()){
			Invitation invitation = (Invitation) i.next();
//			System.out.println(invitation.getState());
			//根据邀请表中的招聘表外键得到招聘信息
			RecInfo recinfo = this.InvitationServiceImpl.findRecByRlId(invitation.getRlId());
//			System.out.println(recinfo.getAddress());
			invitationmap.put(invitation,recinfo );
			
		}
		session.setAttribute("invitationmap", invitationmap);
		session.setAttribute("name", tuser.getTUName());
		return "mList";
	}
	//删除
	@RequestMapping(value="delete",method=RequestMethod.GET)
	public String Delete(@RequestParam("InId") int InId,HttpSession session){
		System.out.println(InId);
		//因为是级联，所以不能直接删
	//	this.InvitationServiceImpl.deleteByInId(InId);
		return "mList";
	}
}
