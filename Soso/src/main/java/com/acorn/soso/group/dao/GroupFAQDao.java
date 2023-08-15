package com.acorn.soso.group.dao;

import java.util.List;

import com.acorn.soso.group.dto.GroupFAQDto;

public interface GroupFAQDao {
	//소모임 FAQ문의글 작성하기
	public void insert(GroupFAQDto dto);
	//소모임 문의글의 GetList
	public List<GroupFAQDto> getList(GroupFAQDto dto);
	//소모임 문의글의 GetData
	public GroupFAQDto getData(int num);
	//소모임 문의글의 GetCount
	public int getCount(GroupFAQDto dto);
	//소모임 문의글의 update
	public void update(GroupFAQDto dto);
	//소모임 문의글의 Delete
	public void delete(int num);
	//답변 달기
	//답변하기 추가하기
	public void answer(GroupFAQDto dto);
	//답변 수정하기
	public void answerUpdate(GroupFAQDto dto);
	//답변 삭제하기(실제로는 수정)
	public void answerDelete(int num);
}
