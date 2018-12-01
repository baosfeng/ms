package com.ssm.dao;

import com.ssm.entity.User;
import com.ssm.entity.UserExample;
import org.springframework.stereotype.Repository;

/**
 * UserDao继承基类
 */
@Repository
public interface UserDao extends MyBatisBaseDao<User, Integer, UserExample> {
}