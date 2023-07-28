package com.acorn.soso.group.dto;

import org.apache.ibatis.type.Alias;

import com.acorn.soso.users.dto.UsersDto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Alias("reviewDto")
public class GroupReviewDto {
	private int num;
	private String title;
	private String writer;
	private String review;
	private int ref_group;
	private String profile;
	private int rate;
	private int startRowNum;
	private int endRowNum;
}
