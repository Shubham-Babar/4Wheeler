package com.demoProject.dao;

	import java.util.List;

import com.demoProject.pojo.User;

	public interface UserDao {

	boolean addUser(User u);
	boolean updateUser(User u);
	boolean deleteUser(int userId);
	User getUserById(int userId);
	List<User> getAllUser();
	


}
