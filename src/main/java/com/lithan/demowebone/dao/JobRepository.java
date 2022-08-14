package com.lithan.demowebone.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lithan.demowebone.dto.Jobs;

public interface JobRepository extends JpaRepository <Jobs, Integer>{

	Jobs getByAuthor(String author);
}
