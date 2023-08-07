<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/support_inquire</title>
<style>

	.main_content{
		margin: 100px auto 90px;
		box-sizing: border-box;
		width: 100%;
		min-height: 260px;
		max-width:1300px;
	}
	<!-- 상단 배너 시작 -->
	.head{
		background-image:url("https://static.onoffmix.com/images/pc/default/inquire_bg.png");
		height:360px;
		background-size:cover;
		overflow:hidden;
	}
	.head h2{
		text-align:center;
		margin:116px auto 20px;
	}
	.head p{
		text-align:center;
		font-size:20px;
	}
	<!-- 상단 배너 끝-->
	<!-- 메인 메뉴바 시작 -->
	.tab_section .tab_menu{
		margin: 60px 0 80px;
		padding:0;
		border-right:1px solid gray;
		border-bottom: 1px solid gray;
		box-sizing: border-box;
		display: flex;
		justify-content:center;
		flex-wrap: wrap;
	}
	.tab_menu li{
		width:33.3%;
		height:50px;
		box-sizing: border-box;
		border-top:1px solid gray;
		border-left: 1px solid gray;
		display: inline-block;
		font-size: 16px;
		line-height: 50px;
		text-align: center;
	}
	<!-- 메인 메뉴바 끝 -->
	
	<!-- 폼양식 시작 -->
	.area-form{
		margin: 14px 0 0;
		border-top: 3px solid #333;
	}
	
	
	<!-- 이름 폼 레이아웃 -->
	.area-form .row-wrap{
		padding:20px 50px;
		width: 100%
		height: auto;
		border-bottom: 1px solid gray;
		box-sizing: border-box;
		overflow: hidden;
	}
	
	.row-wrap>div.input-name{
		float: left;
		width: 50%;
	}
	.row-wrap>div{
		height: auto;
		position: relative;
	}
	h4.label{
		display: inline-block;
		width: 120px;
		font-size: 16px;
		line-height:48px;
	}
	.area-form input{
		width:300px;
		height:48px;
		padding: 0 20px;
		background-color: white;
		font-size: 14px;
	}
	<!-- 연락처 폼 레이아웃 -->
	.row-wrap>div.input-phone{
		float: left;
		width: 50%;
	}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
	<div class="head">
		<h2>문의사항</h2>
		<p class="sub_text">BookMate에 궁금한 점이 있다면 문의해주세요.</p>
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

	<div class="container">
		<div class="main_content">
			<ul class="tab_menu">
				<li class="active">
					<a href="${pageContext.request.contextPath }/support/support_inquire">문의하기</a>
				</li>
				<li class="">
					<a href="">신고접수</a>
				</li>
				<li class="">
					<a href="">나의 문의 내역</a>
				</li>
			</ul>
			<h3 class="inquire">1:1 문의하기</h3>
			<form class="area-form" method="post">
				<div class="row-wrap">
					<div class="input-name">
						<h4 class="label">이름</h4>
						<input type="text" id="name" class="name" placeholder="이름을 입력해주세요..."/>
					</div>
					<div class="input-phone">
						<h4 class="label">연락처</h4>
						<input type="tel" class="phone-main" placeholder="연락처를 입력해주세요..." />
					</div>
				</div>
				<div class="row-wrap"></div>
				<div class="row-wrap"></div>
				<div class="row-wrap"></div>
				<div class="row-wrap"></div>
				<div class="row-wrap"></div>
			</form>
	
		
			
		</div>
	</div>
		
</body>
</html>





