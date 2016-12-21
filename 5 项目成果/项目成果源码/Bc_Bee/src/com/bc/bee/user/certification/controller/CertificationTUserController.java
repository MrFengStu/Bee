package com.bc.bee.user.certification.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bc.bee.entity.TUser;
import com.bc.bee.user.certification.service.CertificationTUserServiceImpl;

@Controller
@RequestMapping("certification")
public class CertificationTUserController {

	@Resource
	private CertificationTUserServiceImpl certificationTuserServiceImpl;

	@RequestMapping("/tuser")
	public String save(@RequestParam("name") String name,@RequestParam("ID_num") String id_num, @RequestParam("ID_stu") String sid_num,
			HttpServletRequest request,HttpSession session) {
		TUser tuser = (TUser)session.getAttribute("student");
		if (sid_num == null || id_num == null || name == null) {
			return "certification_student";
		} else {
			this.certificationTuserServiceImpl.save(tuser, id_num, sid_num, name);
			return "certification_success";

		}

	}
}
