package com.bc.bee.user.certification.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bc.bee.entity.PUser;
import com.bc.bee.user.certification.service.CertificationPUserServiceImpl;

@Controller
@RequestMapping("certification")
public class CertificationPUserController {

	@Resource
	private CertificationPUserServiceImpl certificationPuserServiceImpl;

	@RequestMapping("/puser")
	public String save(@RequestParam("name") String name, @RequestParam("ID_num") String id_num,
			HttpServletRequest request,HttpSession session) {
		PUser puser = (PUser)session.getAttribute("parent");
		if (name == null || id_num == null) {
			return "certification_parent";
		} else {
			this.certificationPuserServiceImpl.save(puser, id_num, name);
			return "certification_success";
			
		}

	}

}
