package com.acorn.soso.group.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Alias("joinDto")
public class GroupJoinDto {
	private int memNum;
	private int groupNum;
	private String memId;
	private String memNick;
	private String intro;
	private int isjoin;
	private String regdate;
	private String joindate;
	private String exdate;
}
