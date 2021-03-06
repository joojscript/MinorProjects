package com.joaoaugustoperin.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.joaoaugustoperin.backend.domain.City;

public interface CityRepository extends JpaRepository<City, Integer> {

}
