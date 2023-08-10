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
@Alias("groupFaqDto")
public class GroupFAQDto {
	private int group_num; // 해당 소모임의 num
	private int num; //소모임 faq게시글의 num
	private String q_writer; // 문의 작성자의 이름(ID)
	private String q_comment; //소모임 관리자의 코멘트
}
