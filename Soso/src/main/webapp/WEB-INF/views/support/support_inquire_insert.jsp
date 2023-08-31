<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<c:set var="path" value="${pageContext.request.contextPath}"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/support/support_notice_insert.jsp</title>
</head>
<body>
	<script>
		alert("문의주신 내용이 접수 되었습니다.");
		location.href="${pageContext.request.contextPath}/support/support_inquire_MyInquire";
	</script>
</body>
</html>