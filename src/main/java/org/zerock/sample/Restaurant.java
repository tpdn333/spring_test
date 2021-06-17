package org.zerock.sample;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Setter;

@Component
@Data
public class Restaurant {
<<<<<<< HEAD
	@Setter(onMethod_ = @Autowired)
	private Chef chef;
=======

	@Setter(onMethod_ = @Autowired)
	private Chef chef;
	
	
//	@Autowired
//	public void setChef(Chef chef) {
//		this.chef = chef;
//	}
>>>>>>> branch 'master' of https://github.com/tpdn333/spring_test.git
	
}
