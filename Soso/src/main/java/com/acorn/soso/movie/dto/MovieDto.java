package com.acorn.soso.movie.dto;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Alias("movieDto")
public class MovieDto {
	//영화에 관련한 필드값을 담아두기 위한 DTO이다.
	
	//영화 번호
	private int num;
	//작성자
	private String writer;
	//영화 타이틀
	private String title;
	//영화에 대한 설명
	private String caption;
	//영화 포스터 이미지 패스
	private String imagePath;
	//게시글 올린 날짜
	private String regdate;
	//추천수
	private int thumsup;
	//비추수
	private int thumsdown;
	//게시글 페이징 처리를 위한 필드
	private int startRowNum;
	private int endRowNum;
	private int prevNum;
	private int nextNum;
	private MultipartFile image; //이미지 처리를 위한 필드
	
	private double rate;
}
