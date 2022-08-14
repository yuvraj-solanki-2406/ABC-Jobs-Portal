package com.lithan.demowebone.service;

import java.util.List;

import com.lithan.demowebone.dto.AppliedJob;
import com.lithan.demowebone.dto.Jobs;
import com.lithan.demowebone.dto.User;

public interface Abc_portalService {

	public String addUser(User us);
	public int updateUser(User us);
	public List<User> showAllLearners();
	public List<User> getByKeyword(String keyword);
	public List<User> getAllUsers();
	public void updateNew(User user, long userId);
	
	public String addJobs(Jobs job);
	public List<Jobs> showJobs();
	
	public void addAppliedUser(AppliedJob applyjob);
}
