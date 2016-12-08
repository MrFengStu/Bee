package com.bc.bee.resumepreview.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.Resume;
import com.bc.bee.entity.TDeInfo;
import com.bc.bee.entity.TUser;
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
