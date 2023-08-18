<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/cafe/insertform.jsp</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp">
		<jsp:param value="home" name="current"/>
	</jsp:include>
	<div style="margin-top:150px; margin-bottom:300px">
		<div>글 등록하기</div>	
		<form action="insert" method="post">
			<input type="hidden"  id="group_num" name="group_num" value="${num}" />
			<div class="col-12">
			    <div class="input-group">
			      <div class="input-group-text"></div>
			      <input type="text" class="form-control" id="title"" name="title" placeholder="제 목" >
			    </div>
			  </div>
			  <div class="col-12">
			    <label class="visually-hidden" for="select"></label>
			    <select class="form-select" id="select" name="select">
			      <option selected>선 택</option>
			      <option value="1">책 제목</option>
			      <option value="2">사진 / 영상</option>
			      <option value="3">수다</option>
			      <option value="4">정보 / 일정</option>
			    </select>
			  </div>
			<br>
			<div>
				<textarea name="content" id="content" rows="5"></textarea>
			</div>
			<button type="submit">등록</button>
		</form>
	</div>
	
</body>
<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</html>
