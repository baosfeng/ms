package com.ssm.dao;

import com.ssm.entity.ProductDetail;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * 产品详情dao
 * @author 小书包
 */
@Repository
@Mapper
public interface ProductDetailDao {

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
    int insert(ProductDetail record);

	/**
	 * 根据已有的元素进行插入
	 * @param record
	 * @return
	 */
    int insertSelective(ProductDetail record);

	/**
	 * 根据主键进行查找
	 * @param id
	 * @return
	 */
    ProductDetail selectByPrimaryKey(Integer id);

	/**
	 * 根据已设置值的元素进行更新
	 * @param record
	 * @return
	 */
    int updateByPrimaryKeySelective(ProductDetail record);

	/**
	 * 完整的进行更新
	 * @param record
	 * @return
	 */
    int updateByPrimaryKey(ProductDetail record);
}