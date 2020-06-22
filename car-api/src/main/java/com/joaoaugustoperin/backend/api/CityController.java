package com.joaoaugustoperin.backend.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.joaoaugustoperin.backend.domain.City;
import com.joaoaugustoperin.backend.services.CityService;

@RestController
@RequestMapping("/cidades")
public class CityController {

	@Autowired
	private CityService service;
	
	@GetMapping
	public List<City> listAll(){
		return service.listAll();
	}
	
	@PostMapping
	private City newCity(@RequestBody City c) {
		return service.save(c);
	}
	
}
