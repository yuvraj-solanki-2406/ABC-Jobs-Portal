package com.lithan.demowebone.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.lithan.demowebone.dto.User;

public interface SearchRepository extends JpaRepository<User, Long>{

	@Query(value = "select * from user s where s.user_name like %:keyword% or s.first_name like %:keyword% or s.last_name like %:keyword%"
			, nativeQuery = true)
	 List<User> findByKeyword(@Param("keyword") String keyword);
}
