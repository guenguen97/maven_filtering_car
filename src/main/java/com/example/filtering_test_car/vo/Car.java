package com.example.filtering_test_car.vo;





import lombok.*;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class Car {

 
    private Long id;

    @NonNull
    private String name;
    @NonNull
    private String size;
    @NonNull
    private String engine;
    @NonNull
    private Long displacement;
    @NonNull
    private Long distanceDriven;
    @NonNull
    private Long minPrice;
    @NonNull
    private Long maxPrice;
    @NonNull
    private String imgUrl;




}
