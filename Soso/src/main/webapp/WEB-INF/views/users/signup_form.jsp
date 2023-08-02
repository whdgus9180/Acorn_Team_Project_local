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
            <small class="form-text text-muted">특수 문자를 하나 이상 조합하세요.</small>
          	<div class="invalid-feedback">비밀 번호를 확인 하세요</div>  
         </div>
         <div>
            <label class="control-label" for="pwd2">비밀번호 확인</label>
            <input class="form-control" type="password" name="pwd2" id="pwd2"/>
         </div>
         <div>
            <label class="control-label" for="email">이메일</label>
            <input class="form-control" type="text" name="email" id="email"/>
            <div class="invalid-feedback">이메일 형식에 맞게 입력하세요.</div>
         </div>
         <button class="btn btn-primary mt-3" type="submit" disabled>가입</button>
      </form>
   </div>   
   <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
   <script>
   		let isPwdValid=false;
	   	//비밀번호 입력란과 비밀번호 확인란에 입력했을때 실행할 함수 등록(다중선택)
	   	$("#pwd, #pwd2").on("input", () => {
				  const pwd = $("#pwd").val(); // 올바른 방법으로 값 가져오기
				  const pwd2 = $("#pwd2").val(); // 올바른 방법으로 값 가져오기
				  const reg = /^(?=.*[a-z])(?=.*\d)(?=.*[\W_]).{8,}$/;
				  isPwdValid = reg.test(pwd) && pwd === pwd2;
				  if (isPwdValid) {
				    $("#pwd").removeClass("is-invalid").addClass("is-valid");
				  } else {
				    $("#pwd").removeClass("is-valid").addClass("is-invalid");
				  }
				  checkFormState();
				});
	   	
	   	let isEmailValid=false;
   		$("#email").on("input", (e)=>{
   				//jquery 형식으로 입력한 email 을 읽어와서
   				const inputEmail=$(e.target).val();
   				//이메일 형식에 맞게 작성했는지 검증을 해서
   				const reg=/(?=.*[a-z])(?=.*[\d])(?=.*([A-Z]|[\W])).{8,}/;
   				//유효성 여부를 변수에 저장하고
   				isEmailValid=reg.test(inputEmail);
   				//유효하다면
   				if(isEmailValid){
   					$(e.target).removeClass("is-invalid").addClass("is-valid");
   				}else{//유효하지 않다면
   					$(e.target).removeClass("is-valid").addClass("is-invalid");
   				}
   				checkFormState();
   		});
   		
   		//폼 전체의 유효성 여부를 판단해서 제출버튼의 disabled 속성을 관리하는 함수 
   		function checkFormState(){
   		   if(isEmailValid && isPwdValid){
   		      $("button[type=submit]").removeAttr("disabled");
   		   }else{
   		      //속성명만 추가할때는 value 에 빈 문자열을 작성하면 된다.
   		      $("button[type=submit]").attr("disabled", "");
   		   }
   		}
   </script>
   
</body>
</html>



















