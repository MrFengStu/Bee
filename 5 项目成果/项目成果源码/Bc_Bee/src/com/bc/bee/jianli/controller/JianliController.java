package com.bc.bee.jianli.controller;

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
	public String jibenUpdate(@RequestParam("name") String name,@RequestParam("topDegree") String grade,
			@RequestParam("gender") String tsex,
			@RequestParam("grade") String tmajor,@RequestParam("tel") String tel,
			@RequestParam("college") String college,
			@RequestParam("email") String email,HttpSession session){
		
		TDeInfo tde = (TDeInfo) session.getAttribute("TDeInfo");
	//	System.out.println(gender);
		tde.setTName(name);
		this.upDatejianliTUName(name, session);
		tde.setTMailbox(email);
		tde.setTGrade(grade);
		tde.setTCollege(college);
		tde.setTSex(tsex);
		tde.setTMajor(tmajor);
		tde.setTContactInfo(tel);
//		System.out.println(tde.getCount());
		if(tde.getCount()==null){
			tde.setCount(0);
		}
		this.JianliServiceImpl.jibenUpdate(tde);
		return "redirect:Init";
	}
	//修改简历表中的TUName字段
	public void upDatejianliTUName(String name,HttpSession session){
		Resume res = (Resume) session.getAttribute("Resume");
		this.upDateTime(res);
		res.setTUName(name);
		this.JianliServiceImpl.upDatejianli(res);
	}
	
	@RequestMapping("jianliqw")
	public String jianliQW(@RequestParam("expectCity") String area,@RequestParam("expectPosition") String sub,
			@RequestParam("expectSalary") String salary,@RequestParam("mode") String teaMode,HttpSession session){
		Resume res = (Resume) session.getAttribute("Resume");
		this.upDateTime(res);
		this.JianliServiceImpl.jianliQW(res,area,sub,salary,teaMode);
		return "redirect:Init";
	}
	
	@RequestMapping("jianlijl")
	public String jianliJL(@RequestParam("positionName") String pte,@RequestParam("sgrade") String sGrade,HttpSession session){
		Resume res = (Resume) session.getAttribute("Resume");
		this.upDateTime(res);
		this.JianliServiceImpl.jianliJL(res,pte,sGrade);
		return "jianli";
	}
	
	@RequestMapping("jianlijy")
	public String jibenJY(@RequestParam("ted") String ted,
			HttpSession session){
		Resume res = (Resume) session.getAttribute("Resume");
		this.upDateTime(res);
		this.JianliServiceImpl.jianliJY(res,ted);
		return "jianli";
	}
	@RequestMapping("jianlims")
	public String jianliMS(@RequestParam("selfDescription") String brief,HttpSession session){
		Resume res = (Resume) session.getAttribute("Resume");
		this.upDateTime(res);
//		try {
//			brief = new String(brief.getBytes("iso-8859-1"),"utf-8");
//		} catch (UnsupportedEncodingException e) {
//			e.printStackTrace();
//		}
		this.JianliServiceImpl.jianliMS(res,brief);
		return "jianli";
	}
	@RequestMapping("jianlizc")
	public String jianliZC(@RequestParam("workDescription") String expertise,@RequestParam("discount") String discount,HttpSession session){
		Resume res = (Resume) session.getAttribute("Resume");
		this.upDateTime(res);

		this.JianliServiceImpl.jianliZC(res,expertise,discount);
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
	//	TUser tuser = new TUser();
	//	tuser.setTUId(1);
		TUser tuser = (TUser) session.getAttribute("student");
		TDeInfo tde = JianliServiceImpl.jiben(tuser.getTUId());
		session.setAttribute("TDeInfo", tde);
//		System.out.println(tde.getTMailbox());
//		System.out.println(tde.getTName());
		session.setAttribute("name1", tde.getTName());//用户名
		session.setAttribute("grade", tde.getTGrade());//年级
		session.setAttribute("sex", tde.getTSex());//性别
		session.setAttribute("tel", tde.getTContactInfo());//电话号
		session.setAttribute("email", tde.getTMailbox());//邮箱
		session.setAttribute("major", tde.getTMajor());//专业
		session.setAttribute("college", tde.getTCollege());//学校
	
		Resume res = JianliServiceImpl.jianli(tuser.getTUId());
//		System.out.println(res.getArea());
		session.setAttribute("Resume", res);
		session.setAttribute("area", res.getArea());//期望工作地点
		session.setAttribute("sub", res.getTeaSubject());//期望所教科目
		session.setAttribute("salary", res.getSalary());//期望薪资
		session.setAttribute("pte", res.getPte());//兼职经历
		session.setAttribute("teamode", res.getTeaMode()); //授课方式
		session.setAttribute("sgrade", res.getSGrade()); //所教学生年级
		session.setAttribute("ted", res.getTed());//教育经历
		session.setAttribute("discount", res.getDiscount());//优惠信息
		session.setAttribute("brief", res.getBrief());//个人介绍
		session.setAttribute("ReTime", res.getReTime());//更新时间
		System.out.println("插入时间"+res.getReTime());
		session.setAttribute("expertise", res.getExpertise());//用数据库表中个人专长字段代替作品展示
		return "jianli";
		
	}
}
