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
//소모임의 가입을 위한 dto
public class GroupJoinDto {
	//멤버 번호
	private int memNum;
	//소모임 번호
	private int groupNum;
	private String memId;
	private String memNick;
	private String intro;
	private int isjoin;
	private String regdate;
	private String joindate;
	private String exdate;
}
