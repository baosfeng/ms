package com.ssm.dao;

import com.ssm.entity.Order;
import com.ssm.entity.OrderExample;
import org.springframework.stereotype.Repository;

/**
 * OrderDao继承基类
 */
@Repository
public interface OrderDao extends MyBatisBaseDao<Order, Integer, OrderExample> {
}