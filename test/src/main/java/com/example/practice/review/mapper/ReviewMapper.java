package com.example.practice.review.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.example.practice.review.domain.Review;

@Repository
public interface ReviewMapper {

	ArrayList<Review> selectReviewList(int cm_no, int rv_no);

	Review selectOne(int rv_no);

	int insertReview(Review review);

}
