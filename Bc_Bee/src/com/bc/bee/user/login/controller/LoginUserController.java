package com.bc.bee.user.login.controller;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bc.bee.entity.PUser;
import com.bc.bee.entity.TUser;
import com.bc.bee.user.login.service.LoginUserServiceImpl;

@Controller
@RequestMapping("login")
public class LoginUserController {

	@Resource
	private LoginUserServiceImpl loginUserServiceImpl;

	@RequestMapping("user")
	public String login(@RequestParam("name") String email, @RequestParam("password") String pwd, 
			@RequestParam("auth") String auth,HttpServletRequest request,HttpSession session
			,HttpServletResponse response) {

		TUser tuser = this.loginUserServiceImpl.Tu_login(email, pwd);
		PUser puser = this.loginUserServiceImpl.Pu_login(email, pwd);

		String[] autologin = request.getParameterValues("autoLogin");
		if(autologin != null){
			Cookie c1 = new Cookie("email",email);
			Cookie c2 = new Cookie("pwd",pwd);
			
			c1.setMaxAge(5*60);
			c2.setMaxAge(5*60);
			
			response.addCookie(c1);
			response.addCookie(c2);
			System.out.println("记住我");
		}
		
		Object code = session.getAttribute("post_validate_code");
		String str = code.toString();
		if (tuser != null && puser == null && str.equals(auth)) {
			System.out.println("学生登录成功");
			session.setAttribute("student", tuser);
			return "index用户";
			
		}else if(puser != null && tuser == null && str.equals(auth)){
			System.out.println("家长登录成功");
			session.setAttribute("parent", puser);
			return "index用户";
		}else{
			System.out.println("登录失败");
			return "login";
		}
	}
}
