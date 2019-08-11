package com.demoProject.dao;

import java.util.List;

import com.demoProject.pojo.Product;

public interface ProductDao {

boolean addProduct(Product product);
boolean updateProduct(Product product);
boolean deleteProduct(int productId);
Product getProductById(int productId);
List<Product> getAllProduct();
}
