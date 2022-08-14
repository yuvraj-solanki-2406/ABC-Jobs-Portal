package com.lithan.demowebone.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lithan.demowebone.dto.Emails;

public interface EmailRepository extends JpaRepository <Emails, Integer>{

}
