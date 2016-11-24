package com.bc.bee.jianli.dao;

import org.springframework.stereotype.Repository;

import com.bc.bee.entity.Resume;
import com.bc.framework.BaseDao;

@Repository
public class JianliDaoImpl extends BaseDao<Resume, String> {

	public Resume findByTUId(Integer TUId){
		try {
			return super.findOne("from Resume lu where lu.tuser.TUId=? ", new Object[]{TUId});
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public void jianliQW(Resume res){
		try {
			super.update(res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void jianliJL(Resume res){
		try {
			super.update(res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void jianliMS(Resume res){
		try {
			super.update(res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void jianliZC(Resume res){
		try {
			super.update(res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
