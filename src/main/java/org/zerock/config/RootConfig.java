package org.zerock.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

// root-context.xml 설정파일을 대신하는 class
@Configuration
@ComponentScan(basePackages = {"org.zerock.sample"})
public class RootConfig {

}
