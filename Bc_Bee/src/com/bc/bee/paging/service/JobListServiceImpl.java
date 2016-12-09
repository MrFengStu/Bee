package com.bc.bee.paging.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bc.bee.entity.RecInfo;
import com.bc.bee.paging.dao.JobListDaoImpl;
import com.framework.Page2;

@Service
public class JobListServiceImpl {
	@Resource
	private JobListDaoImpl jobListDaoImpl;

	public Page2 queryForPage(int currentPage, int pageSize) {
		Page2 page = new Page2();
		// 总记录数
		int allRow = jobListDaoImpl.getAllRowCount();
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<RecInfo> list = jobListDaoImpl.queryForPage(offset, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList(list);
		return page;

	}

	public int ServicegetCount() {
		return jobListDaoImpl.getAllRowCount();
	}
}
