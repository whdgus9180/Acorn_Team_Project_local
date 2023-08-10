<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소모임 문의 게시판</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<div class="container">
			<br>	
			<h2 style="text-align: center">소모임 FAQ 게시판</h2>
			<div style="width:100%; text-align:right;">
			<a href="${pageContext.request.contextPath }/group/group_faq/insertform" class="btn btn-outline-dark" tabindex="-1" role="small-button" aria-disabled="true" >글 쓰기</a>
			</div>
			<br>
			<table class="table">
				<thead class="table-group-divider" style="border-bottom: 1px;">
					<tr>	
						<th>작성자</th>
						<th>제목</th>
						<th class="time" style="text-align: center">날짜</th>
					</tr>
				</thead>
				<tbody>
						<tr>
							<td>문의글 작성자</td>
							<td>
								<a style="color: black;" class="text-decoration-none"  href="#">문의글 제목</a>
							</td>
							<td style="text-align: center">${tmp.regdate }</td>
						</tr>
				</tbody>
			</table>
	</div>
</body>
</html>