package com.lithan.demowebone.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lithan.demowebone.dao.AppliedJobRepository;
import com.lithan.demowebone.dao.JobRepository;
import com.lithan.demowebone.dao.UserRepository;
import com.lithan.demowebone.dto.AppliedJob;
import com.lithan.demowebone.dto.Emails;
import com.lithan.demowebone.dto.Jobs;
import com.lithan.demowebone.dto.User;
import com.lithan.demowebone.service.Abc_portalService;
import com.lithan.demowebone.service.EmailService;

@Controller

public class Abc_portalController {

	@Autowired
	Abc_portalService myservice;
	@Autowired
	EmailService emailservice;
	@Autowired
	UserRepository userrepo;
	@Autowired
	JobRepository jobrepo;
	@Autowired
	AppliedJobRepository applyrepo;
	
	User user = new User();

	@GetMapping(value = "/")
	public String myHomePage() {
		return "main_page";
	}

	@GetMapping(value = "/login")
	public String login() {
		return "loginpage";
	}

	@GetMapping(value = "/user")
	public String myuserPage(Principal principal, Model model) {
		String userName = principal.getName();
		System.out.println("Username " + userName);
		User useer = userrepo.getUserByUserName(userName);
		System.out.println(useer);
		model.addAttribute("userName", useer);
		return "user";
	}
	
	@GetMapping(value = "/admin")
	public String myadminPage(Principal principal, Model model) {
		String userName = principal.getName();
		System.out.println("Username" + userName);
		User useer = userrepo.getUserByUserName(userName);
		System.out.println(useer);
		model.addAttribute("userName", useer);
		return "AdminPage";
	}

	@GetMapping(value = "/register")
	public String myRegisterPage(@ModelAttribute("data") User us) {
		return "registration_form";
	}

	@PostMapping(value = "/myreg")
	public String addRegisterPage(@Valid @ModelAttribute("data") User us, BindingResult result) {
		if (result.hasErrors()) {
			return "registration_form";
		}
		myservice.addUser(us);
		return "Thankyou";
	}

	@GetMapping(value = "/showdata")
	public ModelAndView getAllProduct() {
		List<User> myUsers = myservice.showAllLearners();
		return new ModelAndView("showdata", "learnerinfo", myUsers);
	}

	@GetMapping(value = "/delete")
	public String deletePage() {
		return "Deletelearner";
	}

	@GetMapping(value = "deletedata")
	public String delete(@RequestParam("d_Id") User userId, Principal principal, Model model) {
		String userName = principal.getName();
		Long u = userId.getUserId();
		userrepo.deleteById(u);
		User useer = userrepo.getUserByUserName(userName);
		System.out.println(useer);
		model.addAttribute("userName", useer);
		return "AdminPage";
	}

	@GetMapping(value = "/search")
	public String search(@ModelAttribute("searchingUser") User user) {
		return "Search";
	}

	@GetMapping(value = "/searches")
	public ModelAndView searchUser(@RequestParam("ID") User user) {
		Long ID = user.getUserId();
		ArrayList<User> result = new ArrayList<>();
		userrepo.findById(ID).ifPresent(result::add);
		System.out.println(result);
		return new ModelAndView("Searchoutcome", "searched", result);
	}

	@GetMapping(value = "/update/{userId}")
	public String edit(@PathVariable long userId, ModelMap model) {
		User user = userrepo.getById(userId);
		System.out.println("id is" + user.getUserId());
		model.addAttribute("user", user);
		return "myupdate";
	}

	@Transactional
	@PostMapping(value = "updateUser")
	public ModelAndView update(@ModelAttribute("user") User us) {
		System.out.println("id is updating" + us.getUserId());
		this.userrepo.save(us);
		return new ModelAndView("redirect:/showdata/");
	}

	@GetMapping(value = "/jobs")
	public String jobs() {
		return "Job";
	}

	@GetMapping(value = "/createjobs")
	public String createJobs(@ModelAttribute("jobData") Jobs job) {
		return "CreateJob";
	}

	@PostMapping(value = "/submitJob")
	public String saveJob(@Valid @ModelAttribute("jobData") Jobs job, BindingResult results) {
		if (results.hasErrors()) {
			return "CreateJob";
		} else {
			myservice.addJobs(job);
			return "Thankyoujobs";
		}
	}

	@GetMapping(value = "/viewjobs")
	public ModelAndView viewJobs() {
		myservice.showJobs();
		List<Jobs> showJobs = myservice.showJobs();
		System.out.println("jobs are " + showJobs);
		return new ModelAndView("ViewJob", "showJobs", showJobs);
	}
	
	@GetMapping(value = "/viewjobsUser")
	public ModelAndView ViewJobsUser() {
		myservice.showJobs();
		List<Jobs> showJobs = myservice.showJobs();
		System.out.println("jobs are " + showJobs);
		return new ModelAndView("ViewJobsUser", "showJobs", showJobs);
	}
	
	@GetMapping(value = "/jobDetails/{job_Id}")
	public String ViewJobsDetails(@PathVariable int job_Id, ModelMap model) {
		Jobs job = jobrepo.getById(job_Id);
		String authorname = job.getAuthor();
		int id = job.getJob_Id();
		System.out.println("name of the job author is " + authorname + " id is " + id);
		System.out.println("jobs for user are " + job);
		model.addAttribute("job", job);		
		return "ViewJobDetails";
	}
	
	@GetMapping(value="/deletejob/{job_Id}")
	public String deleteJob(@PathVariable int job_Id, Principal principal, Model model) {
		jobrepo.deleteById(job_Id);
		System.out.println("The job id to be deleted is "+ "another id" + job_Id);
		
		String userName = principal.getName();
		User useer = userrepo.getUserByUserName(userName);
		System.out.println(useer);
		model.addAttribute("userName", useer);
		return "AdminPage";
	}
	
	@GetMapping(value = "/jobDetailsUser/{job_Id}")
	public String ViewJobsDetailsUser(@PathVariable int job_Id, ModelMap model) {
		Jobs job = jobrepo.getById(job_Id);
		String authorname = job.getAuthor();
		int id = job.getJob_Id();
		System.out.println("name of the job author is " + authorname + " id is " + id);
		System.out.println("jobs for user are " + job);
		model.addAttribute("job", job);		
		return "ViewJobDetailsUser";
	}
	
	@RequestMapping(value="/addjobseeker", method=RequestMethod.POST)
	public String saveJobSeekers(AppliedJob apply, Principal princi, Jobs jobses) {			
						
		String name = princi.getName();		
		User u = userrepo.getUserByUserName(name);
		System.out.println("User in the registered job are " + u);
						
		Long id = u.getUserId();
		apply.setUserId(id);
		 
		int jond = jobses.getJob_Id();
		apply.setJobId(jond);
				
		System.out.println("the id of the loged in user is " + id + " job id is " + jond); 				
		applyrepo.save(apply);	
		return "ThankyouappliedJob";
	}
	
	@GetMapping(value = "/sendEmail")
	public String sendEmail(@ModelAttribute("emails") Emails email) {
		return "SendEmail";
	}

	@PostMapping(value = "/sendEmails")
	public String submitEmail(@Valid @ModelAttribute("emails") Emails email, BindingResult results) {
		
		String reciever_emails = email.getReciever_emails();
		String email_subject = email.getSubject();
		String content = email.getContent();
		
		if (results.hasErrors()) {
			return "SendEmail";
		} else {
			
			String status = emailservice.sendEmail(email);
			System.out.printf(reciever_emails +" "+ email_subject + " "+ content+"\n"+status);
			
			emailservice.addEmail(email);
			return "AdminPage";
			}
	}
	
}
