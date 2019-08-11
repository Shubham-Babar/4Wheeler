package com.demoProject.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.demoProject.config.DBConnect;
import com.demoProject.pojo.User;

public class UserDaoImpl implements UserDao{

	Connection con=DBConnect.getConnect();
	public boolean addUser(User u) {
		String sql="insert into user(name,contact,email,address,pass) values(?,?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getContact());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getAddress());
			ps.setString(5, u.getPassword());
			int i=ps.executeUpdate();
			if(i>0)
			{return true;

			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean updateUser(User u) {
		String sql="update user set name=?,contact=?,email=?,address=?,pass=? where id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getContact());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getAddress());
			ps.setString(5, u.getPassword());
			ps.setInt(6, u.getId());
			int i=ps.executeUpdate();
			if(i>0)
			{return true;

			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteUser(int userId) {
		String sql="delete from user where id=?";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,userId);
			int i=ps.executeUpdate();
			if(i>0) {return true;

			}}catch(Exception e) {
				e.printStackTrace();
			}

		return false;
	}


	@Override
	public User getUserById(int userId) {
		
		String sql="select * from user where id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, userId);
			ResultSet rs=ps.executeQuery();
			User u=new User();
			if(rs.next()) {
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setContact(rs.getString(3));
				u.setEmail(rs.getString(4));
				u.setAddress(rs.getString(5));
				u.setPassword(rs.getString(6));
				return u;
			}
		}
		catch(Exception e) {
			e.getStackTrace();
		}

		return null;
	}

	@Override
	public List<User> getAllUser() {
		List<User> al=new ArrayList<>();
		String sql="select * from user";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				User u=new User();
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setContact(rs.getString(3));
				u.setEmail(rs.getString(4));
				u.setAddress(rs.getString(5));
				u.setPassword(rs.getString(6));
				al.add(u);
			}
			return al;
		}
		catch(Exception e) {
			e.getStackTrace();
		}


		return null;
	}
	
	public boolean checkLogin(String uname,String pass) {
		
		String sql="select name,pass from user where name=? and pass=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,uname);
			ps.setString(2,pass);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				return true;
			}
			
		}
		catch(Exception e) {
			e.getStackTrace();
		}
		return false;
		
	}
	
	
	
	public User getUserByEmail(String userEmail) {
		
		String sql="select * from user where name=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, userEmail);
			ResultSet rs=ps.executeQuery();
			User u=new User();
			if(rs.next()) {
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setContact(rs.getString(3));
				u.setEmail(rs.getString(4));
				u.setAddress(rs.getString(5));
				u.setPassword(rs.getString(6));
				return u;
			}
		}
		catch(Exception e) {
			e.getStackTrace();
		}

		return null;
	}
	
}
