<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/home.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
<style>
</style>

</head>
<body class="d-flex flex-column min-vh-100">
	<jsp:include page="/WEB-INF/views/include/navbar.jsp">
		<jsp:param value="home" name="current"/>
	</jsp:include>
	<h1 class="text-center">메인 페이지</h1>
	<div class="container">
		<h3 style="border-bottom:1px solid black" class="pb-2" >소모임 플랫폼 페이지에 오신것을 환영합니다</h3>
		<ul>
			<c:forEach var="tmp" items="${list}">
				<li>${tmp}</li>
			</c:forEach>
		</ul>
	</div>
	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</body>
</html>