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
		<h3>가입 정보</h3>
		<div class="row border mb-2">
			<div class="col-2">
				<c:choose>
					<c:when test="${empty dto.profile }">
						<i class="bi bi-person-circle" style="font-size:100px" id="profileImage"></i>
					</c:when>
					<c:otherwise>
						<img id="profileImage" src="${pageContext.request.contextPath}${dto.profile}" />
					</c:otherwise>
				</c:choose>
			</div>
			<div class="col-5">
				<table class="table table-borderless">
					<tr>
						<th>이름</th>
						<td>${dto.userName }</td>
					</tr>
					<tr>
						<th>아이디</th>
						<td>${id }</td>
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
			<div class="col-5">
				<table class="table table-borderless">
					<tr>
						<th>비밀번호</th>
						<td><a class="btn btn-secondary btn-sm" href="${pageContext.request.contextPath}/users/pwd_updateform">수정하기</a></td>
					</tr>
					<tr>
						<th>생일</th>
						<td>${dto.birth }</td>
					</tr>
					<tr>
						<th>성별</th>
						<td>${dto.gender }</td>
					</tr>
				</table>
				<a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/users/updateform">개인정보 수정</a>
				<a class="btn btn-outline-danger" href="javascript:deleteConfirm()">탈퇴</a>
			</div>
		</div>
		
		<div>
			<h3>활동 내역</h3>
			<ul class="nav justify-content-end">
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="#">작성글</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">작성댓글</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">문의사항</a>
				</li>
			</ul>
			<table class="table table-striped">
				<thead class="table-dark">
					<tr>
						<th>소모임 명</th>
						<th>글 제목</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<!-- 임시 데이터 -->
					<tr>
						<td>책 나눔 모임</td>
						<td>
							<a href="">글 제목 / 클릭시 해당 글로 이동</a>
						</td>
						<td>2023.08.02 16:15:30</td>
					</tr>
					
					<%-- <c:forEach var="tmp" items="${list }">
						<tr>
							<td>${tmp.num }</td>
							<td>${tmp.writer }</td>
							<td>
								<a href="detail?num=${tmp.num }&condition=${condition}&keyword=${encodedK}">${tmp.title }</a>
							</td>
							<td>${tmp.viewCount }</td>
							<td>${tmp.regdate }</td>
						</tr>
					</c:forEach> --%>
				</tbody>
			</table>
			<nav>
				<ul class="pagination">
					<%--
						startPageNum 이 1 이 아닌 경우에만 Prev 링크를 제공한다. 
						&condition=${condition}&keyword=${encodedK}
					 --%>
					<c:if test="${startPageNum ne 1 }">
						<li class="page-item">
							<a class="page-link animate__animated" href="list?pageNum=${startPageNum-1 }&condition=${condition}&keyword=${encodedK}">Prev</a>
						</li>
					</c:if>
					<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
						<li class="page-item ${pageNum eq i ? 'active' : '' }">
							<a class="page-link animate__animated" href="list?pageNum=${i }&condition=${condition}&keyword=${encodedK}">${i }</a>
						</li>
					</c:forEach>
					<%--
						마지막 페이지 번호가 전체 페이지의 갯수보다 작으면 Next 링크를 제공한다. 
					 --%>
					<c:if test="${endPageNum lt totalPageCount }">
						<li class="page-item">
							<a class="page-link animate__animated" href="list?pageNum=${endPageNum+1 }&condition=${condition}&keyword=${encodedK}">Next</a>
						</li>
					</c:if>				
				</ul>
			</nav>
		</div>
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