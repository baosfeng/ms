package com.ssm.dao;

import com.ssm.entity.ProductDetail;

public interface ProductDetailDao {
    int deleteByPrimaryKey(Integer id);

    int insert(ProductDetail record);

    int insertSelective(ProductDetail record);

    ProductDetail selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProductDetail record);

    int updateByPrimaryKey(ProductDetail record);
}