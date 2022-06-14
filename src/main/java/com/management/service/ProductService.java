package com.management.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.management.entity.Product;

@Component
public interface ProductService {
	     public int insertProduct(Product product);
	    public int updateProduct(Product product);
	    public int deleteProductById(long productId);
	    public List<Product> selectAllProduct();
	    public Product selectProductById(long productId);
}
