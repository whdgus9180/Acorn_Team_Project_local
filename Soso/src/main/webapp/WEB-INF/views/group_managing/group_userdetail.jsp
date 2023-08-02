<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/group_userdetail.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
</head>
<body>
<div class="container">
   <nav>
      <ul class="breadcrumb">
         <li class="breadcrumb-item">
            <a href="${pageContext.request.contextPath }/">Main Home</a>
         </li>
         <li class="breadcrumb-item">
            <a href="${pageContext.request.contextPath }/group_managing/user_main">user 리스트</a>
         </li>
  	 	 <li class="breadcrumb-item">
  	 		 <a href="${pageContext.request.contextPath}">모임 탈퇴</a>
  	 	 </li>
      </ul>
   </nav>
	   <div class="card mb-3">
	      <img class="card-img-top" src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fi.pinimg.com%2F736x%2F92%2F73%2F6b%2F92736bbfb3b458a5424d88d4e39dc55d.jpg&type=a340"/>
	     	<div class="card-body">
		         <p class="card-title fs-3"><strong>책 나눔 모임</strong></p>
		         <p class="card-text">감명 깊게 읽은 책 나눔!</p>
		     </div>
		     <ul class="list-group list-group-flush">
			     <li class="list-group-item"><strong>관리자  :</strong> <strong>정세영</strong></li>
			     <li class="list-group-item"><strong>가입 날짜  :</strong> <strong>2023.08.01</strong></li>
			     <li class="list-group-item"><strong>총 가입 인원  :</strong> <strong>8명</strong></li>
		   	</ul>	         
	   </div>	         
</div>
</body>
</html>

