package jp.co.example.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jp.co.example.dao.impl.LoginDao;
import jp.co.example.dao.impl.SearchDao;
import jp.co.example.entity.Admin;
import jp.co.example.entity.User_info;

@Service
public class LoginService {

	@Autowired
	private SearchDao search;

	@Autowired
	private LoginDao login;

	//全件表示
	public List<User_info> findAll (){
		return search.findAll();
	}


	//IDとPASSを基にadminテーブルに該当するレコードを返す
	public Admin getAdmin (String id, String pass) {
		return login.login(id, pass);
	}


}
