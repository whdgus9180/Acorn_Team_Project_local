package com.acorn.soso.support.faq.dao;

import java.util.List;

import com.acorn.soso.support.faq.dto.InquireDto;

public interface InquireDao {
	//문의 등록하기
	public void insert(InquireDto dto);
	//등록한 문의글 불러오기
	public List<InquireDto> getList(String id);
}
