package com.acorn.soso.group.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.soso.group.dto.GroupReviewDto;

@Repository
public class GroupReviewDaoImpl implements GroupReviewDao{

	@Autowired
	private SqlSession session;

	@Override
	public List<GroupReviewDto> getList(GroupReviewDto dto) {
		return session.selectList("groupReview.getList", dto);
	}


	@Override
	public void delete(int num) {
		session.delete("groupReview.delete", num);
	}

	@Override
	public void insert(GroupReviewDto dto) {
		session.insert("groupReview.insert", dto);
	}

	@Override
	public int getSequence() {
		return session.selectOne("groupReview.getSequence");
	}

	@Override
	public void update(GroupReviewDto dto) {
		session.update("groupReview.update", dto);
	}

	@Override
	public GroupReviewDto getData(int num) {
		return session.selectOne("groupReview.getData", num);
	}

	@Override
	public int getCount(int ref_group) {
		return session.selectOne("groupReview.getCount", ref_group);
	}

	@Override
	public double getAvg(String title) {
		return session.selectOne("groupReview.getAvg", title);
	}

	@Override
	public GroupReviewDto getEqual(GroupReviewDto dto) {
		return session.selectOne("groupReview.getEqual", dto);
	}


	@Override
	public List<GroupReviewDto> getList2(int num) {
		return session.selectList("groupReview.getList2", num);
	}

}
