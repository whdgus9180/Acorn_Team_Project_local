<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
    <jsp:include page="/WEB-INF/views/include/navbar.jsp">
        <jsp:param value="id_find" name="current"/>
    </jsp:include>
    <div class="container">
        <div class="py-5 text-center">
           <h2>아이디 찾기</h2>
        </div>
        
        <form action="${pageContext.request.contextPath}/users/id_find" class="card p-2 needs-validation" method="post">
        	<div class="mb-2">
                <label for="userName" class="control-label">이름</label>
                <input type="text" class="form-control" name="userName" id="userName"/>
            </div>
            <div class="mb-2">
                <label for="email" class="control-label">이메일</label>
                <input type="text" class="form-control" name="email" id="email"/>
            </div>
            
            <button class="btn btn-primary" type="submit">찾기</button>
        </form>
    </div>
</body>
</html>