<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 소모임 개설하기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
<style>
	.container{
		width: 768px;
	}
</style>
</head>
<body>
	<h3 class="text-center fw-bold mt-5 pt-5 mb-3">소모임 개설 신청</h3>
	<div class="container pt-5">
		<form action="${pageContext.request.contextPath}/group_managing/group_insert" method="post" id="myForm">
			<div class="mb-2">
				<label class="control-label fw-bold" for="groupName">TITLE</label>
				<input class="form-control" type="text" name="groupName" id="groupName" placeholder="Add text..."/>		
			</div>
			<div class="d-flex mb-3">
				<fieldset class="form-control col me-4">
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
	            <div class="col">
					<input class="form-control" type="number" name="group_totalNum" min="1" max="30">
				</div>
			</div>
			<div class="d-flex mb-4">
				<fieldset class="form-control col me-4">
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
				<div class="col">
					<input class="form-control" type="file" placeholder="이미지 파일을 선택해주세요 "/>
				</div>
			</div>
			<div>
				<textarea class="form-control border border-4 border-dark-subtle fs-3" 
						name="group_caption" id="group_caption" rows="5" placeholder="Add Text..."></textarea>
			</div>
			<div class="d-flex justify-content-center mt-3">
				<button style="background-color: rgb(65, 75, 178); color:white" class="btn mt-3" type="submit">개설하기</button>
			</div>
		</form>
	</div>
</body>
</html>