package org.zerock.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

// root-context.xml 설정파일을 대신하는 class
@Configuration
@ComponentScan(basePackages = {"org.zerock.sample"})
@MapperScan(basePackages = {"org.zerock.mapper"})
public class RootConfig {
	
	// Hikari CP
	@Bean
	public DataSource dataSource() {
		HikariConfig hikariConfig = new HikariConfig();
//		hikariConfig.setDriverClassName("org.mariadb.jdbc.Driver");
//		hikariConfig.setJdbcUrl("jdbc:mariadb://3.36.92.67/test_database");
		hikariConfig.setDriverClassName("net.sf.log4jdbc.sql.jdbcapi.DriverSpy");
		hikariConfig.setJdbcUrl("jdbc:log4jdbc:mariadb://3.36.92.67/test_database");
		hikariConfig.setUsername("root");
		hikariConfig.setPassword("wnddkdwjdqhcjfl1");
		
		HikariDataSource dataSource = new HikariDataSource(hikariConfig);
		
		return dataSource;
	}
	
	// MyBatis
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception {
		SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
		sqlSessionFactory.setDataSource(dataSource());
		return (SqlSessionFactory) sqlSessionFactory.getObject();
	}
}
