package com.example.practice.company.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.example.practice.company.domain.Company;

@Repository
public interface CompanyMapper {

	ArrayList<Company> selectCompanyList();

	Company selectOne(int cm_no);

}
