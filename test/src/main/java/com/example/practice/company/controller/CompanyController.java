package com.example.practice.company.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.practice.company.domain.Company;
import com.example.practice.company.service.CompanyService;
import com.example.practice.exception.lwException;
import com.example.practice.login.domain.Login;
import com.example.practice.review.domain.Review;
import com.example.practice.review.service.ReviewService;

@Controller
public class CompanyController {
	
	@Autowired
	private CompanyService companyService;
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/companyDetail")
	public String companyDetail(Model model, int cm_no, int rv_no, Company company, Review review, HttpSession session) {
		
		Login Login = (Login)session.getAttribute("userInfo");
		
		ArrayList<Company> list = companyService.selectCompanyList();
		ArrayList<Review> reviewList = reviewService.selectReviewList(cm_no, rv_no);
		
		company = companyService.selectCompanyOne(cm_no);
		review = reviewService.selectReviewOne(rv_no);
		
		if(review != null) {
			model.addAttribute("rList", reviewList);
		}
		
		if(company != null) {
			model.addAttribute("companyDetail", company);
			model.addAttribute("reviewDetail", review);
			model.addAttribute("cList", list);
			
		}else {
			throw new lwException("회사 상세보기 실패");
		}
		
		model.addAttribute("userInfo", Login);
		
		return "company/companyDetail";
	}
}
