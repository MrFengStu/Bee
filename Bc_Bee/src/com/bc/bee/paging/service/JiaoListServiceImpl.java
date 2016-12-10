package com.bc.bee.paging.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bc.bee.entity.Resume;
import com.bc.bee.paging.dao.JiaoListDaoImpl;
import com.framework.Page2;

@Service
public class JiaoListServiceImpl {
	@Resource
	private JiaoListDaoImpl jiaoListDaoImpl;
	
	public Page2 queryForPage(int currentPage, int pageSize) {
		Page2 page = new Page2();
		// 总记录数
		int allRow = jiaoListDaoImpl.getAllRowCount();
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<Resume> list = jiaoListDaoImpl.queryForPage(offset, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList2(list);
		return page;

	}

	public int ServicegetCount() {
		return jiaoListDaoImpl.getAllRowCount();
	}
}
