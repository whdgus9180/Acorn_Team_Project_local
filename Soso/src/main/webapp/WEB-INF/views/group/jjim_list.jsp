<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en-us">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>CSS Grid - line-based placement starting point</title>
    <style>
      .container{
        border: 1px solid red;
        display : grid;
        gap : 10px;
      }
    </style>
  </head>
<body>
    <div class="container">
    	<c:forEach var="tmp" items="${list }">
    		<div class="item"><img src="#" alt="" />이미지</div>
	        <div class="item">${tmp.writer} / ${tmp.title}</div>
	        <div class="item">
	       		<span>여기에 찜 하트 표시(누르면 제거)</span>
	        </div>
	        <div class="item">${tmp.caption}</div>
    	</c:forEach>
    </div>
    	<!-- jQuery 라이브러리를 로드 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
	</script>
</body>
</html>