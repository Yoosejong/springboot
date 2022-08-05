package com.example.practice.review.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.practice.review.domain.Review;
import com.example.practice.review.mapper.ReviewMapper;

@Service
public class ReviewService {
	@Autowired
	private ReviewMapper reviewMapper;
	
	
	/*
	 * 1. 리뷰 전체조회
	 */
	public ArrayList<Review> selectReviewList(int cm_no, int rv_no) {
		return(ArrayList)reviewMapper.selectReviewList(cm_no, rv_no); 
	}
	
	/*
	 * 2. 리뷰 상세조회
	 */
	public Review selectReviewOne(int rv_no) {
		return reviewMapper.selectOne(rv_no);
	}
	
	/*
	 * 3. 리뷰 작성
	 */
	public int insertReview(Review review) {
		// TODO Auto-generated method stub
		return reviewMapper.insertReview(review);
	}

}
