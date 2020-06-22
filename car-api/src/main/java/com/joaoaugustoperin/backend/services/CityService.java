package com.joaoaugustoperin.backend.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.joaoaugustoperin.backend.domain.City;
import com.joaoaugustoperin.backend.repositories.CityRepository;

@Service
public class CityService {

	@Autowired
	CityRepository cityRep;
	
	public City save(City c) {
		return cityRep.save(c);
	}
	
	public List<City> listAll(){
		return cityRep.findAll();
	}
	
}
