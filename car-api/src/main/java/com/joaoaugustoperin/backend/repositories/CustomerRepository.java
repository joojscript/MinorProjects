package com.joaoaugustoperin.backend.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.joaoaugustoperin.backend.domain.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {

	public List<Customer> findByNameLike(String query);
	
}
