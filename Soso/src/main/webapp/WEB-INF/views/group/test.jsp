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
<style>
	.d-flex{
		border : 1px solid red;
		border-radius: 10px
	}
}
</style>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp">
		<jsp:param value="home" name="current"/>
	</jsp:include>
	
	<div class="container">
		<h1 class="mb-3 mt-3">소모임 제목</h1>
		<div class="d-flex flex-row mb-3">
			<div class="p-2">장소</div>
			<div class="p-2">시간</div>
			<div class="p-2">인원</div>
		</div>
		<div class="d-flex mb-3">
			<div class="p-2 flex-grow-1">모임 대표 이미지</div>
			<div class="p-2 flex-grow-1">
				<span>모임 소개</span><br/>
				<span>여기에 모임 소개 작성</span>
				<div class="d-flex flex-row-reverse" style="border : 0px;">
					<div class="p-2"><button type="button" class="btn btn-outline-danger">찜하기</button></div>
					<div class="p-2"><button type="button" class="btn btn-outline-primary">가입하기</button></div>
				</div>
			</div>
		</div>
		<div class="d-flex mb-3">
			<div class="p-2 flex-grow-1">호스트의 한마디</div>
			<div class="p-2 flex-grow-1">호스트 소개 이미지</div>
		</div>
		<div>
			<h4 class="mx-1 my-1">이 모임에서는 이런 책들을 읽어요</h4>
			<div class="d-flex">
				<div class="card mx-1 my-1" style="width: 9rem;">
					<div class="card-body">
						<img src="${pageContext.request.contextPath}/images/0.png" class="card-img-top" alt="..." />
					</div>
					<h5 class="card-title">책 이름1</h5>
					<p class="card-text">여기에 책 설명이 출력될 예정입니다.</p>
				</div>
				<div class="card mx-1 my-1" style="width: 9rem;">
					<div class="card-body">
						<img src="${pageContext.request.contextPath}/images/1.png" class="card-img-top" alt="..." />
					</div>
					<h5 class="card-title">책 이름2</h5>
					<p class="card-text">여기에 책 설명이 출력될 예정입니다.</p>
				</div>
				<div class="card mx-1 my-1" style="width: 9rem; height: 18rem;">
					<div class="card-body">
						<img src="${pageContext.request.contextPath}/images/2.png" class="card-img-top" alt="..." />
					</div>
					<h5 class="card-title">책 이름3</h5>
					<p class="card-text">여기에 책 설명이 출력될 예정입니다.</p>
				</div>
				<!-- 반복문으로 출력할 예정입니다. -->
			</div>
		</div>
		<div>
			<h4 class="mx-1 my-1">이 모임에 참석한 사람들의 후기입니다.</h4>
			<div class="d-flex flex-column mb-3">
				<div class="card mx-1 my-1">
					<div class="card-body">
						후기1
					</div>
				</div>
				<div class="card mx-1 my-1">
					<div class="card-body">
						후기2
					</div>
				</div>
				<div class="card mx-1 my-1">
					<div class="card-body">
						후기3
					</div>
				</div>				
			</div>
		</div>
		<div>
			<h5 class="mx-1 my-1">저희 모임에 궁금한 게 있으신가요?(댓글, 대댓글 구현)</h5>
			<div class="d-flex flex-column mb-3">
				<div class="p-2">댓글 기능</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</body>
</html>
</html>