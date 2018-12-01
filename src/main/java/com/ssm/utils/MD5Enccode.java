package com.ssm.utils;

import org.apache.commons.codec.binary.Hex;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * @author 小书包
 * @date 2018/12/1 16:46
 */
public class MD5Enccode {

	/**
	 * 对字符串进行MD5加密
	 * @param password 待加密的字符串
	 * @return 加密函数不存在
	 */
	public static String encode(String password){
		byte[] bytes = new byte[0];
		try {
			bytes = MessageDigest.getInstance("MD5").digest(password.getBytes());
		} catch (NoSuchAlgorithmException e) {
			System.out.println("加密函数不存在");
			e.printStackTrace();
		}
		return Hex.encodeHexString(bytes);
	}
}
