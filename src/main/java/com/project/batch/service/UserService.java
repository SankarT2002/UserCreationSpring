package com.project.batch.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.project.batch.model.User;
import com.project.batch.repository.UserRepository;

@Service
public class UserService {
	
	private final UserRepository repo;

	public UserService(UserRepository repo) {
		this.repo = repo;
	}
	
	//Read-FindAll users
	public List<User> listAll(){
		return repo.findAll();
	}
	
	//Create-Inserting the users
	
	public void saveUser(User user) {
		repo.save(user);
	}
	
	
	//Delete-Deleting the user
	
	public void deleteUser(Long id) {
		repo.deleteById(id);
	}
	
	//Update-Updating the user 
	
	public User get(Long id) {
		return repo.findById(id).orElse(null);
	}
	
}
