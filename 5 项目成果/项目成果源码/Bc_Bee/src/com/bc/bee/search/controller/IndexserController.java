package com.bc.bee.search.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bc.bee.entity.Hotsearch;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.Resume;
import com.bc.bee.search.service.HotsearchServiceImpl;
import com.bc.bee.search.service.IndexserServiceImpl;
import com.bc.bee.search.service.TeaIndexserServiceImpl;
 
import com.framework.Page2;;

@Controller
public class IndexserController {

	@Resource
	private IndexserServiceImpl IndexserServiceImpl;
	@Resource
	private HotsearchServiceImpl HotsearchServiceImpl;
	@Resource
	private TeaIndexserServiceImpl TeaIndexserServiceImpl;

	// @RequestMapping("search")
	// public String search(HttpServletRequest request,HttpSession session){
	//
	// String name=request.getParameter("kd");
	// System.out.println(name);
	// List<RecInfo> recinfo=this.IndexserServiceImpl.findByName(name);
	// session.setAttribute("recinfo", recinfo);
	//
	// return "list";
	// }
	@RequestMapping("search1")
	public String search1(HttpServletRequest request, HttpSession session, ModelMap modelMap) {

		String name = request.getParameter("kd");
		System.out.println(name);
		String pageNo = request.getParameter("pageNo");
		if (pageNo == null) {
			pageNo = "1";
		}
		Page2 page1 = IndexserServiceImpl.findByName1(name, Integer.valueOf(pageNo), 6);
		request.setAttribute("page", page1);
		List<RecInfo> recinfo = page1.getList1();
		modelMap.put("recinfo", recinfo);
		// session.setAttribute("recinfo", recinfo);
		List<Hotsearch> hot = this.HotsearchServiceImpl.getSearch(name);
		if (hot.isEmpty()) {
			Hotsearch hot2 = new Hotsearch();
			hot2.setIncluding(name);
			hot2.setCountn(1);
			this.HotsearchServiceImpl.save1(hot2);
		} else {
			Hotsearch hot1 = hot.get(0);
			Integer count = hot1.getCountn();
			hot1.setCountn(count + 1);
			this.HotsearchServiceImpl.update(hot1);
		}

		return "list";
	}

	@RequestMapping("search")
	public String search(HttpServletRequest request, HttpSession session, ModelMap modelMap) {

		String param = request.getParameter("param").substring(0, 2);
		String paramValue = request.getParameter("param").substring(2);
		System.out.println(param);
		System.out.println(paramValue);
		String didian = "地点";
		String chengdu = "程度";
		String xueke = "科目";

		if (param.equalsIgnoreCase(didian)) {
			session.setAttribute("area", paramValue);
		}
		if (param.equalsIgnoreCase(chengdu)) {
			session.setAttribute("school", paramValue);
		}
		if (param.equalsIgnoreCase(xueke)) {
			session.setAttribute("subject", paramValue);
		}

		String area = (String) session.getAttribute("area");
		String school = (String) session.getAttribute("school");
		String subject = (String) session.getAttribute("subject");
		System.out.println("111" + area);
		System.out.println("222" + school);
		System.out.println("333" + subject);

		// area不为空
		if (session.getAttribute("area") != null) {

			// school不为空
			if (session.getAttribute("school") != null) {

				// subject不为空
				if (session.getAttribute("subject") != null) {
					String pageNo = request.getParameter("pageNo");
					if (pageNo == null) {
						pageNo = "1";
					}
					Page2 page2 = IndexserServiceImpl.findByAreaSubject(area, subject, Integer.valueOf(pageNo), 6);
					request.setAttribute("page", page2);
					List<RecInfo> recinfo = page2.getList1();
					modelMap.put("recinfo", recinfo);
					// List<RecInfo>
					// recinfo=this.IndexserServiceImpl.findByAreaSchoolSubject(area,
					// school, subject);
					// session.setAttribute("recinfo", recinfo);

					// subject为空
				} else {
					String pageNo = request.getParameter("pageNo");
					if (pageNo == null) {
						pageNo = "1";
					}
					Page2 page3 = IndexserServiceImpl.findByAreaSchool(area, school, Integer.valueOf(pageNo), 6);
					request.setAttribute("page", page3);
					List<RecInfo> recinfo = page3.getList1();
					modelMap.put("recinfo", recinfo);
					// List<RecInfo> recinfo =
					// this.IndexserServiceImpl.findByAreaSchool(area, school);

					// session.setAttribute("recinfo", recinfo);
				}

				// school为空
			} else {

				// subject不为空
				if (session.getAttribute("subject") != null) {
					String pageNo = request.getParameter("pageNo");
					if (pageNo == null) {
						pageNo = "1";
					}
					Page2 page4 = IndexserServiceImpl.findByAreaSubject(area, subject, Integer.valueOf(pageNo), 6);
					request.setAttribute("page", page4);
					List<RecInfo> recinfo = page4.getList1();
					modelMap.put("recinfo", recinfo);

					// List<RecInfo> recinfo =
					// this.IndexserServiceImpl.findByAreaSubject(area,
					// subject);
					// session.setAttribute("recinfo", recinfo);

					// subject为空
				} else {
					String pageNo = request.getParameter("pageNo");
					if (pageNo == null) {
						pageNo = "1";
					}
					Page2 page5 = IndexserServiceImpl.findByArea(area, Integer.valueOf(pageNo), 6);
					request.setAttribute("page", page5);
					List<RecInfo> recinfo = page5.getList1();
					modelMap.put("recinfo", recinfo);

					// List<RecInfo> recinfo =
					// this.IndexserServiceImpl.findByArea(area);
					// System.out.println(recinfo.get(0).getContacts());
					// session.setAttribute("recinfo", recinfo);
				}
			}

		// area为空
		} else {

			// school不为空
			if (session.getAttribute("school") != null) {

				// subject不为空
				if (session.getAttribute("subject") != null) {
					String pageNo = request.getParameter("pageNo");
					if (pageNo == null) {
						pageNo = "1";
					}
					Page2 page6 = IndexserServiceImpl.findBySchoolSubject(school, subject, Integer.valueOf(pageNo), 6);
					request.setAttribute("page", page6);
					List<RecInfo> recinfo = page6.getList1();
					modelMap.put("recinfo", recinfo);

					// List<RecInfo> recinfo =
					// this.IndexserServiceImpl.findBySchoolSubject(school,
					// subject);
					// session.setAttribute("recinfo", recinfo);

					// subject为空
				} else {
					String pageNo = request.getParameter("pageNo");
					if (pageNo == null) {
						pageNo = "1";
					}
					Page2 page7 = IndexserServiceImpl.findBySchool(school, Integer.valueOf(pageNo), 6);
					request.setAttribute("page", page7);
					List<RecInfo> recinfo = page7.getList1();
					modelMap.put("recinfo", recinfo);

					// List<RecInfo> recinfo =
					// this.IndexserServiceImpl.findBySchool(school);
					// System.out.println(recinfo.get(0).getContacts());
					// session.setAttribute("recinfo", recinfo);
				}

			// school为空
			} else {

				// subject不为空
				if (session.getAttribute("subject") != null) {
					String pageNo = request.getParameter("pageNo");
					if (pageNo == null) {
						pageNo = "1";
					}
					Page2 page8 = IndexserServiceImpl.findBySubject(subject, Integer.valueOf(pageNo), 6);
					request.setAttribute("page", page8);
					List<RecInfo> recinfo = page8.getList1();
					modelMap.put("recinfo", recinfo);

					// List<RecInfo> recinfo =
					// this.IndexserServiceImpl.findBySubject(subject);
					// session.setAttribute("recinfo", recinfo);

					// subject为空
				} else {

				}
			}
		}

		return "list";
	}
	
	
	
	
	
	@RequestMapping("teasearch")
	public String teasearch(HttpServletRequest request, HttpSession session, ModelMap modelMap) {

		String param = request.getParameter("param").substring(0, 2);
		String paramValue = request.getParameter("param").substring(2);
		System.out.println(param);
		System.out.println(paramValue);
		String chengdu = "年级";
		String xueke = "科目";

 
		if (param.equalsIgnoreCase(chengdu)) {
			session.setAttribute("school", paramValue);
		}
		if (param.equalsIgnoreCase(xueke)) {
			session.setAttribute("subject", paramValue);
		}

		String school = (String) session.getAttribute("school");
		String subject = (String) session.getAttribute("subject");

		System.out.println("222" + school);
		System.out.println("333" + subject);

		

			// school不为空
			if (session.getAttribute("school") != null) {

				// subject不为空
				if (session.getAttribute("subject") != null) {
					String pageNo = request.getParameter("pageNo");
					if (pageNo == null) {
						pageNo = "1";
					}
					Page2 page2 = TeaIndexserServiceImpl.findBySchoolSubject(school, subject, Integer.valueOf(pageNo), 6);
					request.setAttribute("page", page2);
					List<Resume> resumes = page2.getList2();
					modelMap.put("resumes", resumes);
					// List<RecInfo>
					// recinfo=this.IndexserServiceImpl.findByAreaSchoolSubject(area,
					// school, subject);
					// session.setAttribute("recinfo", recinfo);

				// subject为空
				} else {
					String pageNo = request.getParameter("pageNo");
					if (pageNo == null) {
						pageNo = "1";
					}
					Page2 page3 = TeaIndexserServiceImpl.findBySchool(school, Integer.valueOf(pageNo), 6);
					request.setAttribute("page", page3);
					List<Resume> resumes = page3.getList2();
					modelMap.put("resumes", resumes);
					// List<RecInfo> recinfo =
					// this.IndexserServiceImpl.findByAreaSchool(area, school);

					// session.setAttribute("recinfo", recinfo);
				}

			// school为空
			} else {

				// subject不为空
				if (session.getAttribute("subject") != null) {
					System.out.println("测试内容");
					String pageNo = request.getParameter("pageNo");
					if (pageNo == null) {
						pageNo = "1";
					}
					Page2 page4 = TeaIndexserServiceImpl.findBySubject( subject, Integer.valueOf(pageNo), 6);
					request.setAttribute("page", page4);
					List<Resume> resumes = page4.getList2();
					System.out.println("测试内容"+resumes.get(0).getSGrade());
					modelMap.put("resumes", resumes);

					// List<RecInfo> recinfo =
					// this.IndexserServiceImpl.findByAreaSubject(area,
					// subject);
					// session.setAttribute("recinfo", recinfo);

				// subject为空
				} else {
 
					
				}
			}

		

		return "jiaoyuanlist";
	}
}
