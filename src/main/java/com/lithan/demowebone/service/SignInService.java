package com.lithan.demowebone.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.lithan.demowebone.dao.SearchRepository;
import com.lithan.demowebone.dao.UserRepository;
import com.lithan.demowebone.dto.User;
import com.lithan.demowebone.security.ApplicationUserDetail;
@Service
public class SignInService implements UserDetailsService {
    @Autowired
	UserRepository userrepo;
    User user;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		user=userrepo.findByUserName(username);
		if(user==null) {
			System.out.println("User name is Invalid");
		}
		return new ApplicationUserDetail(user);
	}
	
	@Autowired
	private SearchRepository searchrepo;
	
	public List<User> getAllUsers()
	{
		List<User> search = searchrepo.findAll();
		return search;
	}

	 public List<User> getByKeyword(String keyword){
		  return searchrepo.findByKeyword(keyword);
		 }
}
