<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소모임 가입 신청자 관리</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp">
		<jsp:param value="home" name="current"/>
	</jsp:include>
	<div class="container">
		<h3 class="text-center">소모임 가입 신청자들을 관리하는 페이지입니다.</h3>
		<table class="table table-striped">
			<thead class="table-primary">
				<tr>
					<th>신청번호</th>
					<th>가입 신청자</th>
					<th>자기 소개</th>
					<th>가입 신청일</th>
					<th>가입 승인여부</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td></td>
						<td></td>
						<td>
							<a href="detail?num=${tmp.num }&condition=${condition}&keyword=${encodedK}"></a>
						</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>
							<a href="detail?num=${tmp.num }&condition=${condition}&keyword=${encodedK}"></a>
						</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>
							<a href="detail?num=${tmp.num }&condition=${condition}&keyword=${encodedK}"></a>
						</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>
							<a href="detail?num=${tmp.num }&condition=${condition}&keyword=${encodedK}"></a>
						</td>
						<td></td>
						<td></td>
					</tr>
			</tbody>
		</table>
	</div>
</body>
</html>