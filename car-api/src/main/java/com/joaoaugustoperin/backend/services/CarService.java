package com.joaoaugustoperin.backend.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.joaoaugustoperin.backend.domain.Car;

@Service
public class CarService {

	public List<Car> carList(){
		List<Car> list = new ArrayList<>();
		list.add(new Car(1, 1986, "Fusca"));
		list.add(new Car(2, 1990, "Opala"));
		list.add(new Car(3, 1996, "Chevete"));
		
		return list;
	}
	
	public Car searchById(int id) {
		List<Car> list = new ArrayList<>();
		list.add(new Car(1, 1986, "Fusca"));
		list.add(new Car(2, 1990, "Opala"));
		list.add(new Car(3, 1996, "Chevete"));
		
		if (id==1) {
			return list.get(0);
		}
		if (id==2) {
			return list.get(1);
		}
		if (id==3) {
			return list.get(2);
		}
		
		return null;
	}
	
}
