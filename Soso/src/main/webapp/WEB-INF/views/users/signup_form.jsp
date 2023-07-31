<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup_form.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
<style>
   .container{
      width: 768px;
   }
</style>
</head>
<body>
   <jsp:include page="/WEB-INF/views/include/navbar.jsp">
      <jsp:param value="signup" name="current"/>
   </jsp:include>
   <div class="container">
      <h1>회원 가입</h1>
      <form action="${pageContext.request.contextPath}/users/signup" method="post" id="myForm">
         <div>
            <label class="control-label" for="userName">이름(닉네임)</label>
            <input class="form-control" type="text" name="userName" id="userName"/>      
         </div>
         <div>
            <label class="control-label" for="birth">생년월일</label>
            <input class="form-control" type="date" name="birth" id="birth"/>      
         </div>
         <fieldset>
               <legend>성별 체크</legend>
               <div class="form-check">
                   <input class="form-check-input" type="radio" id="one" name="gender" value="남" checked>
                   <label class="form-check-label" for="one">남</label>
               </div>
               <div class="form-check">
                   <input class="form-check-input" type="radio" id="two" name="gender" value="여">
                   <label class="form-check-label" for="two">여</label>
               </div>
               <div class="form-check">
                   <input class="form-check-input" type="radio" id="three" name="gender" value="비공개">
                   <label class="form-check-label" for="three">비공개</label>
               </div>
         </fieldset>
         <div>
            <label class="control-label" for="id">아이디</label>
            <input class="form-control" type="text" name="id" id="id"/>      
         </div>
         <div>
            <label class="control-label" for="pwd">비밀번호</label>
            <input class="form-control" type="password" name="pwd" id="pwd"/>   
         </div>
         <div>
            <label class="control-label" for="pwd2">비밀번호 확인</label>
            <input class="form-control" type="password" name="pwd2" id="pwd2"/>
         </div>
         <div>
            <label class="control-label" for="email">이메일</label>
            <input class="form-control" type="text" name="email" id="email"/>
         </div>
         <button class="btn btn-primary mt-3" type="submit">가입</button>
      </form>
   </div>   
</body>
</html>