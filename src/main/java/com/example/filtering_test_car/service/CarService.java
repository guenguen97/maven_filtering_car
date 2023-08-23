package com.example.filtering_test_car.service;


import com.example.filtering_test_car.repository.CarRepository;
import com.example.filtering_test_car.vo.Car;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CarService {

    private CarRepository carRepository;

    @Autowired
    public CarService(CarRepository carRepository) {
        this.carRepository = carRepository;
    }

    public List<Car> getCarsBySearch(String size, String engine, Long displacement, Long distanceDriven, Long maxPrice) {
        return carRepository.getCarsBySearch(size, engine, displacement, distanceDriven, maxPrice);
    }
}
