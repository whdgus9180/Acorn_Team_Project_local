<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 소모임 개설하기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/group_managing/group_managing_group_insert.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar_c.jsp">
        <jsp:param value="login" name="current"/>
    </jsp:include>
    <div class="container">
		<div id="insert_title">소모임 개설 신청</div>
		<div id="insert_subtitle">소모임장이 되어 원하는 소모임을 개설해보세요.</div>
		<form action="${pageContext.request.contextPath}/group/insert" method="post" id="myForm" enctype="multipart/form-data">
			<div class="form_header">
                <div class="form_label">
                     <label for="groupName">TITLE</label>
                </div>
                <input class="form_input" type="text" name="name" id="groupName" placeholder="Add text..."/>
            </div>
            <div class="form_header">
            	<input class="form_input" type="text" name="manager_comment" id="manager_comment" placeholder="이 소모임을 한마디로 표현해주세요!" />
			</div>
			<div class="grid_wrapper">
                    <select name="genre" id="genre" class="select_box">
                         <option selected>장르</option>
                         <option value = 1>자기계발</option>
                         <option value = 2>인문/역사/예술</option>
                         <option value = 3>경영/경제</option>
                         <option value = 4>문학</option>
                         <option value = 0>기타</option>
                    </select>
                    <select name="max_people" id="max_people" class="select_box">
                         <option selected>모임 정원</option>
                         <option value = 2>2명</option>
                         <option value = 3>3명</option>
                         <option value = 4>4명</option>
                         <option value = 5>5명</option>
                         <option value = 6>6명</option>
                         <option value = 7>7명</option>
                         <option value = 8>8명</option>
                         <option value = 9>9명</option>
                    </select>
                    <select name="on_off" id="on_off" class="select_box">
                              <option selected>온/오프라인 선택</option>
                              <option value = 0>온라인</option>
                              <option value = 1>오프라인</option>
                    </select>
                    <div id="image_box" class="select_box" style="width: 366px; height: 36px;">
                         <label for="image">소모임 이미지 선택하기</label>
                         <input id="image" name="image" type="file" style="display: none;"/>
                    </div>  
               </div>
               <div class="loc_time">
				<div>
                    <div class="form_label">
                         <label for="meeting_loc">모임 장소</label>
                    </div>
					<input class="form_input" type="text" name="meeting_loc" />
				</div>
				<div>
                    <div class="form_label">
                         <label for="meeting_time">모임 시간</label>
                    </div>
					<input id="meeting_time" class="form_input" type="time" name="meeting_time" />
				</div>
			</div>
			<div class="date_pickers">
				<div>
					<label class="form_label" for="start_dt">모임 시작일</label>
					<input class="form_input" type="date" name="start_dt" />
				</div>
				<div>
					<label class="form_label" for="ended_dt">모임 종료일</label>
					<input class="form_input" type="date" name="ended_dt" />
				</div>
				<div>
					<label class="form_label" for="deadline_dt">모임 모집 마감일</label>
					<input class="form_input" type="date" name="deadline_dt" />
				</div>
			</div>
			<div>
				<textarea name="caption" id="caption" rows="5" placeholder="이곳에 소모임 규칙 또는 자세한 설명을 적어주세요!"></textarea>
			</div>
			<div id="form_button">
				<button type="submit">개설</button>
			</div>
		</form>
	</div>
</body>
</html>