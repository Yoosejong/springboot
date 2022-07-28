package com.example.practice;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.practice.company.domain.Company;
import com.example.practice.company.service.CompanyService;
import com.example.practice.login.domain.Login;

@Controller
public class HomeController {
	
	@Autowired
	private CompanyService companyService;
	
	@RequestMapping("/home")
	public String index(Model model, Company company, HttpSession session) {
		
		ArrayList<Company> list = companyService.selectCompanyList();
		
		Login login = (Login)session.getAttribute("userInfo");
		
		if(list != null && list.size() > 0) {
			model.addAttribute("cList", list);
			System.out.println("타는건가??" + list);
		}
		
		if(login != null) {
			model.addAttribute("userInfo", login);
		}
		
		return "index";
	}
}
