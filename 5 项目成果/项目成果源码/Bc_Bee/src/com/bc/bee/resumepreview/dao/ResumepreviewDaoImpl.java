package com.bc.bee.resumepreview.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.Resume;
import com.framework.BaseDao;

@Repository
public class ResumepreviewDaoImpl extends BaseDao<Resume, String> {

	public Resume findById(Integer TUId){
		try {
			return super.findOne("from Resume where TUId=?",new Object[]{TUId});
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public Resume findByName(String faculty){
		try {
			return super.findOne("from Resume where TUName=?",new Object[]{faculty});
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	
}
