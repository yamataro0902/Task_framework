package jp.co.axiz.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.Users;
import jp.co.axiz.web.service.SuperuserInsertService;

@Service
public class SuperuserInsertServiceImpl implements SuperuserInsertService{

	@Autowired
	UsersDao ud;

	public void insertAdmin(Users users) {
		ud.insertAdmin(users);
	}


}