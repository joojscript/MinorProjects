package com.joaoaugustoperin.backend.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import com.joaoaugustoperin.backend.domain.Customer;
import com.joaoaugustoperin.backend.repositories.CustomerRepository;

@Service
public class CustomerService {

	@Autowired
	CustomerRepository rep;
	
	public Customer save(Customer c) {
		return rep.save(c);
	}
	
	public boolean delete(Integer id) {
		Optional<Customer> opt = rep.findById(id);
		if(opt.isPresent()) {
			rep.deleteById(id);
			return true;
		}
		return false;
	}
	
	public Customer edit(Customer c, Integer id) {
		Assert.notNull(id, "Não foi possível atualizar o cliente");
		Optional<Customer> opt = rep.findById(id);
		if(opt.isPresent()) {
			Customer cus = opt.get();
			cus.setName(c.getName());
			cus.setBalance(c.getBalance());
			cus.setCity(c.getCity());
			rep.save(cus);
			return cus;
		}else {
			return null;
		}
	}
	
	public List<Customer> listAll(){
		return rep.findAll();
	}
	
	public List<Customer> findByName(String query){
		return rep.findByNameLike(query + "%");
	}
}
