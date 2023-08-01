package com.acorn.soso.group.dao;

import java.util.List;

import com.acorn.soso.group.dto.GroupReviewDto;

public interface GroupReviewDao {
	//리뷰 목록 얻어오기
	public List<GroupReviewDto> getList(GroupReviewDto dto);
	//댓글 삭제
	public void delete(int num);
	//댓글 추가
	public void insert(GroupReviewDto dto);
	//추가할 댓글의 글번호를 리턴하는 메소드
	public int getSequence();
	//댓글 수정
	public void update(GroupReviewDto dto);
	//댓글 하나의 정보를 리턴하는 메소드
	public GroupReviewDto getData(int num);
	//댓글의 갯수를 리턴하는 메소드
	public int getCount(int ref_group);
	//리뷰의 평점을 리턴하는 메소드
	public double getAvg(String title);
	//리뷰가 이미 존재하는지 확인하는 메소드
	public GroupReviewDto getEqual(GroupReviewDto dto);
	//디테일에 리뷰를 보여주기 위한 후기 리스트 호
	public List<GroupReviewDto> reviewList(int num);
}
