package com.bc.bee.user.certification.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.PUser;
import com.bc.bee.user.certification.dao.CertificationPUserDaoImpl;

@Service
@Transactional(readOnly = true)
public class CertificationPUserServiceImpl {
	@Resource
	private CertificationPUserDaoImpl certificationPuserDaoImpl;

	@Transactional(readOnly = false)
	public void save(PUser puser, String id_num, String prname) {
		this.certificationPuserDaoImpl.save(puser, id_num, prname);
	}
}
