
package com.acorn.soso.support.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Alias("noticeDto")
public class NoticeDto {
	//Notice 페이지 필드 값
	
	//공지 번호
	private int notice_num;
	//공지 카테고리
	private String category;
	//공지 제목
	private String title;
	//공지 내용
	private String content;
	//공지 등록일
	private String regdate;
	//페이지 관리
	private int startRowNum;
	private int endRowNum;
	private int prevNum;  //이전글의 글번호
	private int nextNum;
}
