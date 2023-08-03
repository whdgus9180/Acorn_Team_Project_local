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
@Alias("jjimDto")
//임시로 만들어둔 찜 dto
public class JjimDto {
	//groupNum을 가져온다.
	private int groupNum;
	//찜 사용자의 아이디를 등록하기 위한 필드
	private String memId;
}
