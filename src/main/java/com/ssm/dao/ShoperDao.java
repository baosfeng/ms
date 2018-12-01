package com.ssm.dao;

import com.ssm.entity.Shoper;

public interface ShoperDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Shoper record);

    int insertSelective(Shoper record);

    Shoper selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Shoper record);

    int updateByPrimaryKey(Shoper record);
}