package com.ssm.dao;

import com.ssm.entity.Order;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * 订单dao
 * @author 小书包
 */
@Repository
@Mapper
public interface OrderDao {

	/**
	 * 根据主键删除
	 * @param id 主键
	 * @return
	 */
    int deleteByPrimaryKey(Integer id);

	/**
	 * 根据order进行插入元素
	 * @param record
	 * @return
	 */
    int insert(Order record);

	/**
	 * 插入所选的数据，如果为空就跳过，少插入一些数据
	 * @param record
	 * @return
	 */
    int insertSelective(Order record);

	/**
	 * 根据主键查找
	 * @param id
	 * @return
	 */
    Order selectByPrimaryKey(Integer id);

	/**
	 * 根据order进行更新，有新的记录就更新，没有则不变
	 * @param record
	 * @return
	 */
    int updateByPrimaryKeySelective(Order record);

	/**
	 * 整体进行更新
	 * @param record
	 * @return
	 */
    int updateByPrimaryKeyWithBLOBs(Order record);

	/**
	 *根据主键进行更新，不更新流水号
	 * @param record
	 * @return
	 */
    int updateByPrimaryKey(Order record);
}