<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp">
		<jsp:param value="home" name="current"/>
	</jsp:include>
	<div class="container">
		<h1>그룹 가입 양식입니다.</h1>
		<form action="${pageContext.request.contextPath}/group/join?num=1" method="post">
			<label class="control-label" for="warnning">주의사항</label>
			<input class="form-control mb-3" type="text" name="warnning" id="warnning" value="여기에 각 조에 대한 주의사항 출력"/>
			<label class="control-label" for="nick">닉네임</label>
			<!-- 나중에 hidden으로 바꾸고 올리기 -->
			<input class="form-control mb-3" type="text" name="nick" id="nick" placeholder="별명을 입력하세요"/>
			<label class="control-label" for="intro">자기소개</label>			
			<textarea class="form-control mb-3" name="intro" id="" cols="30" rows="10"></textarea>
			<button class="btn btn-primary" type="submit">가입신청</button>
		</form>
	</div>
	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</body>
</html>