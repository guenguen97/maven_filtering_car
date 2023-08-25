package com.example.filtering_test_car.service;


import com.example.filtering_test_car.repository.CarRepository;
import com.example.filtering_test_car.vo.Car;
import com.example.filtering_test_car.vo.CarDetail;

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

    public List<Car> getCarsBySearch(List<String> size, List<String>  engine,List<Long>  displacement, List<Long>  distanceDriven, List<Long>   maxPrice) {
        return carRepository.getCarsBySearch(size, engine, displacement, distanceDriven, maxPrice);
    }
    
    public List<CarDetail> getColor(String color) {
        return carRepository.getColor(color);

    }
}
