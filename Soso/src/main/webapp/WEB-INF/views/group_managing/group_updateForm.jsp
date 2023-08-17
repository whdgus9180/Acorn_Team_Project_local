<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 소모임 정보 수정하기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/group_managing/group_managing_group_insert.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.datetimepicker.min.css" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar_c.jsp">
        <jsp:param value="login" name="current"/>
    </jsp:include>
	<div class="container">
		<div id="insert_title" style="margin-bottom:80px">소모임 정보 수정</div>
		
		<div class="image_container" style="display:flex; flex-direction:column; align-items:center">
			<c:choose>
				<c:when test="${fn:length(dto.img_path) < 32}">
					<img id="image_preview" src="${pageContext.request.contextPath}/resources/images/main/001.jpg" 
				style="width:150px; height:150px; border-radius:50%; border: 1px solid rgb(222, 226, 230)" alt="소모임 이미지"/>
				</c:when>
				<c:otherwise>
					<img id="image_preview" src="${pageContext.request.contextPath}${dto.img_path}" 
				style="width:150px; height:150px; border-radius:50%; border: 1px solid rgb(222, 226, 230)" alt="소모임 이미지"/>
				</c:otherwise>
			</c:choose>
			<div style="margin-top:20px; margin-bottom:20px; font-size: 15px;">소모임 이미지</div>
		</div>
		
		<form action="${pageContext.request.contextPath}/group_managing/group_update" method="post" id="myForm" enctype="multipart/form-data">
			<div class="form_header">
				<input type="hidden" name="num" value="${dto.num}"/>
				<div class="form_label">
					<label for="groupName">TITLE</label>
				</div>
				<input class="form_input" type="text" name="name" id="groupName" placeholder="Add text..." value="${dto.name}"/>
			</div>
			<div class="form_header">
				<input class="form_input" type="text" name="manager_comment" id="manager_comment" placeholder="이 소모임을 한마디로 표현해주세요!" value="${dto.manager_comment}" />		
			</div>
			<div class="grid_wrapper">
				<select name="genre" id="genre" class="select_box">
					<option selected>장르</option>
					<option value=1 ${dto.genre == 1 ? "selected" : "" }>자기계발</option>
					<option value=2 ${dto.genre == 2 ? "selected" : "" }>인문/역사/예술</option>
					<option value=3 ${dto.genre == 3 ? "selected" : "" }>경영/경제</option>
					<option value=4 ${dto.genre == 4 ? "selected" : "" }>문학</option>
					<option value=0 ${dto.genre == 0 ? "selected" : "" }>기타</option>
				</select>
	            <select name="max_people" id="max_people" class="select_box">
                     <option selected>모임 정원</option>
                     <option value = 2 ${dto.max_people == 2 ? "selected" : "" }>2명</option>
                     <option value = 3 ${dto.max_people == 3 ? "selected" : "" }>3명</option>
                     <option value = 4 ${dto.max_people == 4 ? "selected" : "" }>4명</option>
                     <option value = 5 ${dto.max_people == 5 ? "selected" : "" }>5명</option>
                     <option value = 6 ${dto.max_people == 6 ? "selected" : "" }>6명</option>
                     <option value = 7 ${dto.max_people == 7 ? "selected" : "" }>7명</option>
                     <option value = 8 ${dto.max_people == 8 ? "selected" : "" }>8명</option>
                     <option value = 9 ${dto.max_people == 9 ? "selected" : "" }>9명</option>
                </select>
				<select name="on_off" id="on_off" class="select_box">
					<option selected>온/오프라인 선택</option>
					<option value = 0 ${dto.on_off == 0 ? "selected" : "" }>온라인</option>
					<option value = 1 ${dto.on_off == 1 ? "selected" : "" }>오프라인</option>
				</select>
				<div class="select_box" style="display:flex; align-items:center; justify-content:space-between">변경할 소모임의 이미지를 선택해주세요
                 	<button id="image_btn" style="width: 65px; height: 27px; color: white;
                    				 			background-color: rgb(195, 181, 157); border:none; border-radius: 15px;">file</button>
                </div> 
			</div>
			<input id="image" name="image" type="file" style="display: none;"
                    	accept=".jpg, .png, .gif, .JPG, .JPEG, .jpeg"/>
			<script src="${pageContext.request.contextPath }/resources/js/gura_util.js"></script>
			<script>
				//file 버튼을 클릭하면 input type="file" 을 강제 클릭
				document.querySelector("#image_btn").addEventListener("click", (e) => {
					e.preventDefault();
	                document.querySelector("#image").click()
				});
				
				document.querySelector("#image").addEventListener("change", (e) => {
					const files = e.target.files;
					if(files.length > 0){
						const reader = new FileReader();
						reader.onload = (event) => {
							const data=event.target.result;
							document.querySelector("#image_preview").setAttribute("src", data);
						};
						reader.readAsDataURL(files[0]);
					}
				});
				
				document.querySelector("#on_off").addEventListener("change", (e) => {
					if(e.target.value == 0){
						document.querySelector("#meeting_loc").value = "온라인"
					} else {
						document.querySelector("#meeting_loc").value = ""
					}
				});
			</script>
			<div class="loc_time">
				<div>
					<input class="form_input" id="meeting_loc" type="text" name="meeting_loc" placeholer="모임 장소" value = "${dto.meeting_loc}"/>
				</div>
				<div>
					<input id="meeting_time" class="form_input" type="time" name="meeting_time" placeholer="모임 시간" value = ${dto.meeting_time} />
				</div>
			</div>
			<div class="date_pickers">
				<div>
					<input id="start_dt" class="form_input" type="text" name="start_dt" placeholer="모임 시작일" value=${dto.start_dt}/>
				</div>
				<div>
					<input id="ended_dt" class="form_input" type="text" name="ended_dt" placeholer="모임 종료일" value=${dto.ended_dt}/>
				</div>
				<div>
					<input id="deadline_dt" class="form_input" type="text" name="deadline_dt" placeholer="모임 모집 종료일" value=${dto.deadline_dt}/>
				</div>
			</div>
			<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
			<!-- 플러그인 javascript 로딩 -->
			<script src="${pageContext.request.contextPath}/resources/js/jquery.datetimepicker.full.min.js"></script>
			<script>
				//언어
			    $.datetimepicker.setLocale("ko");
				//날짜 선택
				$("#start_dt").datetimepicker({
					timepicker:false,
					format:"Y.m.d"
				});
				//날짜 선택
				$("#ended_dt").datetimepicker({
					timepicker:false,
					format:"Y.m.d"
				});
				//날짜 선택
				$("#deadline_dt").datetimepicker({
					timepicker:false,
					format:"Y.m.d"
				});
				//시간 선택
				$("#meeting_time").datetimepicker({
			        datepicker:false,
			        format:"H:i"
			    });
			</script>
			<div>
				<textarea name="caption" id="caption" rows="5" placeholder="Add Text...">${dto.caption}</textarea>
			</div>
			<div id="form_button">
				<button type="submit">수정</button>
				<a style="background-color: black; color:white" class="btn mt-3" 
					href="${pageContext.request.contextPath}/group_managing/group_delete?num=${dto.num}">해산하기</a>
			</div>
		</form>
	</div>
	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</body>
</html>