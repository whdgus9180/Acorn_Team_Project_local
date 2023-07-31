<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 만든 소모임 관리하기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
<style>
	.layoutBox{
		width: 700px;
		height: 200px;
		border: 1px solid black;
		margin-bottom: 20px;
		border-radius: 10px;
	}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp">
		<jsp:param value="group_managing_admin" name="current"/>
	</jsp:include>
	<div class="container">
		<h2 class="text-center">내가 만든 소모임 리스트</h2>
		<div class="d-flex flex-column align-items-center">
			<div class="d-flex justify-content-end">
				<a href="${pageContext.request.contextPath}/group_managing/group_insertForm">내 소모임 만들기</a>
			</div>
			<div class="layoutBox">
				<div class="d-flex justify-content-between">
					<div>
						<div>소모임 이름</div>
						<div>소모임 개설 날짜 : 2023.07.28</div>
						<div>소모임 평점 표시</div>
						<div>[소모임 사진]</div>
						<div>소모임 소개 내용</div>
					</div>
					<div>
						<div><a href="${pageContext.request.contextPath}/group_managing/group_updateForm">소모임 정보 수정하기</a></div>
						<div><a href="${pageContext.request.contextPath}/group_managing/memberList">소모임 인원현황 : 10 / 40</a></div>
						<div><a href="${pageContext.request.contextPath}/group_managing/applicantList">소모임 가입 신청 인원 관리하기</a></div>
						<div><a href="${pageContext.request.contextPath}/cafe/list">소모임 게시판 가기</a></div>
					</div>
				</div>
			</div>
			<div class="layoutBox">
				
			</div>
			<div class="layoutBox">
				
			</div>
			
		</div>
	</div>
</body>
</html>