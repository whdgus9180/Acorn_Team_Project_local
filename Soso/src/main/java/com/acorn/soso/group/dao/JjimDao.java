package com.acorn.soso.group.dao;

import com.acorn.soso.group.dto.JjimDto;

public interface JjimDao {
	//찜 추가하기
	public void insert(JjimDto dto);
	//찜 삭제하기
	public void delete(JjimDto dto);
	//찜 데이터 얻어오기
	public JjimDto getData(JjimDto dto);

}
