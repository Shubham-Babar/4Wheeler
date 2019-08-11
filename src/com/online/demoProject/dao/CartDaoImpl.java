package com.demoProject.dao;

import java.sql.*;
import com.demoProject.config.*;
import com.demoProject.pojo.*;
import java.util.*;

public class CartDaoImpl {

	Connection con=DBConnect.getConnect();
	public boolean addToCart(int pid,String userName) {

		String sql="insert into cart(pid,email) values(?,?)";

		try {

			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, pid);
			ps.setString(2, userName);

			int i=ps.executeUpdate();
			if(i>0) {
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}


		return false;
	}

	public boolean deleteCartByUser(String userEmail) {
		String sql="delete from cart where email=?";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,userEmail);
			int i=ps.executeUpdate();
			if(i>0) {return true;

			}}catch(Exception e) {
				e.printStackTrace();
			}

		return false;
	}


	public List<Cart> getCartList(String email){
		List<Cart>  cl=new ArrayList<>();
		String sql="select cartId,pname,price,pdescription from product p  inner join cart c on p.pid=c.pid where email=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Cart p=new Cart();
				p.setCartId(rs.getInt(1));
				p.setPname(rs.getString(2));

				p.setPrice(rs.getDouble(3));
				p.setPdescription(rs.getString(4));

				cl.add(p);
			}
			return cl;

		}catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}
}
