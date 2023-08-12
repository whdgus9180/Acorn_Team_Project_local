package com.acorn.soso.cafe.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Alias("cafeCommentDto")
public class CafeCommentDto {
	private int comment_num;
	private String writer;
	private String content;
	private String target_id;
	private int comu_num;
	private int comment_group;
	private String deleted;
	private String regdate;
	private String profile;
	private int startRowNum;
	private int endRowNum;
}
