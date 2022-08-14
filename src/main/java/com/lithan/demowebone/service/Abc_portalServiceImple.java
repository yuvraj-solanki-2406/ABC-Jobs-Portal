package com.lithan.demowebone.service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.lithan.demowebone.dao.AppliedJobRepository;
import com.lithan.demowebone.dao.JobRepository;
import com.lithan.demowebone.dao.SearchRepository;
import com.lithan.demowebone.dao.UserRepository;
import com.lithan.demowebone.dto.AppliedJob;
import com.lithan.demowebone.dto.Jobs;
import com.lithan.demowebone.dto.User;
@Service
public class Abc_portalServiceImple implements Abc_portalService {
	private PasswordEncoder passwordencoder;
	
	JdbcTemplate template; 
	
	public void setJdbcTemplate(JdbcTemplate template) {  
	    this.template = template;  
	} 
	
	@Autowired
	private JobRepository jobrepo;
	@Autowired
	UserRepository userrepo;
	@Autowired
	SearchRepository searchrepo;
	@Autowired
	AppliedJobRepository applyrepo;
	@Autowired
	public Abc_portalServiceImple(PasswordEncoder encoder) {
		// TODO Auto-generated constructor stub
		this.passwordencoder=encoder;
	}
	
	public Abc_portalServiceImple() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String addUser(User us) {

		us.setRole("USER");
		us.setPassword(passwordencoder.encode(us.getPassword()));
		userrepo.save(us);
		return "DATA ADDED";
	}

	@Override
	public int updateUser(User us) {
		// TODO Auto-generated method stub
		String sql = "update user  set first_name='"+us.getFirst_name()+"',last_name='"+us.getLast_name()+"',mailid='"+us.getMailid()+"', address='"+us.getAddress()+"' where user_id="+us.getUserId()+"";
		System.out.println("the not working ID is"+" "+us.getUserId());	
		System.out.println(sql);
		ArrayList<User> updated = new ArrayList<User>();
		userrepo.findById(us.getUserId()).ifPresent(updated :: add);
		int returns = template.update(sql);
		return returns;		
	}
	
	@Override
	public List<User> showAllLearners() {
		List<User> userlist = userrepo.findAll();
		// TODO Auto-generated method stub
		return userlist;
	}
	
	public List<User> getAllUsers()
	{
		List<User> search = searchrepo.findAll();
		return search;
	}

	 public List<User> getByKeyword(String keyword){
		  return searchrepo.findByKeyword(keyword);
		 }

	@Override
	public void updateNew(User user, long userId) {
		List<User> updatelist = userrepo.findAll();
		updatelist=updatelist.stream().map(b->{
			if(b.getUserId() == userId) {
				b.setFirst_name(user.getFirst_name());
				b.setLast_name(user.getLast_name());
				b.setMailid(user.getMailid());
				b.setAddress(user.getAddress());
			}

			return b;
		}).collect(Collectors.toList());
	}

	@Override
	public String addJobs(Jobs job) {
		jobrepo.save(job);
		return "Job Added";
	}

	@Override
	public List<Jobs> showJobs() {
		List<Jobs> jobList = jobrepo.findAll();
		return jobList;
	}

	@Override
	public void addAppliedUser(AppliedJob applyjob) {
		// TODO Auto-generated method stub
		applyrepo.save(applyjob);
	}


}
