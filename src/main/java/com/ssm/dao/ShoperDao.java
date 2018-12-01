package com.ssm.dao;

import com.ssm.entity.Shoper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * 店家dao
 * @author 小书包
 */
@Repository
@Mapper
public interface ShoperDao {

	/**
	 * 根据主键进行删除
	 * @param id
	 * @return
	 */
    int deleteByPrimaryKey(Integer id);

	/**
	 * 完整的插入元素
	 * @param record
	 * @return
	 */
    int insert(Shoper record);

	/**
	 * 根据已有值进行插入
	 * @param record
	 * @return
	 */
    int insertSelective(Shoper record);

	/**
	 * 根据主键进行查找
	 * @param id
	 * @return
	 */
    Shoper selectByPrimaryKey(Integer id);

	/**
	 * 根据现有的值进行更新
	 * @param record
	 * @return
	 */
    int updateByPrimaryKeySelective(Shoper record);

	/**
	 * 完整的进行更新
	 * @param record
	 * @return
	 */
    int updateByPrimaryKey(Shoper record);
}