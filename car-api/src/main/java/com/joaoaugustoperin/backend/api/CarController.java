package com.joaoaugustoperin.backend.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.joaoaugustoperin.backend.domain.Car;
import com.joaoaugustoperin.backend.services.CarService;

@RestController
@RequestMapping("/carros")
public class CarController {

	@Autowired
	CarService service;
	
	@GetMapping
	public List<Car> listAll(){
		return service.carList();
	}
	
	@GetMapping("/id/{id}")
	public Car listById(@PathVariable(name="id") int id){
		return service.searchById(id);
	}
	
	@PostMapping
	public void insertCar(@RequestBody Car c) {
		System.out.println(c.toString());
	}
	
}
