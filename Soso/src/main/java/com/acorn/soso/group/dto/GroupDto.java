package com.acorn.soso.group.dto;

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
@Alias("groupDto")
public class GroupDto {
	
	//소모임 번호
	private int num;
	//작성자
	private String writer;
	//소모임 타이틀
	private String title;
	//소모임에 대한 설명
	private String caption;
	//소모임 대표 이미지
	private String imagePath;
	//소모임 개설일
	private String regdate;
	//게시글 페이징 처리를 위한 필드
	private int startRowNum;
	private int endRowNum;
	private int prevNum;
	private int nextNum;
	private MultipartFile image; //이미지 처리를 위한 필드
	
	private double rate;
}
