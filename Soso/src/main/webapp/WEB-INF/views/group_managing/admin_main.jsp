<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 만든 소모임</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
<style>
	.container{
		width: 992px;
	}
	.card-image{
		width: 120px;
		height: 120px;
		border-radius: 50%;
	}
	#wrapper{
        display: grid;
        grid-template-columns: 1fr 1fr;
        column-gap: 40px;
        row-gap: 40px;
    }
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp">
		<jsp:param value="group_managing_admin" name="current"/>
	</jsp:include>
	<div class="container">
		<div class="m-2 mt-4 mb-3 border-bottom border-dark">
			<div class="ms-3 fw-bold fs-2">내 소모임 관리하기</div>
			<div class="d-flex justify-content-end">
				<div class="mb-2">
					<a class="link-dark fw-bold fs-5" href="${pageContext.request.contextPath}/group_managing/group_insertForm">개설하기</a>
				</div>
			</div>
		</div>
		<div class="d-flex ms-4 mb-5">
			<div class="col-2 me-2"><a style="text-decoration: none; color:rgb(65, 75, 178)" class="fw-bolder fs-5" href="#">진행 중</a></div>
			<div><a style="text-decoration: none;" class="link-dark fw-bold fs-5" href="#">종료</a></div>
		</div>
		<div id="wrapper" class="ms-2 me-2">
			<div class="ms-2 box border border-2 border-dark-subtle">
				<div class="d-flex justify-content-end mt-3 me-3">
					<div>❤ 123</div>
				</div>
				<div class="d-flex pt-3 p-3">
					<div class="col-3 me-5">
						<div><img class="card-image" src="https://plus.unsplash.com/premium_photo-1667251758255-514ef43844fb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Ym9va3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=400&q=60"/></div>
						<div class="text-center mt-4"><a class="link-dark fw-bolder" href="${pageContext.request.contextPath}/group_managing/memberList">${memberCount} / 40</a></div>
					</div>
					<div class="">
						<h4 style="font-weight:600">소모임 명</h4>
						<div class="mt-3">DATE: 2023-07-28</div>
						<div class="mt-2">⭐⭐⭐⭐</div>
						<div class="mb-3"><a class="link" href="${pageContext.request.contextPath}/cafe/list">게시판 가기</a></div>
						<div class="d-flex mt-1">
							<div><a class="btn btn-secondary me-4" href="${pageContext.request.contextPath}/group_managing/group_updateForm">정보 수정</a></div>
							<div><a style="background-color:rgb(225, 218, 206);" class="btn" href="${pageContext.request.contextPath}/group_managing/applicantList">가입 관리</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	 <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</body>
</html>