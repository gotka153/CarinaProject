package com.teamp.web.dto;

import lombok.Data;

@Data
public class SearchPageDTO {
	private String domesic_import, manufacturer, vehicle_type, model_name, year_of_manufacture, fuel_type, transmission_type, wheel_type, color, nickname, thumbnail;
	private int vehicle_no, mileage, displacement, passenger_capacity, price, b_no, delete, views;

}
