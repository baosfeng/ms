package com.ssm.dao;

import com.ssm.entity.ProductDetail;
import com.ssm.entity.ProductDetailExample;
import org.springframework.stereotype.Repository;

/**
 * ProductDetailDao继承基类
 */
@Repository
public interface ProductDetailDao extends MyBatisBaseDao<ProductDetail, Integer, ProductDetailExample> {
}