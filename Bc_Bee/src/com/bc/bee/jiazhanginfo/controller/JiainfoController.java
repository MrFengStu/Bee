package com.bc.bee.jiazhanginfo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.FormSubmitEvent.MethodType;

import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bc.bee.entity.PUser;
import com.bc.bee.jiazhanginfo.service.JiainfoServiceImpl;
/**
 *  author：吴敬怡
 *  日期：2016/11/17
 *  功能：从jsp页面提交过来的参数传递到service
 *      完成所有过程后返回到本页面
 */



@Controller
@RequestMapping("jiazhang")
public class JiainfoController {

	
	@Resource
	private JiainfoServiceImpl jiainfoServiceImpl;
	
	@RequestMapping(value="edit",method=RequestMethod.POST)
	public String edit(@RequestParam("name") String name,@RequestParam("tel") String tel,
			@RequestParam("email") String email,HttpSession session){
		
		
		this.jiainfoServiceImpl.editPUser(name,tel,email);
		
		return "jiazhanginfo";
	}
	
}
