package com.bc.bee.paging.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bc.bee.entity.Resume;
import com.bc.bee.paging.service.JiaoListServiceImpl;
import com.framework.Page2;

@Controller
public class JiaoListController {
	@Resource
	private JiaoListServiceImpl jiaoListServiceImpl;
	

	// 找到所有的记录并实现了分页
	@RequestMapping("jiaoyuan")
	public String findAll(HttpServletRequest request, HttpServletResponse response, ModelMap modelMap) {
		String pageNo = request.getParameter("pageNo");
		if (pageNo == null) {
			pageNo = "1";
		}
		Page2 page = jiaoListServiceImpl.queryForPage(Integer.valueOf(pageNo), 6);
		request.setAttribute("page", page);
		List<Resume> list = page.getList2();
		modelMap.put("list", list);
		return "jiaoyuanlist";
	}
}
