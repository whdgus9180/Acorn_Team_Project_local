package com.acorn.soso.group_managing.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Alias("groupManagingDto")
public class GroupManagingDto {
	private int memNum;
	private int groupNum;
	private String memId;
	private String memNick;
	private String intro;
	private int isJoin;
	private String regdate;
	private String joindate;
	private String exdate;
}
