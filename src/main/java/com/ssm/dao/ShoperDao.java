package com.ssm.dao;

import com.ssm.entity.Shoper;
import com.ssm.entity.ShoperExample;
import org.springframework.stereotype.Repository;

/**
 * ShoperDao继承基类
 */
@Repository
public interface ShoperDao extends MyBatisBaseDao<Shoper, Integer, ShoperExample> {
}