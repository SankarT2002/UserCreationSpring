package com.project.batch.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.batch.model.User;
import com.project.batch.service.UserService;

@Controller
public class UserController {
	
	private final UserService service;

	public UserController(UserService service) {
		this.service = service;
	}
	
	@GetMapping("/")
	public String dashBoard() {
		return "dashboard";
	}
	
	@GetMapping("/allusers")
	public String allUsers(Model model){
		List<User> alluser=service.listAll();
		model.addAttribute("userlist", alluser);
		return "allusers";
	}
	
	@GetMapping("/adduser")
	public String addUser() {
		return "newuser";
	}
	
//	@PostMapping("/save")
//	public String SaveUser(@RequestParam (name="username") String name,
//			@RequestParam (name="useremail") String email) {
//		User user =new User(name,email);
//	service.saveUser(user);
//		return "redirect:/allusers";
//	}
	
	@PostMapping("/save")
	public String saveUser(@ModelAttribute User user ) {
		service.saveUser(user);
		return "redirect:/allusers";
		
	}
	
	@GetMapping("/update/{id}")
	public String updateUser(Model model,@PathVariable Long id ) {
		User user=service.get(id);
		model.addAttribute("updateuser", user);
		return "updateUser";
	}
	
	@GetMapping("/delete/{id}")
	public String deleteUser(Model model,@PathVariable Long id) {
		service.deleteUser(id);
		return "redirect:/allusers";
	}
}
