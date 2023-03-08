package com.teamp.board.dto;

import lombok.Data;

@Data
public class CarInfoDTO {
	private String license_number, thumbnail, front, side, back, inside_fornt, inside_back, engine_room, trunk;
	private int vehicle_no;

}
