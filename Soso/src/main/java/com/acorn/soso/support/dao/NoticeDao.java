package com.acorn.soso.support.dao;

import java.util.List;

import com.acorn.soso.support.dto.NoticeDto;

public interface NoticeDao {
	//공지 목록
	public List<NoticeDto>getList(NoticeDto dto);
	//공지 추가
	public void insert(NoticeDto dto);
	//공지 정보 얻어오기
	public NoticeDto getData(int num);
	//공지 수정
	public void update(NoticeDto dto);
	//공지 삭제
	public void delete(int num);
}
