package com.lithan.demowebone;

import static org.assertj.core.api.Assertions.assertThat;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;

import com.lithan.demowebone.dao.UserRepository;
import com.lithan.demowebone.dto.User;
import com.lithan.demowebone.service.Abc_portalServiceImple;

@DataJpaTest
@AutoConfigureTestDatabase(replace = Replace.NONE)
public class UserTest {
	
	@Autowired
	UserRepository repo ;
	@Autowired
	Abc_portalServiceImple service;
	
	@Test
	@Rollback(false)

	void addUser() {

		User addUser = repo.save(new User(100L,"Brijesh","Batra","brijesh","brijesh","brijesh@gamil.com","delhi","USER"));
		
		assertThat(addUser.getUserId()).isEqualTo(17L);
	}
	
	@Test
	void getUser() {
		User user = repo.findById(5L).get();
		
		Assertions.assertThat(user.getUserId()).isEqualTo(5L);
	}
	
	@Test
	void addUsers(User user) {
		user.setFirst_name("Yuvarj");
		user.setLast_name("soalnki");
		user.setMailid("yuv4ra@gamul.cim");
		
		service.addUser(user);
		
	}
}
