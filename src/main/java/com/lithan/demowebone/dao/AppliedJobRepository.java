package com.lithan.demowebone.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lithan.demowebone.dto.AppliedJob;

@Repository
public interface AppliedJobRepository extends JpaRepository<AppliedJob , Integer>{

}
