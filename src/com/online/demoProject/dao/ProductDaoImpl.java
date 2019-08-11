package com.demoProject.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.*;

import com.demoProject.config.DBConnect;
import com.demoProject.pojo.Product;

public class ProductDaoImpl implements ProductDao {

	Connection con=DBConnect.getConnect();
	@Override
	public boolean addProduct(Product product) {
		String sql="insert into product (pname,pdescription,price,category) values (?,?,?,?)";
		try {

			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, product.getPname());
			ps.setString(2, product.getPdescription());
			ps.setDouble(3, product.getPrice());
			ps.setString(4, product.getCategory());
			int i=ps.executeUpdate();
			if(i>0) {
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean updateProduct(Product product) {
		String sql="update product pname=?,pdescription=?,price=? where pid=?";
		try {

			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, product.getPname());
			ps.setString(2, product.getPdescription());
			ps.setDouble(3, product.getPrice());
			ps.setString(4, product.getCategory());
			ps.setInt(5, product.getPid());
			int i=ps.executeUpdate();
			if(i>0) {
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}	return false;
	}

	@Override
	public boolean deleteProduct(int productId) {
		String sql="delete from product  where pid=?";
		try {

			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, productId);

			int i=ps.executeUpdate();
			if(i>0) {
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public Product getProductById(int prductId) {
		String sql="select * from product where pid=?";
		Product p=new Product();
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {

				p.setPid(rs.getInt(1));
				p.setPname(rs.getString(2));
				p.setPdescription(rs.getString(3));
				p.setPrice(rs.getDouble(4));
				p.setPrice(rs.getInt(5));

			}
			return p;

		}catch (Exception e) {
			e.printStackTrace();
		}


		return null;	
	}

	@Override
	public List<Product> getAllProduct() {
		List<Product> pl=new ArrayList<>();
		String sql="select * from product";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Product p=new Product();
				p.setPid(rs.getInt(1));
				p.setPname(rs.getString(2));
				p.setPdescription(rs.getString(3));
				p.setPrice(rs.getDouble(4));
				p.setCategory(rs.getString(5));
				pl.add(p);
			}
			return pl;

		}catch (Exception e) {
			e.printStackTrace();
		}

		return pl;
	}
	
	
	public List<Product> getAllProduct(String category) {
		List<Product> pl=new ArrayList<>();
		String sql="select * from product where category=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,category);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Product p=new Product();
				p.setPid(rs.getInt(1));
				p.setPname(rs.getString(2));
				p.setPdescription(rs.getString(3));
				p.setPrice(rs.getDouble(4));
				p.setCategory(rs.getString(5));
				pl.add(p);
			}
			return pl;

		}catch (Exception e) {
			e.printStackTrace();
		}

		return pl;
	}
	
	public List<String> getAllCategory(){
		List<String> al=new ArrayList<>();
		
		String sql="select category from product";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				al.add(rs.getString(1));
			}
			return al;

		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

}

