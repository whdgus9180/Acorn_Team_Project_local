<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
	<head>
		<meta charset="UTF-8">
		<title>book::list</title>
	</head>
	<body>
		<h3>네이버 오픈 API를 활용한 도서 목록</h3>
		
		<table border="1">
			<c:forEach var="tmp" items="${books }">
				<tr>
					<td>${tmp.isbn }</td>
					<td><img src="${tmp.image }" alt="${tmp.title }" width="100" /></td>
					<td><a href="${tmp.link }">${tmp.title }</a></td>
					<td>${tmp }</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>