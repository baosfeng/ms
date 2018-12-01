package com.ssm.dao;

import com.ssm.entity.Product;
import com.ssm.entity.ProductExample;
import org.springframework.stereotype.Repository;

/**
 * ProductDao继承基类
 */
@Repository
public interface ProductDao extends MyBatisBaseDao<Product, Integer, ProductExample> {
}