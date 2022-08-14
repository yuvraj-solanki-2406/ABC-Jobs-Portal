package com.lithan.demowebone.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.lithan.demowebone.dto.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByUserName(String name);
	User getUserByUserName(String userName);
}
