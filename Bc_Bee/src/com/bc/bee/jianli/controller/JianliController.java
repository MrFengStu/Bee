<<<<<<< HEAD
package com.bc.bee.jianli.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bc.bee.entity.Resume;
import com.bc.bee.entity.TDeInfo;
import com.bc.bee.entity.TUser;
import com.bc.bee.jianli.service.JianliServiceImpl;

@Controller
@RequestMapping("jianli")
public class JianliController {
	@Resource
	private JianliServiceImpl JianliServiceImpl;
	
	@RequestMapping("jiben")
	public String jibenUpdate(@RequestParam("name") String name,@RequestParam("topDegree") String topDegree,
			@RequestParam("gender") String gender,
			@RequestParam("grade") String grade,@RequestParam("tel") String tel,
			@RequestParam("email") String email,HttpSession session){
		
		TDeInfo tde = (TDeInfo) session.getAttribute("TDeInfo");
		try {
			name = new String(name.getBytes("iso-8859-1"),"utf-8");
			topDegree =new String(name.getBytes("iso-8859-1"),"utf-8");
			gender = new String(name.getBytes("iso-8859-1"),"utf-8");
			grade = new String(grade.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		tde.setTMailbox(email);
		tde.setTGrade(grade);
		tde.setTContactInfo(tel);
		this.JianliServiceImpl.jibenUpdate(tde);
		return "jianli";
	}
	
	@RequestMapping("jianliqw")
	public String jianliQW(@RequestParam("expectCity") String area,@RequestParam("expectPosition") String sub,
			@RequestParam("expectSalary") String salary,HttpSession session){
		Resume res = (Resume) session.getAttribute("Resume");
		this.upDateTime(res);
		try {
			area = new String(area.getBytes("iso-8859-1"),"utf-8");
			sub =new String(sub.getBytes("iso-8859-1"),"utf-8");
			salary = new String(salary.getBytes("iso-8859-1"),"utf-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.JianliServiceImpl.jianliQW(res,area,sub,salary);
		return "jianli";
	}
	
	@RequestMapping("jianlijl")
	public String jianliJL(@RequestParam("positionName") String pte,HttpSession session){
		Resume res = (Resume) session.getAttribute("Resume");
		this.upDateTime(res);
		try {
			pte = new String(pte.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		this.JianliServiceImpl.jianliJL(res,pte);
		return "jianli";
	}
	
	@RequestMapping("jibenjy")
	public String jibenJY(@RequestParam("schoolName") String school,
			@RequestParam("professionalName") String major,
			HttpSession session){
		TDeInfo tde = (TDeInfo) session.getAttribute("TDeInfo");
		try {
			school = new String(school.getBytes("iso-8859-1"),"utf-8");
			major = new String(major.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		this.JianliServiceImpl.jibenJY(tde,school,major);
		return "jianli";
	}
	@RequestMapping("jianlims")
	public String jianliMS(@RequestParam("selfDescription") String brief,HttpSession session){
		Resume res = (Resume) session.getAttribute("Resume");
		this.upDateTime(res);
		try {
			brief = new String(brief.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		this.JianliServiceImpl.jianliMS(res,brief);
		return "jianli";
	}
	@RequestMapping("jianlizc")
	public String jianliZC(@RequestParam("workDescription") String expertise,HttpSession session){
		Resume res = (Resume) session.getAttribute("Resume");
		this.upDateTime(res);
		try {
			expertise = new String(expertise.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		this.JianliServiceImpl.jianliZC(res,expertise);
		return "jianli";
	}
	
	//对时间进行更新
	public void upDateTime(Resume res){
		Date ReTime = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		System.out.println(df.format(ReTime)); 
		
		this.JianliServiceImpl.upDateTime(res,df.format(ReTime));
	}
	
	//初始化方法
	@RequestMapping("Init")
	public String Init(HttpSession session){
		
	//	TUser tuser= (TUser) session.getAttribute("TUser");
	//模拟tuser已经获取到	
		TUser tuser = new TUser();
		tuser.setTUId(1);
		TDeInfo tde = JianliServiceImpl.jiben(tuser.getTUId());
		session.setAttribute("TDeInfo", tde);
//		System.out.println(tde.getTMailbox());
		session.setAttribute("name", tde.getTName());//用户名
		session.setAttribute("grade", tde.getTGrade());//年级
		session.setAttribute("sex", tde.getTSex());//性别
		session.setAttribute("tel", tde.getTContactInfo());//电话号
		session.setAttribute("email", tde.getTMailbox());//邮箱
		session.setAttribute("major", tde.getTMajor());//专业
		session.setAttribute("college", tde.getTCollege());//学校
	
		Resume res = JianliServiceImpl.jianli(tuser.getTUId());
		session.setAttribute("Resume", res);
		session.setAttribute("area", res.getArea());//期望工作地点
		session.setAttribute("sub", res.getTeaSubject());//期望所教科目
		session.setAttribute("salary", res.getSalary());//期望薪资
		session.setAttribute("pte", res.getPte());//兼职经历
		session.setAttribute("ted", res.getTed());//教育经历
		session.setAttribute("brief", res.getBrief());//个人介绍
		session.setAttribute("ReTime", res.getReTime());//更新时间
		System.out.println(res.getReTime());
		session.setAttribute("expertise", res.getExpertise());//用数据库表中个人专长字段代替作品展示
		return "jianli";
		
	}
}
=======
package com.bc.bee.jianli.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bc.bee.entity.Resume;
import com.bc.bee.entity.TDeInfo;
import com.bc.bee.entity.TUser;
import com.bc.bee.jianli.service.JianliServiceImpl;

@Controller
@RequestMapping("jianli")
public class JianliController {
	@Resource
	private JianliServiceImpl JianliServiceImpl;
	
	@RequestMapping("jiben")
	public String jibenUpdate(@RequestParam("name") String name,@RequestParam("topDegree") String topDegree,
			@RequestParam("gender") String gender,
			@RequestParam("grade") String grade,@RequestParam("tel") String tel,
			@RequestParam("email") String email,HttpSession session){
		
		TDeInfo tde = (TDeInfo) session.getAttribute("TDeInfo");
		try {
			name = new String(name.getBytes("iso-8859-1"),"utf-8");
			topDegree =new String(name.getBytes("iso-8859-1"),"utf-8");
			gender = new String(name.getBytes("iso-8859-1"),"utf-8");
			grade = new String(grade.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		tde.setTMailbox(email);
		tde.setTGrade(grade);
		tde.setTContactInfo(tel);
		this.JianliServiceImpl.jibenUpdate(tde);
		return "jianli";
	}
	
	@RequestMapping("jianliqw")
	public String jianliQW(@RequestParam("expectCity") String area,@RequestParam("expectPosition") String sub,
			@RequestParam("expectSalary") String salary,HttpSession session){
		Resume res = (Resume) session.getAttribute("Resume");
		this.upDateTime(res);
		try {
			area = new String(area.getBytes("iso-8859-1"),"utf-8");
			sub =new String(sub.getBytes("iso-8859-1"),"utf-8");
			salary = new String(salary.getBytes("iso-8859-1"),"utf-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.JianliServiceImpl.jianliQW(res,area,sub,salary);
		return "jianli";
	}
	
	@RequestMapping("jianlijl")
	public String jianliJL(@RequestParam("positionName") String pte,HttpSession session){
		Resume res = (Resume) session.getAttribute("Resume");
		this.upDateTime(res);
		try {
			pte = new String(pte.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		this.JianliServiceImpl.jianliJL(res,pte);
		return "jianli";
	}
	
	@RequestMapping("jibenjy")
	public String jibenJY(@RequestParam("schoolName") String school,
			@RequestParam("professionalName") String major,
			HttpSession session){
		TDeInfo tde = (TDeInfo) session.getAttribute("TDeInfo");
		try {
			school = new String(school.getBytes("iso-8859-1"),"utf-8");
			major = new String(major.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		this.JianliServiceImpl.jibenJY(tde,school,major);
		return "jianli";
	}
	@RequestMapping("jianlims")
	public String jianliMS(@RequestParam("selfDescription") String brief,HttpSession session){
		Resume res = (Resume) session.getAttribute("Resume");
		this.upDateTime(res);
		try {
			brief = new String(brief.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		this.JianliServiceImpl.jianliMS(res,brief);
		return "jianli";
	}
	@RequestMapping("jianlizc")
	public String jianliZC(@RequestParam("workDescription") String expertise,HttpSession session){
		Resume res = (Resume) session.getAttribute("Resume");
		this.upDateTime(res);
		try {
			expertise = new String(expertise.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		this.JianliServiceImpl.jianliZC(res,expertise);
		return "jianli";
	}
	
	//对时间进行更新
	public void upDateTime(Resume res){
		Date ReTime = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		System.out.println(df.format(ReTime)); 
		
		this.JianliServiceImpl.upDateTime(res,df.format(ReTime));
	}
	
	//初始化方法
	@RequestMapping("Init")
	public String Init(HttpSession session){
		
	//	TUser tuser= (TUser) session.getAttribute("TUser");
	//模拟tuser已经获取到	
		TUser tuser = new TUser();
		tuser.setTUId(1);
		TDeInfo tde = JianliServiceImpl.jiben(tuser.getTUId());
		session.setAttribute("TDeInfo", tde);
//		System.out.println(tde.getTMailbox());
		session.setAttribute("name", tde.getTName());//用户名
		session.setAttribute("grade", tde.getTGrade());//年级
		session.setAttribute("sex", tde.getTSex());//性别
		session.setAttribute("tel", tde.getTContactInfo());//电话号
		session.setAttribute("email", tde.getTMailbox());//邮箱
		session.setAttribute("major", tde.getTMajor());//专业
		session.setAttribute("college", tde.getTCollege());//学校
	
		Resume res = JianliServiceImpl.jianli(tuser.getTUId());
		session.setAttribute("Resume", res);
		session.setAttribute("area", res.getArea());//期望工作地点
		session.setAttribute("sub", res.getTeaSubject());//期望所教科目
		session.setAttribute("salary", res.getSalary());//期望薪资
		session.setAttribute("pte", res.getPte());//兼职经历
		session.setAttribute("ted", res.getTed());//教育经历
		session.setAttribute("brief", res.getBrief());//个人介绍
		session.setAttribute("ReTime", res.getReTime());//更新时间
		System.out.println(res.getReTime());
		session.setAttribute("expertise", res.getExpertise());//用数据库表中个人专长字段代替作品展示
		return "jianli";
		
	}
}
>>>>>>> 7314ee1be915242474e8771eb8ff06c434fc7bfe
