package com.joaoaugustoperin.backend.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import com.joaoaugustoperin.backend.domain.City;
import com.joaoaugustoperin.backend.repositories.CityRepository;

@Service
public class CityService {

	@Autowired
	CityRepository cityRep;
	
	public City save(City c) {
		return cityRep.save(c);
	}
	
	public City edit(City c, Integer id) {
		Assert.notNull(id, "Não foi possível atualizar a cidade");
		Optional<City> opt = cityRep.findById(id);
		
		if(opt.isPresent()) {
			City city = opt.get();
			city.setName(c.getName());
			city.setUf(c.getUf());
			cityRep.save(city);
			return city;
		} else {
			return null;
		}
	}
	
	public boolean delete(Integer id) {
		Optional<City> opt = cityRep.findById(id);
		if(opt.isPresent()) {
			cityRep.deleteById(id);
			return true;
		}
		return false;
	}
	
	public List<City> listAll(){
		return cityRep.findAll();
	}
	
}
