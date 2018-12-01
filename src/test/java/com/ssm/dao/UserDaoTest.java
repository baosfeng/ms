package com.ssm.dao;

import com.ssm.entity.User;
import org.apache.commons.codec.binary.Hex;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
@SpringBootTest
@RunWith(SpringRunner.class)
public class UserDaoTest {
	@Autowired
	private UserDao userDao;

	@Test
	public void testInsertSelective() throws NoSuchAlgorithmException {
		User user = new User();
		user.setName("张三");
		byte[] bytes = MessageDigest.getInstance("MD5").digest("abc123".getBytes());
		user.setPassword(Hex.encodeHexString(bytes));
		user.setSex((short) 0);
		user.setUserName("zhangsan");
		user.setEmail("bsfeng@foxmail.com");
		user.setAddress("北京市朝阳区");
		user.setAge(10);
		int i = userDao.insertSelective(user);
		System.out.println(i);
	}
}