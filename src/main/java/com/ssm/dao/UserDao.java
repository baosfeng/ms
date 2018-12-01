package com.ssm.dao;

import com.ssm.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * 用户dao
 * @author 小书包
 */
@Repository
@Mapper
public interface UserDao {

	/**
	 * 根据主键进行删除
	 * @param id
	 * @return
	 */
    int deleteByPrimaryKey(Integer id);

	/**
	 * 完整的记录插入
	 * @param record
	 * @return
	 */
    int insert(User record);

	/**
	 * 根据已有的值进行插入
	 * @param record
	 * @return
	 */
    int insertSelective(User record);

	/**
	 * 根据主键进行查询
	 * @param id
	 * @return
	 */
    User selectByPrimaryKey(Integer id);

	/**
	 * 更新记录通过现有的值进行更新
	 * @param record
	 * @return
	 */
    int updateByPrimaryKeySelective(User record);

	/**
	 * 完整的进行更新
	 * @param record
	 * @return
	 */
    int updateByPrimaryKey(User record);
}