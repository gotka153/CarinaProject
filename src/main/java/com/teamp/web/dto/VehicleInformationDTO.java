package com.teamp.web.dto;

import lombok.Data;

@Data
public class VehicleInformationDTO {
 //   private int vehicle_no;
    private String license_number;
    private String domestic_import;
    private String manufacturer;
    private String vehicle_type;
    private String model_name;
    private String year_of_manufacture;
    private int mileage;
    private int displacement;
    private String fuel_type;
    private String transmission_type;
    private String wheel_type;
    private int passenger_capacity;
    private String color;
    private int price;
}