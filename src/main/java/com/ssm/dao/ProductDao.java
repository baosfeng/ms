package com.ssm.dao;

import com.ssm.entity.Product;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * 产品dao
 * @author 小书包
 */
@Repository
@Mapper
public interface ProductDao {

	/**
	 * 根据主键删除元素
	 * @param id
	 * @return
	 */
    int deleteByPrimaryKey(Integer id);

	/**
	 * 完整的插入元素
	 * @param record
	 * @return
	 */
    int insert(Product record);

	/**
	 * 插入已经有值的元素
	 * @param record
	 * @return
	 */
    int insertSelective(Product record);

	/**
	 * 根据主键进行查找
	 * @param id
	 * @return
	 */
    Product selectByPrimaryKey(Integer id);

	/**
	 * 根据已有的数据进行更新
	 * @param record
	 * @return
	 */
    int updateByPrimaryKeySelective(Product record);

	/**
	 * 完整的进行更新
	 * @param record
	 * @return
	 */
    int updateByPrimaryKey(Product record);
}