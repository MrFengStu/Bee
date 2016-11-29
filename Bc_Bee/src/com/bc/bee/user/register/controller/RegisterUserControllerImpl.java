package com.bc.bee.user.register.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bc.bee.entity.PUser;
import com.bc.bee.entity.TUser;
import com.bc.bee.user.register.service.RegisterUserServiceImpl;
import com.framework.SendMail;

@Controller
@RequestMapping("register")
public class RegisterUserControllerImpl {

	@Resource
	private RegisterUserServiceImpl registeruserserviceimpl;
	
	@RequestMapping("user")
	public String register(@RequestParam("user") String user,	
			@RequestParam("password") String password,@RequestParam("passwordaffirm") String passwordaffirm,
			@RequestParam("email") String email,@RequestParam("auth") String auth,HttpServletRequest request){
		HttpSession session=request.getSession();
		String[] types = request.getParameterValues("type");
		String sRand = session.getAttribute("sRand").toString();
		System.out.println("验证验证码"+sRand);
		TUser tuser = null;
		PUser puser = null;
		if(types[0].equals("0") && auth.equals(sRand)){
			tuser = new TUser();
			tuser.setTUName(user);
			tuser.setTUpwd(password);
			tuser.setTMailbox(email);
			this.registeruserserviceimpl.registerTUser(tuser);
			return "login";
		}else if(types[0].equals("1") && auth.equals(sRand)){
			puser = new PUser();
			puser.setPUName(user);
			puser.setPUPwd(password);
			puser.setPMailbox(email);
			this.registeruserserviceimpl.registerPUser(puser);
			return "login";
		}else{
			return "register";
		}
	}
	
	@RequestMapping(value="checkname",method=RequestMethod.GET)
	public void checkName(String user,HttpServletResponse response) {
		TUser tuser = null;
		PUser puser = null;
		tuser = this.registeruserserviceimpl.findTUserName(user);
		puser = this.registeruserserviceimpl.findPUserName(user);
		if(tuser == null && puser == null){
			try {
				response.getWriter().print("true");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else{
			try {
				response.getWriter().print("false");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	@RequestMapping(value="checkemail",method=RequestMethod.GET)
	public void checkEmail(String email,HttpServletResponse response,HttpServletRequest request){
		TUser tuser = null;
		PUser puser = null;
		tuser = this.registeruserserviceimpl.findTUserEmail(email);
		puser = this.registeruserserviceimpl.findPUserEmail(email);
		if(tuser == null && puser == null){
			try {
				SendMail s = new SendMail();
				s.send(email, request, response);
				response.getWriter().print("true");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else{
			try {
				response.getWriter().print("false");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
