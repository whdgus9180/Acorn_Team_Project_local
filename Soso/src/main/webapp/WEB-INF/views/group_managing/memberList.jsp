<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소모임 가입자 관리 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp">
		<jsp:param value="home" name="current"/>
	</jsp:include>
	<div class="container">
		<h3>소모임에 가입한 멤버를 관리하는 페이지 입니다</h3>
		<table class="table table-striped">
			<thead class="table-primary">
				<tr>
					<th>멤버 번호</th>
					<th>멤버 이름</th>
					<th>자기 소개</th>
					<th>소모임 가입일</th>
					<th>멤버 활동 내역</th>
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