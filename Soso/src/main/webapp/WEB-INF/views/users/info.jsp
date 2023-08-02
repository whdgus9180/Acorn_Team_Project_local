<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/info.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
	<style>
		/* 프로필 이미지를 작은 원형으로 만든다 */
		#profileImage {
			width: 100px;
			height: 100px;
			border: 1px solid #cecece;
		}
		
		.container {
			width: 768px;
		}
	</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp">
		<jsp:param value="info" name="current" />
	</jsp:include>
	
	<div class="container">
		<h1 class="text-center">가입 정보</h1>
		<div class="row">
			<div class="col-8">
				<table class="table table-bordered">
					<tr>
		
					</tr>
					<tr>
						<th>아이디</th>
						<td>${id }</td>
					</tr>
					<tr>
					<tr>
						<th>비밀번호</th>
						<td><a class="btn btn-secondary btn-sm" href="${pageContext.request.contextPath}/users/pwd_updateform">수정하기</a></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>${dto.email }</td>
					</tr>
					<tr>
						<th>가입일</th>
						<td>${dto.regdate }</td>
					</tr>
				</table>
			</div>
			<div class="col-4">
				<c:choose>
					<c:when test="${empty dto.profile }">
						<i class="bi bi-person-circle" style="font-size:100px" id="profileImage"></i>
					</c:when>
					<c:otherwise>
						<img id="profileImage" src="${pageContext.request.contextPath}${dto.profile}" />
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/users/updateform">개인정보 수정</a>
		<a class="btn btn-outline-danger" href="javascript:deleteConfirm()">탈퇴</a>
	</div>
	<script>
		function deleteConfirm() {
			const isDelete = confirm("${id} 님 탈퇴 하시겠습니까?");
			if (isDelete) {
				location.href = "${pageContext.request.contextPath}/users/delete";
			}
		}
	</script>
</body>
</html>