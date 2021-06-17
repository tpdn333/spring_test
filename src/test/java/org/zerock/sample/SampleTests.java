package org.zerock.sample;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.config.RootConfig;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
<<<<<<< HEAD
@Log4j
@ContextConfiguration(classes = {RootConfig.class})
public class SampleTests {
	
	
	@Setter(onMethod_ = { @Autowired })
	private Restaurant restaurant;
	
	@Test
	public void testExist() {
		assertNotNull(restaurant);
		
		log.info(restaurant);
		log.info("-------------------------------");
		log.info(restaurant.getChef());
	}

=======
@ContextConfiguration(classes = {RootConfig.class})
@Log4j
public class SampleTests {
	
	@Setter(onMethod_ = { @Autowired })
	private Restaurant restaurant;
	
	@Test
	public void testExist() {
		assertNotNull(restaurant);
		
		log.info(restaurant);
		log.info("======================");
		log.info(restaurant.getChef());
	}
>>>>>>> branch 'master' of https://github.com/tpdn333/spring_test.git
}
