package com.bc.bee.user.certification.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.TUser;
import com.bc.bee.user.certification.dao.CertificationTUserDaoImpl;

@Service
@Transactional(readOnly = true)
public class CertificationTUserServiceImpl {
	@Resource
	private CertificationTUserDaoImpl certificationTuserDaoImpl;

	@Transactional(readOnly = false)
	public void save(TUser tuser, String id_num, String sid_num, String name) {
		this.certificationTuserDaoImpl.save(tuser, id_num, sid_num, name);
	}
}
