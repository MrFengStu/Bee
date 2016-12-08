package com.bc.bee.user.upload.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.user.upload.dao.UploadDaoImpl;

@Service
@Transactional(readOnly=false)
public class UploadServiceImpl {

	@Resource
	private UploadDaoImpl uploaddaoimpl;
	
	public void upload(Integer PUId,String filePath){
		this.uploaddaoimpl.upload(PUId, filePath);
	}
}
