package com.bc.bee.recruitment.controller;

import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bc.bee.entity.PUser;
import com.bc.bee.entity.Parcer;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.recruitment.service.RecruitmentServiceImpl;

@Controller
@RequestMapping("publish")
public class RecruitmentController {

	@Resource
	private RecruitmentServiceImpl recruitmentServiceImpl;

	java.util.List<RecInfo> list = null;

	@RequestMapping("jump")
	public String jump(Integer PUId, HttpServletRequest request, HttpSession session) {
		PUser parent = (PUser) session.getAttribute("parent");
		PUId = parent.getPUId();
		Parcer parcer = this.recruitmentServiceImpl.findParcer(PUId);
		if(parcer.getIdnum()==null || parcer.getPRName()==null || parcer.getIdnum().equals("") || parcer.getPRName().equals("")){
			return "certification_parent";
		}
		System.out.println(PUId);
		java.util.List<String> list = recruitmentServiceImpl.findTime(PUId);
		int sum = list.size();
		int last = 5 - sum;
		System.out.println(last);
		session.setAttribute("sum", sum);
		session.setAttribute("last", last);
		if (last == 0) {
			return "/recruitment_timeout";
		} else {
			return "/recruitment";
		}
	}

	@RequestMapping("add")
	public String add(RecInfo recInfo, HttpServletRequest request, HttpSession session) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		String jobTitle = request.getParameter("jobTitle");
		System.out.println(jobTitle);
		String contacts = (String) request.getParameter("contacts");
		String contactInfo = (String) request.getParameter("contactInfo");
		String shi = (String) request.getParameter("shi");
		String qu = (String) request.getParameter("qu");
		String address = (String) request.getParameter("address");
		String subject = (String) request.getParameter("subject");
		String salary = (String) request.getParameter("salary");
		String settle = (String) request.getParameter("settle");
		String stuInfo = (String) request.getParameter("stuInfo");
		String school= (String) request.getParameter("school");
		String WTime= (String) request.getParameter("WTime");
		String attract= (String) request.getParameter("attract");
		String jobDemand= (String) request.getParameter("jobDemand");
		String error = null;

		session.setAttribute("jobTitle", jobTitle);
		session.setAttribute("contacts", contacts);
		session.setAttribute("contactInfo", contactInfo);
		session.setAttribute("shi", shi);
		session.setAttribute("qu", qu);
		session.setAttribute("address", address);
		session.setAttribute("subject", subject);
		session.setAttribute("salary", salary);
		session.setAttribute("settle", settle);
		session.setAttribute("stuInfo", stuInfo);
		session.setAttribute("school", school);
		session.setAttribute("WTime", WTime);
		session.setAttribute("attract", attract);
		session.setAttribute("jobDemand", jobDemand);

		if (jobTitle == "") {
			error = "招聘题目不能为空";
			session.setAttribute("jobTitleError", error);

		}
		if (contacts == "") {
			error = "联系人不能为空";
			session.setAttribute("contactsError", error);

		}
		if (contactInfo == "") {
			error = "联系方式不能为空";
			session.setAttribute("contactInfoError", error);

		}
		if (shi == "" || qu == "") {
			error = "市和区不能为空";
			session.setAttribute("ShiQuError", error);

		}

		if (address == "") {
			error = "详细地址不能为空";
			session.setAttribute("addressError", error);

		}
		if (subject == "") {
			error = "授课科目不能为空";
			session.setAttribute("subjectError", error);

		}
		if (salary == "") {
			error = "薪资水平不能为空";
			session.setAttribute("salaryError", error);

		}
		if (settle == "") {
			error = "结算方式不能为空";
			session.setAttribute("settleError", error);

		}
		if (school == "") {
			error = "授课年级不能为空";
			session.setAttribute("gradeError", error);

		}
		if (attract == "") {
			error = "职位诱惑不能为空";
			session.setAttribute("attractError", error);

		}
		if (jobDemand == "") {
			error = "工作需求不能为空";
			session.setAttribute("jobdemandError", error);

		}
		if (WTime == "") {
			error = "授课时间不能为空";
			session.setAttribute("tiemError", error);

		}
		
		if (jobTitle == "" || contacts == "" || contactInfo == "" || shi == "" || qu == "" || address == ""
				|| subject == "" || salary == "" || settle == "" || school == "" || WTime == "" || attract == "" || jobDemand == "") {
			return "/recruitment";
		}

		else {
			PUser parent = (PUser) session.getAttribute("parent");
			recInfo.setPuser(parent);
			this.recruitmentServiceImpl.addRecruitment(recInfo);
			return "recruitment_success";
		}

	}

	@RequestMapping("preview")
	public String preview(RecInfo recInfo, HttpServletRequest request, HttpSession session) {

		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String jobTitle = (String) request.getParameter("jobTitle");
		String contacts = (String) request.getParameter("contacts");
		String contactInfo = (String) request.getParameter("contactInfo");
		String shi = (String) request.getParameter("shi");
		String qu = (String) request.getParameter("qu");
		String address = (String) request.getParameter("address");
		String subject = (String) request.getParameter("subject");
		String salary = (String) request.getParameter("salary");
		String settle = (String) request.getParameter("settle");
		String stuInfo = (String) request.getParameter("stuInfo");
		String school= (String) request.getParameter("school");
		String WTime= (String) request.getParameter("WTime");
		String attract= (String) request.getParameter("attract");
		String jobDemand= (String) request.getParameter("jobDemand");
		String error = null;

		session.setAttribute("jobTitle", jobTitle);
		session.setAttribute("contacts", contacts);
		session.setAttribute("contactInfo", contactInfo);
		session.setAttribute("shi", shi);
		session.setAttribute("qu", qu);
		session.setAttribute("address", address);
		session.setAttribute("subject", subject);
		session.setAttribute("salary", salary);
		session.setAttribute("settle", settle);
		session.setAttribute("stuInfo", stuInfo);
		session.setAttribute("school",school);
		session.setAttribute("WTime", WTime);
		session.setAttribute("attract", attract);
		session.setAttribute("jobDemand", jobDemand);
		

		if (jobTitle == "") {
			error = "招聘题目不能为空";
			session.setAttribute("jobTitleError", error);

		}
		if (contacts == "") {
			error = "联系人不能为空";
			session.setAttribute("contactsError", error);

		}
		if (contactInfo == "") {
			error = "联系方式不能为空";
			session.setAttribute("contactInfoError", error);

		}
		if (shi == "" || qu == "") {
			error = "市和区不能为空";
			session.setAttribute("ShiQuError", error);

		}

		if (address == "") {
			error = "详细地址不能为空";
			session.setAttribute("addressError", error);

		}
		if (subject == "") {
			error = "授课科目不能为空";
			session.setAttribute("subjectError", error);

		}
		if (salary == "") {
			error = "薪资水平不能为空";
			session.setAttribute("salaryError", error);

		}
		if (settle == "") {
			error = "结算方式不能为空";
			session.setAttribute("settleError", error);

		}
		if (school == "") {
			error = "授课年级不能为空";
			session.setAttribute("gradeError", error);

		}
		if (WTime == "") {
			error = "授课时间不能为空";
			session.setAttribute("tiemError", error);

		}
		if (attract == "") {
			error = "职位诱惑不能为空";
			session.setAttribute("gradeError", error);

		}
		if (jobDemand == "") {
			error = "工作需求不能为空";
			session.setAttribute("jobdemandError", error);

		}

		if (jobTitle == "" || contacts == "" || contactInfo == "" || shi == "" || qu == "" || address == ""
				|| subject == "" || salary == "" || settle == "" || school == "" || WTime == "" || attract == "" || jobDemand == "") {
			return "/recruitment";
		} else {
			return "/recruitment_preview";
		}

	}

	
}
