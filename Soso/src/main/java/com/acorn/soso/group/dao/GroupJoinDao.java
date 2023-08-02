package com.acorn.soso.group.dao;

import com.acorn.soso.group.dto.GroupJoinDto;

public interface GroupJoinDao {
	//소모임 가입을 위한 인서트
	public void insert(GroupJoinDto dto);
}
