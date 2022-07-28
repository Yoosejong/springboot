package com.example.practice.company.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.practice.company.domain.Company;
import com.example.practice.company.mapper.CompanyMapper;

@Service
public class CompanyService {
	@Autowired
	private CompanyMapper companyMapper;
	
	public ArrayList<Company> selectCompanyList() {
		return (ArrayList)companyMapper.selectCompanyList();
	}

}
