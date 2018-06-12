package jp.co.example.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import jp.co.example.entity.Admin;

@Repository
public class LoginDao {

	//SQL文
	private static final String SQL_SELECT_ID_AND_PASS = "SELECT admin_id, admin_name, password FROM admin WHERE admin_id = ? AND password = ?";

	@Autowired
    private JdbcTemplate jdbcTemplate;

	//IDとPASSを基にadminテーブルに該当するレコードを返す

	public Admin login (String id, String pass) {
			List<Admin> list = jdbcTemplate.query(SQL_SELECT_ID_AND_PASS, new BeanPropertyRowMapper<Admin>(Admin.class), id, pass);

			if (list.size() == 0) {
				return null;
			}

		return list.get(0);
	}
}
