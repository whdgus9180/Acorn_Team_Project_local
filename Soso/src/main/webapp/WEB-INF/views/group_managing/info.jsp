<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Warning</title>
</head>
<body>
	<script>
		alert("${exception.getMessage()}")
		location.href="${pageContext.request.contextPath}/group_managing/admin_main";
	</script>
</body>
</html>