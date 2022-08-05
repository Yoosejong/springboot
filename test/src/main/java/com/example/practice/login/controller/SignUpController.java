package com.example.practice.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.practice.exception.lwException;
import com.example.practice.login.domain.Login;
import com.example.practice.login.service.LoginService;

@Controller
public class SignUpController {
	@Autowired 
	private LoginService loginService;
	
	// 회원가입 화면
	@RequestMapping("/signup")
	public String signUp() {
		return "/common/signup";
	}
	
	// 회원가입
	@RequestMapping("/signUpOk")
	public String signUpOk(Login login, Model model) {
		
		int result = 0;
		
		
		int flag = loginService.signUpOk(login);
		
		if(flag == 1) 
			result = 1;
		
		if(result > 0) {
			return "redirect:/login";
		}else {
			throw new lwException("회원 가입 실패!");
		}
		
	}

}