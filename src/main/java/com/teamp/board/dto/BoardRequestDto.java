package com.teamp.board.dto;

import com.teamp.board.entity.board.Board;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class BoardRequestDto {
	private Long id;
	private String title;
	private String content;
	private String registerid;
	
		
}
