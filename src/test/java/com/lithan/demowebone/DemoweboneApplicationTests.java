package com.lithan.demowebone;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.junit.*;

import com.lithan.demowebone.dao.UserRepository;
import com.lithan.demowebone.dto.User;
import com.lithan.demowebone.service.Abc_portalServiceImple;


@SpringBootTest
class DemoweboneApplicationTests {

	@Autowired
	private UserRepository repo;
	
	@Autowired 
	private Abc_portalServiceImple service;
	
	@Test
	void contextLoads() {
	} 
	
	
	@Test
	void addUser() 
	{
		User user = new User();
		user.setUserId((long)100);
		user.setFirst_name("jhon");
		user.setLast_name("Cena");
		user.setMailid("jhoncena@gmail.com");
		user.setAddress("WWE");
		user.setUserName("jhon");
		user.setPassword("jhon");
		
		String resultd = service.addUser(user);
		
	//	Assert.assertEquals(1,resultd);
		
		Boolean result = repo.existsById((long) 100);
		
		assertThat(result).isTrue();
		
	}
	
	
	
}
