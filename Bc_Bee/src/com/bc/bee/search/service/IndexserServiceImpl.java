package com.bc.bee.search.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.Hotsearch;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.search.dao.IndexserDao;
import com.framework.Page2;

@Service
@Transactional(readOnly = false)
public class IndexserServiceImpl {

	@Resource
	private IndexserDao IndexserDao;

	public Page2 findByName(String name, int currentPage, int pageSize) {
//		return this.IndexserDao.findByName(name, currentPage, pageSize);
		Page2 page = new Page2();
		// 总记录数
		int allRow = IndexserDao.getAllRowCount1(name);
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<RecInfo> list = IndexserDao.findByName(name,currentPage, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList1(list);
		return page;
	}

	public Page2 findByName1(String name, int currentPage, int pageSize) {
//		return this.IndexserDao.findByName1(name, currentPage, pageSize);
		Page2 page = new Page2();
		// 总记录数
		int allRow = IndexserDao.getAllRowCount2(name);
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<RecInfo> list = IndexserDao.findByName1(name,currentPage, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList1(list);
		return page;
	}

	public Page2 findByAreaSchoolSubject(String area, String school, String subject, int currentPage,
			int pageSize) {
		Page2 page = new Page2();
		// 总记录数
		int allRow = IndexserDao.getAllRowCount3(area,school,subject);
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<RecInfo> list = IndexserDao.findByAreaSchoolSubject(area,school,subject,currentPage, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList1(list);
		return page;
//		return this.IndexserDao.findByAreaSchoolSubject(area, school, subject, currentPage, pageSize);
	}

	public Page2 findByAreaSchool(String area, String school, int currentPage, int pageSize) {
		Page2 page = new Page2();
		// 总记录数
		int allRow = IndexserDao.getAllRowCount4(area,school);
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<RecInfo> list = IndexserDao.findByAreaSchool(area,school,currentPage, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList1(list);
		return page;
//		return this.IndexserDao.findByAreaSchool(area, school, currentPage, pageSize);
	}

	public Page2 findBySchoolSubject(String school, String subject, int currentPage, int pageSize) {
		Page2 page = new Page2();
		// 总记录数
		int allRow = IndexserDao.getAllRowCount5(school,subject);
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<RecInfo> list = IndexserDao.findBySchoolSubject(school,subject,currentPage, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList1(list);
		return page;
//		return this.IndexserDao.findBySchoolSubject(school, subject, currentPage, pageSize);
	}

	public Page2 findByAreaSubject(String area, String subject, int currentPage, int pageSize) {
		Page2 page = new Page2();
		// 总记录数
		int allRow = IndexserDao.getAllRowCount6(area,subject);
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<RecInfo> list = IndexserDao.findByAreaSubject(area,subject,currentPage, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList1(list);
		return page;
//		return this.IndexserDao.findByAreaSubject(area, subject, currentPage, pageSize);
	}

	public Page2 findByArea(String area, int currentPage, int pageSize) {
		Page2 page = new Page2();
		// 总记录数
		int allRow = IndexserDao.getAllRowCount7(area);
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<RecInfo> list = IndexserDao.findByArea(area,currentPage, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList1(list);
		return page;
		
//		System.out.println("service实现");
//		return this.IndexserDao.findByArea(area, currentPage, pageSize);

	}

	public Page2 findBySchool(String school, int currentPage, int pageSize) {
		Page2 page = new Page2();
		// 总记录数
		int allRow = IndexserDao.getAllRowCount8(school);
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<RecInfo> list = IndexserDao.findBySchool(school,currentPage, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList1(list);
		return page;
//		return this.IndexserDao.findBySchool(school, currentPage, pageSize);
	}

	public Page2 findBySubject(String subject, int currentPage, int pageSize) {
		Page2 page = new Page2();
		// 总记录数
		int allRow = IndexserDao.getAllRowCount9(subject);
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<RecInfo> list = IndexserDao.findBySubject(subject,currentPage, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList1(list);
		return page;
//		return this.IndexserDao.findBySubject(subject, currentPage, pageSize);
	}

//	public int ServicegetCount() {
//		return IndexserDao.getAllRowCount();
//	}
}
