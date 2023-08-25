package com.example.filtering_test_car.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CarDetail {
	private int id;
	private String color;
	private String name;
	private String imgUrl;
}
