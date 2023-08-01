<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 소모임 정보 수정하기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp">
		<jsp:param value="group_managing" name="current"/>
	</jsp:include>
	<div class="container">
		<h3 class="text-center">소모임 정보 수정 페이지 입니다.</h3>
		<form action="${pageContext.request.contextPath}/group_managing/group_insert" method="post" id="myForm">
			<div class="mb-2">
				<label class="control-label" for="groupName">소모임 이름</label>
				<input class="form-control" type="text" name="groupName" id="groupName" placeholder="소소한 모임" readonly/>		
			</div>
			<fieldset class="form-group border p-3 mb-2">
                <legend>소모임 책 장르</legend>
                <label>
                    <input type="checkbox" name="genre" value="novel"> 소설
                </label>
                <label>
                    <input type="checkbox" name="genre" value="essay"> 수필
                </label>
                <label>
                    <input type="checkbox" name="genre" value="self-improve"> 자기계발
                </label>
                <label>
                    <input type="checkbox" name="genre" value="etc"> 기타
                </label>                
            </fieldset>
			<fieldset class="form-group border p-3">
			      <legend>온/오프라인 모임 여부 체크</legend>
			      <div class="d-flex">
				      <div class="form-check me-2">
				          <input class="form-check-input" type="radio" id="one" name="onOff" checked>
				          <label class="form-check-label" for="one">온라인</label>
				      </div>
				      <div class="form-check">
				          <input class="form-check-input" type="radio" id="two" name="onOff">
				          <label class="form-check-label" for="two">오프라인</label>
				      </div>
			      </div>
			</fieldset>
			<div>
				<label class="form-label" for="group_totalNum">소모임 정원</label>
				<input class="form-control" type="number" name="group_totalNum" placeholder="30" readonly>
			</div>
			<div>
				<label class="form-lable" for="group_caption">소모임 소개말</label>
				<textarea class="form-control" name="group_caption" id="group_caption" rows="10"></textarea>
			</div>
			<button class="btn btn-primary mt-3" type="submit">정보 수정하기</button>
		</form>
	</div>
</body>
</html>