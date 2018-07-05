package jp.co.axiz.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.Users;
import jp.co.axiz.web.service.InsertService;

@Service
public class InsertServiceImpl implements InsertService{

	@Autowired
	UsersDao ud;

	public void insertMembar(Users users) {
		ud.insertMembar(users);
	}


}