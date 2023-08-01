<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/group/user_main.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
<style>
   .img-wrapper{
      height: 250px;
      transition: transform 0.3s ease-out;
   }
   @media(max-width: 575px){
      .img-wrapper{
         height: 400px;
      }
   }
   .img-wrapper:hover{
      transform: scale(1.1);
   }
   .card .card-title{
      
   }
   .card .card-text{
      display: block;
      white-space: nowrap;
      text-overflow: ellipsis;
      overflow: hidden;
   }
   .img-wrapper img{
      width: 100%;
      height: 100%;
      object-fit: cover;
   }
</style>
</head>
<body>
   <jsp:include page="/WEB-INF/views/include/navbar.jsp">
      <jsp:param value="group_managing_user" name="current"/>
   </jsp:include>
   <div class="container">
      <h3 class="text-center">유저가 가입한 소모임을 관리하는 페이지</h3>
         <ul>
            <li>
               <a href="${pageContext.request.contextPath }">메인 페이지</a>
            </li>
         </ul>
      <div class="row">
      <c:forEach var="tmp" items="${list}">
      <div class="d-flex justify-content-around">
         <div class="col-sm-6 col-md-4 col-lg-3 p-1">
             <div class="card mb-4">
                <a href="${pageContext.request.contextPath}">
                   <div class="img-wrapper">
                      <img class="card-img-top" src="${pageContext.request.contextPath }"/>
                   </div>
                </a>
                <div class="card-body">
                    <p class="card-title"><strong>책 나눔 모임</strong></p>
                    <p class="card-text"><strong>본인이 감명 깊게 읽은 책이 있으면 나눔해주세요!</strong></p>
                </div>
                  <ul class="list-group list-group-flush">
                <li class="list-group-item"><strong>관리자</strong></li>
                <li class="list-group-item"><strong>가입 날짜</strong></li>
                <li class="list-group-item"><strong>총 가입 인원</strong></li>
              </ul>
             </div>
         </div>
         <div class="col-sm-6 col-md-4 col-lg-3 p-1">
             <div class="card mb-4">
                <a href="${pageContext.request.contextPath}">
                   <div class="img-wrapper">
                      <img class="card-img-top" src="${pageContext.request.contextPath }"/>
                   </div>
                </a>
                <div class="card-body">
                    <p class="card-title"><strong>책 나눔 모임</strong></p>
                    <p class="card-text"><strong>본인이 감명 깊게 읽은 책이 있으면 나눔해주세요!</strong></p>
                </div>
                  <ul class="list-group list-group-flush">
                <li class="list-group-item"><strong>관리자</strong></li>
                <li class="list-group-item"><strong>가입 날짜</strong></li>
                <li class="list-group-item"><strong>총 가입 인원</strong></li>
              </ul>
             </div>
         </div>
         <div class="col-sm-6 col-md-4 col-lg-3 p-1">
             <div class="card mb-4">
                <a href="${pageContext.request.contextPath}">
                   <div class="img-wrapper">
                      <img class="card-img-top" src="${pageContext.request.contextPath }"/>
                   </div>
                </a>
                <div class="card-body">
                    <p class="card-title"><strong>책 나눔 모임</strong></p>
                    <p class="card-text"><strong>본인이 감명 깊게 읽은 책이 있으면 나눔해주세요!</strong></p>
                </div>
                  <ul class="list-group list-group-flush">
                <li class="list-group-item"><strong>관리자</strong></li>
                <li class="list-group-item"><strong>가입 날짜</strong></li>
                <li class="list-group-item"><strong>총 가입 인원</strong></li>
              </ul>
             </div>
         </div>
         </div>
      </c:forEach>
      </div>
   </div>
   <nav>
      <ul class="pagination justify-content-center">
         <c:choose>
            <c:when test="${dto.prevNum ne 0 }">
               <li class="page-item mr-3">
                     <a class="page-link" href="${pageContext.request.contextPath}">&larr; Prev</a>
               </li>
            </c:when>
         </c:choose>
         <c:choose>
            <c:when test="${dto.nextNum ne 0 }">
               <li class="page-item">
                   <a class="page-link" href="${pageContext.request.contextPath}">Next &rarr;</a>
               </li>
            </c:when>
         </c:choose>         
      </ul>
   </nav>
</body>
</html>