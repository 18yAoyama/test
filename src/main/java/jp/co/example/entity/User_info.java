package jp.co.example.entity;

public class User_info {

	private Integer userId;
	private String userName;
	private String telephone;
	private String password;

	public User_info() {

	}

	public User_info(Integer userId, String user_name, String telephone) {
		this.userId = userId;
		this.userName = user_name;
		this.telephone = telephone;
	}

	public User_info(Integer userId, String user_name, String telephone, String password) {
		this.userId = userId;
		this.userName = user_name;
		this.telephone = telephone;
		this.password = password;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


}