package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.UserEntity;
import com.repository.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("signup")
	public String Signup() {
		System.out.println("inside Signup");
		return "Signup";
	}
	
	@PostMapping("/saveuser")
	public String saveUser(UserEntity userEntity) {
		userRepository.save(userEntity);
		System.out.println("Successfully Saved!");
		return "Signup";
	}
	
	@GetMapping("/listuser")
	public String listUser(Model model) {
		List<UserEntity> userEntity = userRepository.findAll();
		System.out.println("list:"+userEntity);
		model.addAttribute("users", userEntity);
		return "viewUsers";
	}
	
	@GetMapping("/deleteuser/{userid}")
	public String deleteUser(@PathVariable("userid") int id) {
		userRepository.deleteById(id);
		return "redirect:/listuser";
	}
	
	@GetMapping("/edituser/{userid}")
	public String editUser(@PathVariable("userid") int id,Model model) {
		UserEntity userEntity =  userRepository.getById(id);
		model.addAttribute("user", userEntity);
		return "editUser";
	}
	
	@PostMapping("/updateuser")
	public String updateUser(UserEntity userEntity) {
		userRepository.save(userEntity);
		return "redirect:/listuser";
	}
	

}
