<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입 거절 지원자 리스트</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
<style>
	.container{
		width: 992px;
	}
	.card-image{
		width: 100px;
		height: 100px;
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
	<div class="container">
		<div class="m-2 mt-4 mb-3 border-bottom border-dark">
			<div class="ms-3 fw-bold fs-2 mb-4">Rejected Applicant</div>
		</div>
		<div class="d-flex ms-4 mb-5">
			<div class="col-2 me-2"><a style="text-decoration: none; color:rgb(65, 75, 178)" class="fw-bolder fs-5" href="${pageContext.request.contextPath}/group_managing/applicantList">신청 중</a></div>
			<div><a style="text-decoration: none;" class="link-dark fw-bold fs-5" href="${pageContext.request.contextPath}/group_managing/rejectedApplicantList">거절</a></div>
		</div>
		<div id="wrapper" class="ms-2 me-2">
			<c:forEach var="tmp" items="${list}">
			<div class="border border-dark-subtle m-2" style="border-radius:25px">
				<div class="d-flex pt-3 p-4">
					<div class="col-3 me-5 d-flex align-items-center">
						<div><img class="card-image" src="https://plus.unsplash.com/premium_photo-1667251758255-514ef43844fb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Ym9va3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=400&q=60"/></div>
					</div>
					<div class="col pt-4">
						<h4 style="font-weight:600">${tmp.memNick}</h4>
						<div class="mt-3">${tmp.regdate}</div>
						<div class="mb-3"><a class="link" href="${pageContext.request.contextPath}/cafe/list">회원 정보 보기</a></div>
						<div class="d-flex mt-1 justify-content-around">
							<div><a style=width:100px" class="btn btn-primary me-3" href="${pageContext.request.contextPath}/group_managing/joinApprove?num=${tmp.memNum}">가입 승인</a></div>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>