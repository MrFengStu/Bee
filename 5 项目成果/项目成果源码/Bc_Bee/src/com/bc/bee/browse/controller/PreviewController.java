package com.bc.bee.browse.controller;


import java.util.List;

import java.util.Date;

import java.text.SimpleDateFormat;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import com.bc.bee.entity.Comment;
import com.bc.bee.entity.PUser;

import com.bc.bee.entity.TUser;
import com.bc.bee.resumepreview.service.ResumepreviewServiceImpl;
import com.bc.bee.browse.dao.PreviewDao;
import com.bc.bee.entity.Resume;
import com.bc.bee.browse.dao.CommentDao;

@Controller
@RequestMapping("preview")
public class PreviewController {

	@Resource
	private PreviewDao PreviewDao;
	@Resource
	private ResumepreviewServiceImpl resumepreviewserviceimpl;
	@Resource
	private CommentDao CommentDao;

	@RequestMapping(value = "show")
	public String show(String id, HttpServletRequest request, HttpSession session) {

		System.out.println(id);
		Integer id2 = Integer.parseInt(id);
		System.out.println(id2);

		Resume resume = this.resumepreviewserviceimpl.findById(id2);
		session.setAttribute("resume", resume);

		List<Comment> comment = this.PreviewDao.findById(id2);
		session.setAttribute("tuser1", comment);
		System.out.println("测试");

		return "preview";
	}

	@RequestMapping(value = "save")
	public String save(String id, HttpServletRequest request, HttpSession session) {
		String text = request.getParameter("text");
		System.out.println(text);
		System.out.println(id);
		Integer id2 = Integer.parseInt(id);
		System.out.println(id2);

		Comment comment = this.PreviewDao.getComment(id2);

		if (comment != null) {
			PUser parent1 = (PUser) session.getAttribute("parent");
			comment.setPuser(parent1);
			TUser student1 = this.CommentDao.findStudent(id2);
			comment.setTuser(student1);
			comment.setComCon(text);
			Date time = new Date(System.currentTimeMillis());
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
			String current = sdf.format(time);
			comment.setCTime(time);
			this.PreviewDao.save1(comment);
		} else {
			PUser parent1 = (PUser) session.getAttribute("parent");
			TUser student1 = this.CommentDao.findStudent(id2);
			Comment comment1 = new Comment();
			comment1.setComCon(text);
			comment1.setTuser(student1);
			comment1.setPuser(parent1);
			Date time = new Date(System.currentTimeMillis());
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String current = sdf.format(time);
			comment1.setCTime(time);
			this.PreviewDao.save1(comment1);
		}

		return "accepted";

	}
}
