package com.example.filtering_test_car.controller;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SearchForm {

    private List<String> size;
    private List<String> engine;
    private List<Long> displacement;
    private List<Long> distanceDriven;
    private List<Long> maxPrice;

    private String name;
    private String color;
	private String imgUrl;


}
