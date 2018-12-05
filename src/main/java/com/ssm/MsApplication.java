package com.ssm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

/**
 * 项目初始化
 *
 * @author 小书包
 * @date 2018年12月1日13:17:26
 */
@SpringBootApplication
public class MsApplication extends SpringBootServletInitializer {
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(MsApplication.class);
    }
	public static void main(String[] args) {
		SpringApplication.run(MsApplication.class, args);
	}

}
