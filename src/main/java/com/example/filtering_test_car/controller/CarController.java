package com.example.filtering_test_car.controller;


import com.example.filtering_test_car.service.CarService;
import com.example.filtering_test_car.vo.Car;
import com.example.filtering_test_car.vo.CarDetail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CarController {
	@Autowired
	private CarService carService;
    
	@Autowired
    public CarController(CarService carService) {
    	this.carService = carService;
    }

    
    @RequestMapping("/")
//    @ResponseBody
    public String home(Model model) {

        List<Car> cars = carService.getCarsBySearch(null,null,null,null,null);
        
        model.addAttribute("cars",cars);
        
        for(Car car : cars) {
            System.out.println(car.getId());
        }
        
        return "usr/home/main";
    }

    @PostMapping("/")
    public String getCarsBySearch(SearchForm form, Model model) {
    	
    	System.out.println(form.getSize());

        List<Car> cars = carService.getCarsBySearch(form.getSize(), form.getEngine(), form.getDisplacement(), form.getDistanceDriven(), form.getMaxPrice());

        model.addAttribute("cars",cars);

        for(Car car : cars) {
            System.out.println(car.getId());
        }

        return "usr/home/main";
    }

    
    @RequestMapping("/usr/home/color")
    public String color(SearchForm form, Model model){
    	
    	 List<CarDetail> carDetail= carService.getColor(form.getColor());
         model.addAttribute("carDetail",carDetail);
        
         for(CarDetail car : carDetail) {
             System.out.println(car.getId());
         }
        return "usr/home/color";
    }
}
