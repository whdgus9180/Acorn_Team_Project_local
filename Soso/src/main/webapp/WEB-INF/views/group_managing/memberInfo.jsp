<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>활동내역보기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/user.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" type="text/css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar_c.jsp">
		<jsp:param value="info" name="current" />
	</jsp:include>
	<section class="inner-wrap">
		<div class="title">유저 정보</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2">
					<c:choose>
						<c:when test="${empty dto.profile }">
							<i class="bi bi-person-circle" style="font-size:100px" id="profileImage"></i>
						</c:when>
						<c:otherwise>
							<img id="profileImage" src="${pageContext.request.contextPath}${dto.profile}" />
						</c:otherwise>
					</c:choose>
				</div>
				<div class="col-md-5">
					<div class="row">
						<div class="col-md-4">회원 아이디</div>
						<div class="col-md-8">${dto.user_id}</div>
					</div>
					<div class="row">
						<div class="col-md-4">자기 소개</div>
						<div class="col-md-8">${dto.intro}</div>
					</div>
					<div class="row">
						<div class="col-md-4">가입 상태</div>
						<div class="col-md-8">
							<c:choose>
								<c:when test="${dto.isJoin == 0 }">
									소모임 가입
								</c:when>
								<c:otherwise>
									소모임 추방
								</c:otherwise>
							</c:choose>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">소모임 가입일</div>
						<div class="col-md-8">${dto.join_dt}</div>
					</div>
				</div>
				<div class="col-md-5">
					<div class="row">
						<div class="col-md-8"><a class="btn btn-cancle" href="javascript:deleteConfirm()">소모임 추방하기</a></div>
					</div>
				</div>
			</div>
		</div>
		<div class="mb-5">
			<p class="title">활동 내역</p>
			<ul class="nav justify-content-center nav-tabs">
				<li class="nav-item">
					<a class="nav-link" id="writingList" href="#">작성글</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="commentList" href="#">작성댓글</a>
				</li>
			</ul>
			
			<div id="Parse_Area"gt;lt;></div>
		</div>
	</section>
    <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
	<script>
		//작성글 클릭 시 writing_list 페이지 로딩
		$("#writingList").click(function() {
			$.ajax({
	            type : "GET", //전송방식을 지정한다 (POST,GET)
	            url : "${pageContext.request.contextPath}/group_managing/info/writing_list?writer=${dto.user_id}&group_num=${dto.group_num}",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
	            dataType : "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
	            error : function(){
	                console.log("통신실패");
	            },
	            success : function(Parse_data){
	                $("#Parse_Area").html(Parse_data); //div에 받아온 값을 넣는다.
	                console.log("통신 데이터 값 : " + Parse_data);
	            }
	            
        	});
			$(this).attr("class","nav-link active")
			$("#commentList").attr("class","nav-link");
			$("#supportList").attr("class","nav-link");
		});
		
		//작성 댓글 클릭 시 comment_list 페이지 로딩
		$("#commentList").click(function() {
	        $.ajax({
	            type : "GET", //전송방식을 지정한다 (POST,GET)
	            url : "${pageContext.request.contextPath}/users/info/comment_list",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
	            dataType : "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
	            error : function(){
	                console.log("통신실패");
	            },
	            success : function(Parse_data){
	                $("#Parse_Area").html(Parse_data); //div에 받아온 값을 넣는다.
	            }
	            
        	});
	        
	        $(this).attr("class","nav-link active");
	        $("#writingList").attr("class","nav-link");
	        $("#supportList").attr("class","nav-link");
		})
		//화면 로딩 시 해당 소모임에서 작성자가 작성한 게시글 list 페이지 로딩
		$(document).ready(function() {
			$.ajax({
	            type : "GET", //전송방식을 지정한다 (POST,GET)
	            url : "${pageContext.request.contextPath}/group_managing/info/writing_list?writer=${dto.user_id}&group_num=${dto.group_num}",//호출 URL을 설정 
	            dataType : "text", //호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
	            error : function(){
	                console.log("통신실패");
	            },
	            success : function(Parse_data){
	                $("#Parse_Area").html(Parse_data); //div에 받아온 값을 넣는다.
	            }
	            
        	});
			
			$("#writingList").attr("class","nav-link active");
		});
	</script>
</body>
</html>