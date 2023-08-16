<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 만든 소모임</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/group_managing/group_managing_admin_header.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/group_managing/group_managing_admin_main_card.css">
</head>
<body>
    <jsp:include page="/WEB-INF/views/include/navbar.jsp">
        <jsp:param value="login" name="current"/>
    </jsp:include>
    <main id="main-banner" class="main-banner-03">
        <div class="inner-wrap">
            <div class="title">
                <h2>북메이트 관리</h2>
                <p>
			                    나의 북메이트를 <br>
		                             관리해보세요
                </p>
            </div>
            <div class="indicator">
                <div class="home circle">
                    <a href="#" title="메인페이지가기"><img src="${path }/resources/images/sub/icon_home.svg" alt="홈버튼이미지"></a>
                </div>
                <div class="main-menu circle">BOOKMATE</div>

            </div>
        </div>
    </main>
	<div class="inner-wrap">
		<div id="admin_header">
			<div class="title">내 소모임 관리하기</div>
			<div class="linkBox">
				<a class="link" href="${pageContext.request.contextPath}/group_managing/group_insertForm">개설하기</a>
			</div>
		</div>
		<div id="menus">
			<div><a href="#">진행 중</a></div>
			<div><a href="#">종료</a></div>
		</div>
		<div class="wrapper">
			<c:forEach var="tmp" items="${list}">
				<div id="card">
					<div>
						<div id="likedNumber">
							<div>❤ ${tmp.like_num }</div>
						</div>
						<div class="card-box">
							<div class="card-left">
								<c:choose>
									<c:when test="${fn:length(tmp.img_path) < 32}">
										<div><img class="card-image" src="${pageContext.request.contextPath}/resources/images/main/001.jpg""/></div>
									</c:when>
									<c:otherwise>
										<div><img class="card-image" src="${pageContext.request.contextPath}${tmp.img_path}"/></div>
									</c:otherwise>
								</c:choose>
								<div><a href="${pageContext.request.contextPath}/group_managing/memberList?group_num=${tmp.num}">${tmp.now_people} / ${tmp.max_people}</a></div>
							</div>
							<div class="card-right">
								<div id="card-title">${tmp.name }</div>
								<div id="card-date">DATE: ${tmp.regdate}</div>
								<div id="card-rate">${tmp.avrg_rate }</div>
								<div id="card-link"><a href="${pageContext.request.contextPath}/cafe/list?num=${tmp.num}">커뮤니티 가기</a></div>
								<div id="card-buttons">
									<div><a href="${pageContext.request.contextPath}/group_managing/group_updateForm?num=${tmp.num}">정보 수정</a></div>
									<div><a href="${pageContext.request.contextPath}/group_managing/applicantList?group_num=${tmp.num}">가입 관리</a></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</body>
</html>