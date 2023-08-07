package com.acorn.soso.group.dao;

import java.util.List;

import com.acorn.soso.group.dto.JjimDto;

public interface JjimDao {
	//찜 추가하기
	public void insert(JjimDto dto);
	//찜 삭제하기
	public void delete(JjimDto dto);
	//찜 데이터 얻어오기
	public JjimDto getData(JjimDto dto);
	//찜 카운트 얻어오기
//	public int getCount(int groupNum);

}
