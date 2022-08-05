package com.example.practice.review.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.practice.login.domain.Login;
import com.example.practice.review.domain.Review;
import com.example.practice.review.service.ReviewService;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	
	@RequestMapping("/reviewWrite")
	public String WriteReview() {
		return "review/reviewWrite";
	}
	
	@RequestMapping("/insertReview")
	public ModelAndView reviewWrite(HttpSession session, ModelAndView mv, Review review) {
		Login lg = (Login)session.getAttribute("userInfo");
		
		review.setRv_id(lg.getUser_id());
		
		int result = reviewService.insertReview(review);
		
		mv.addObject("rvResult", result);
		mv.setViewName("/review/insertReview");
		return mv;
	}
	
}
