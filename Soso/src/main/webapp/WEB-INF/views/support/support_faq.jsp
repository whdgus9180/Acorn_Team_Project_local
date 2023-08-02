<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/support_faq</title>
<style>
	.main_content{
		margin: 100px auto 90px;
		box-sizing: border-box;
		width: 100%;
		min-height: 260px;
	}
	.area_faq ul{
		padding: 37px 40px 13px;
		box-sizing: border-box;
		border-top: 2px solid #3d4652;
	}
	.area_faq ul li{
		margin-bottom: 27px;
		box-sizing: border-box;
		display: inline-block;
		width: 49%;
		font-size: 14px;
	}
	.notice{
		width:630px;
		height:290px;
		display: inline-block;
	}
	.notice .view_more{
		float: right;
		margin-right: 50px;
		display: inline-block;
		font-size: 14px;
	}
	.notice h3.title{
		padding-bottom: 16px;
		display: inline-block;
	}
	.area_contact{
		width: 630px;
		height: 290px;
		padding: 51px;
		float: right;
		display: inline-block;
		box-sizing: border-box;
		border: 1px solid gray;
		
	}
	.faq{
		display: inline-block;
	}
	#tab_menu{
		margin: 60px 0 80px;
	}
	.tab_content{
		margin-top:14px;
		margin-bottom:20px;
		font-size:16px;
		border-top: 2px solid black;
	}
	.tab_content ul{
		margin-top: 20px;
	}
	.tab_content li{
		border-bottom: 1px solid gray;
		box-sizing:border-box;
		width:100%;
		position:relative;
		display:inline-block;
	}
	.tab_content li span{
		display:inline-block;
	}
	.tab_content li span p{
		display:inline-block;
	}
	.search{
		margin-top:20px;
	}
	.container h2{
		text-align:center;
	}
	.container p.sub_text{
		text-align:center;
	}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/navbar.jsp">
	<jsp:param value="support_faq" name="current"/>
</jsp:include>
	<div class="container">
		<h2>자주하는 질문</h2>
		<p class="sub_text">서비스 이용 중 불편 했던 점이나 궁금한 점을 빠르고 친절하게 안내해 드리겠습니다.</p>
	</div>
	<!-- 메인 메뉴바 시작 -->
	<ul class="nav justify-content-center">
		<li class="nav-item">
			<a class="nav-link active" href="${pageContext.request.contextPath }/support/support_main">고객센터</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="${pageContext.request.contextPath }/support/support_faq">자주하는 질문</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="${pageContext.request.contextPath }/support/support_notice">공지사항</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="${pageContext.request.contextPath }/support/support_inquire">문의하기</a>
		</li>
	</ul>
	<!-- 메인 메뉴바 끝 -->
	<!-- 검색 창 시작 -->
	<div class="search">
		<form action="" class="d-flex" role="search">
			<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success" type="submit">Search</button>
		</form>
	</div>
	<!-- 검색 창 끝 -->
	<div class="container">
		<div class="main_content">
			<ul id="tab_menu" class="list-group list-group-horizontal">
				<li class="list-group-item">
					<a href="">자주하는 질문 전체(10)</a>
				</li>
				<li class="list-group-item">
					<a href="">회원(3)</a>
				</li>
				<li class="list-group-item">
					<a href="">모임신청(4)</a>
				</li>
				<li class="list-group-item">
					<a href="">모임개설(5)</a>
				</li>
				<li class="list-group-item">
					<a href="">기타(3)</a>
				</li>
			</ul>

			<h3 class="faq">자주하는 질문 전체(10)</h3>
			<div class="tab_content">
			<ul>
				<li class="dropbox">
					<div class="title_area">
						<span class="faq_category">모임신청</span>
						<p class="detial">빈공간입니다.</p>
					</div>
				</li>
				<li class="dropbox">
					<span class="faq_category">회원</span>
					<p class="detial">빈공간입니다.</p>
				</li>
				<li class="dropbox">
					<span class="faq_category">회원</span>
					<p class="detial">빈공간입니다.</p>
				</li>
				<li class="dropbox">
					<span class="faq_category">모임개설</span>
					<p class="detial">빈공간입니다.</p>
				</li>
				<li class="dropbox">
					<span class="faq_category">모임개설</span>
					<p class="detial">빈공간입니다.</p>
				</li>
				<li class="dropbox">
					<span class="faq_category">모임해산</span>
					<p class="detial">빈공간입니다.</p>
				</li>
				<li class="dropbox">
					<span class="faq_category">모임해산</span>
					<p class="detial">빈공간입니다.</p>
				</li>
				<li class="dropbox">
					<span class="faq_category">회원</span>
					<p class="detial">빈공간입니다.</p>
				</li>
				<li class="dropbox">
					<span class="faq_category">회원</span>
					<p class="detial">빈공간입니다.</p>
				</li>
				<li class="dropbox">
					<span class="faq_category">회원</span>
					<p class="detial">빈공간입니다.</p>
				</li>
			</ul>
			</div>
		</div>
	</div>
	<div>
		<nav>
			<ul class="pagination">
				<%--
					startPageNum 이 1 이 아닌 경우에만 Prev 링크를 제공한다. 
					&condition=${condition}&keyword=${encodedK}
				 --%>
				<c:if test="${startPageNum ne 1 }">
					<li class="page-item">
						<a class="page-link animate__animated" href="list?pageNum=${startPageNum-1 }&condition=${condition}&keyword=${encodedK}">Prev</a>
					</li>
				</c:if>
				<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
					<li class="page-item ${pageNum eq i ? 'active' : '' }">
						<a class="page-link animate__animated" href="list?pageNum=${i }&condition=${condition}&keyword=${encodedK}">${i }</a>
					</li>
				</c:forEach>
				<%--
					마지막 페이지 번호가 전체 페이지의 갯수보다 작으면 Next 링크를 제공한다. 
				 --%>
				<c:if test="${endPageNum lt totalPageCount }">
					<li class="page-item">
						<a class="page-link animate__animated" href="list?pageNum=${endPageNum+1 }&condition=${condition}&keyword=${encodedK}">Next</a>
					</li>
				</c:if>				
			</ul>
		</nav>
		<script>
			document.querySelectorAll(".pagination a").forEach(function(item){
				//item 은 a 의 참조값이다 모든 a 요소에 mouseover 이벤트가 발생했을때 실행할 함수 등록
				item.addEventListener("mouseover", function(e){
					//애니메이션 클래스를 추가해서 애니메이션이 동작하도록한다.
					e.target.classList.add("animate__swing");
				});
				//item 은 a 의 참조값이다 모든 a 요소에 animationend 이벤트가 발생했을때 실행할 함수 등록
				item.addEventListener("animationend", function(e){
					//애니메이션 클래스를 제거해서 다음번에 추가 되면 다시 애니매이션이 동작 되도록한다.
					e.target.classList.remove("animate__swing");
				});
			});
		</script>
	</div>
</body>
</html>





