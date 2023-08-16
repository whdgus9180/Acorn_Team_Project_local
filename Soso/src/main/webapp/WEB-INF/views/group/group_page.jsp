<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
	<link rel="stylesheet" href="${path }/resources/css/group_page.css" type="text/css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar_c.jsp">
		<jsp:param value="groupPage" name="current" />
	</jsp:include>
	
	<section class="sub-contents group_content">
		<div class="inner-wrap">
            <h3 class="title black" data-aos="fade-up"
            data-aos-offset="300"
            data-aos-easing="ease-in-sine">${dto.name }</h3>
         </div>
		<div class="inner-wrap">
			<div class="group_meet_text">
			<ul>
				<li class="p-2"><strong>${dto.meeting_loc }</strong></li>
				<li class="p-2"><strong>${dto.meeting_time }</strong></li>
				<li class="p-2"><strong>최대 ${dto.max_people }명</strong></li>
				<li class="p-2"><strong>신청 기한 &nbsp; </strong>
		         <fmt:parseDate value="${dto.deadline_dt}" var="deadline_dt" pattern="yyyy-MM-dd"></fmt:parseDate>
		         <fmt:formatDate value="${deadline_dt}" pattern="yyyy-MM-dd" />까지
		         </li>
			</ul>
			</div>
		</div>
		
		<div class="inner-wrap">
			<div class="p-2 flex-grow-1">모임 대표 이미지
				<img src="${pageContext.request.contextPath}${dto.img_path}">
			</div>
			<div class="p-2 flex-grow-1">
				<h4>모임 소개</h4>
				<span>${dto.caption }</span>
				<div class="">
					<div class="p-2">
						<c:choose>
							<c:when test="${empty jjim }">
								<div class="p-2 heart" id="fillHeart">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
									  <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
									</svg>
								</div>
								<div id="jjimCount">${jjimCount }</div>
							</c:when>
							<c:otherwise>
								<div class="p-2 heart" id="emptyHeart">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
									  <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
									</svg>
								</div>
								<div id="jjimCount">${jjimCount }</div>
							</c:otherwise>
						</c:choose>
					</div>
					<input type="hidden" name="jjimNum" id="jjimNum" value="${dto.num }" hidden />
					<button id="jjim" hidden>찜하기 버튼 테스트</button>
						<c:set var="now" value="<%= new java.util.Date() %>" />
						<c:set var="nowDate"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set> 
						<c:choose>
						<c:when test="${dto.deadline_dt lt nowDate}">
							<button type="button" class="btn btn-secondary" disabled>신청 마감</button>
						</c:when>
						<c:otherwise>
							<c:choose>
								<c:when test="${knowJoin == -1 || empty knowJoin}">
									<button type="button" class="btn btn-outline-primary"><a href="${pageContext.request.contextPath}/group/group_in?num=${dto.num }">가입하기</a></button>
								</c:when>
								<c:otherwise>
									<button type="button" class="btn btn-outline-primary cancle" id="cancleBtn" name="cancleBtn">신청 취소</button>
								</c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
		<div class="inner-wrap">
			<div class="d-flex mb-3">
			<div class="p-2 flex-grow-1">호스트의 한마디</div>
			<div class="p-2 flex-grow-1">${dto.manager_comment }</div>
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
		</div>
		
		<div class="inner-wrap">
			<div>
			<h4 class="mx-1 my-1">이 모임에 참석한 사람들의 후기입니다.</h4>
			<div class="d-flex flex-column mb-3">
			<!-- forEach를 사용해서 댓글 출력(나중에는 분기 써서 댓글이 없을 때는 다른 페이지 표시하) -->
				<c:choose>
					<c:when test="${empty commentList}">
						<div class="card mx-1 my-1">
							<div class="card-body">
								<p class="card-text">아직 후기가 없어요</p>
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<c:forEach var="tmp" items="${commentList}" end="2">
							<div class="card mx-1 my-1">
								<div class="card-body">
									<p class="card-text">${tmp.content }</p>
									<p class="card-text">${tmp.rate }</p>
								</div>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				<c:forEach var="item" items="${list}">
				  <c:choose>
				    <c:when test="${item.user_id eq sessionScope.id}">
				    	<c:if test="${dto.deadline_dt lt nowDate}">
							<a href="${pageContext.request.contextPath}/group/comment/comment_insert_form?num=${dto.num}" id="reviewInsert">후기 작성하기</a>
							<div id="commentArea"></div>
						</c:if>
				    </c:when>
				  </c:choose>
				</c:forEach>
			</div>
		</div>
		</div>
		
		<div class="inner-wrap">
				
			<div>
				<ul class="nav justify-content-end nav-tabs">
					<li class="nav-item">
						<a class="nav-link" id="faqList" href="#">문의 게시판</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="commentList" href="#">후기 게시판</a>
					</li>
				</ul>
				<div id="Parse_Area"gt;lt;></div>
			</div>
		</div>
		

	</section>
	
	
    <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	
	<!-- jQuery 라이브러리를 로드 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	      <script>
      	AOS.init();
    </script>
	<script>

	// heart 이모티콘을 클릭하면 button id="jjim"를 강제로 클릭하는 코드
	  $(".heart").on("click", function() {
	    $("#jjim").click();
	  });
	  
	  //id가 jjim인 버튼을 눌렀을 때 ajax 요청하기
	  $("#jjim").on("click", function(){
		  var jjimNum = $("#jjimNum").val();
		  //ajax로 요청한다.
		  $.ajax({
		    // 요청 경로
		    url: "${pageContext.request.contextPath}/group/jjim",
		    // 요청 방식
		    method: "get",
		    // num이라는 파라미터를 request 영역에 담아둔다. 1은 테스트용 값
		    data: { "num": jjimNum },
		    success: function(data){
		    // 서버에서 반환된 응답 데이터를 이용하여 원하는 처리를 한다.
		    // data 여부에 따라 클라이언트에게 표시해준다.
		    if (data.isSuccess == true) {
		    	
		    	// 찜 추가되었습니다.
				alert(jjimNum+"찜 추가되었습니다.");
				
		    	// div의 클래스를 'emptyHeart'에서 'heart'로 변경
				$(".heart").removeClass("emptyHeart").addClass("heart");
				
				// 하트의 모양을 채워지게 변경
				$(".heart").html(`
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
					    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
					</svg>
				`);
				} else {
				
					// 찜 취소하셨습니다.
				alert(jjimNum+"찜 취소하셨습니다.");
				
				// 하트의 모양을 비워지게 변경
				$(".heart").html(`
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
					    <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
					</svg>
				`);
				}
			 // jjimCount 엘리먼트의 내용을 data.jjimCount로 변경
			 $("#jjimCount").text(data.jjimCount);
		      }
		    });
	  });
	  
	  //신청 취소 버튼 누르면 신청 취소가 되게 해주는 ajax
	  $(".cancle").on("click", function(){
		  var jjimNum = $("#jjimNum").val();
		  var $cancleBtn = $(this); // 클릭된 버튼을 참조

		  $.ajax({
			  url : "${pageContext.request.contextPath}/group/cancleJoin",
			  method : "get",
			  data : { "num" : jjimNum },
			  success: function(data){
				  // 신청 취소 버튼을 가입하기 버튼으로 변경
			      $cancleBtn.replaceWith(`
			        <button type="button" class="btn btn-outline-primary cancleBtn">
			          <a href="${pageContext.request.contextPath}/group/group_in?num=${dto.num }">가입하기</a>
			        </button>
			      `);
				  alert("가입 신청을 취소하셨습니다.")
			  }
		  })
	  })
	  
	  //여기서부터 ajax faq
	  //작성글 클릭 시 writing_list 페이지 로딩
	  $("#faqList").click(function() {
		  $.ajax({
	            type : "GET", //전송방식을 지정한다 (POST,GET)
	            url : "${pageContext.request.contextPath}/group/faq/list?num=${dto.num }",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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
		});
	  
	  //후기 작성하기 클릭 시 writing_list 페이지 로딩
	  $("#reviewInsert").click(function(event) {
		  event.preventDefault(); // 앵커의 기본 동작을 막습니다.
		  $.ajax({
	            type : "GET", //전송방식을 지정한다 (POST,GET)
	            url : "${pageContext.request.contextPath}/group/comment/comment_insert_form?num=${dto.num }",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
	            dataType : "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
	            error : function(){
	                console.log("통신실패");
	            },
	            success : function(Parse_data){
	                $("#commentArea").html(Parse_data); //div에 받아온 값을 넣는다.
	                console.log("통신 데이터 값 : " + Parse_data);
	            }
	            
        	});
		});
		
	  //화면 로딩 시 writing_list 페이지 로딩
	  $(document).ready(function() {
			$.ajax({
	            type : "GET", //전송방식을 지정한다 (POST,GET)
	            url : "${pageContext.request.contextPath}/group/faq/list?num=${dto.num }",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
	            dataType : "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
	            error : function(){
	                console.log("통신실패");
	            },
	            success : function(Parse_data){
	                $("#Parse_Area").html(Parse_data); //div에 받아온 값을 넣는다.
	            }
	            
        	});
			
			$("#faqList").attr("class","nav-link active");
		});	  
	</script>
</body>
</html>