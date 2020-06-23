package com.joaoaugustoperin.backend.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.joaoaugustoperin.backend.domain.Customer;
import com.joaoaugustoperin.backend.services.CustomerService;

@RestController
@RequestMapping("/clientes")
public class CustomerController {

	@Autowired
	private CustomerService service;

	@GetMapping
	public List<Customer> listAll(){
		return service.listAll();
	}
	
	@GetMapping("/{query}")
	public List<Customer> findByName(@PathVariable("query") String query){
		return service.findByName(query);
	}
	
	@PostMapping
	private Customer newCustomer(@RequestBody Customer c) {
		return service.save(c);
	}
	
	@PutMapping("/{id}")
	public Customer edit(@PathVariable("id") Integer id, @RequestBody Customer c) {
		Customer edited = service.edit(c, id);
		if (edited != null) {
			return edited;
		}
		return null;
	}
	
	@DeleteMapping("/{id}")
	public boolean delete(@PathVariable("id") Integer id) {
		return service.delete(id);
	}
}
