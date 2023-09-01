<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${dto.name } 가입 신청 페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>${dto.name } 가입 신청 페이지</h1>
		<form action="${pageContext.request.contextPath}/group/join?num=${num}" method="post">
			<pre>${dto.caption }</pre>
			<label class="control-label" for="intro">자기소개</label>			
			<textarea class="form-control mb-3" name="intro" id="" cols="30" rows="10"></textarea>
			<button class="btn btn-primary" type="submit">가입신청</button>
		</form>
	</div>
</body>
</html>