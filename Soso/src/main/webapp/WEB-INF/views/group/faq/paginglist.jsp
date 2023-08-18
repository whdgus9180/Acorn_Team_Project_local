<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<tbody>
	<c:forEach var="tmp" items="${list}">
		<tr class="faq-row">
			<td>${tmp.q_writer}</td>
			<td class="title-cell">
			<a style="color: black;" class="text-decoration-none q-title" href="#" data-content-id="content-${tmp.num}">${tmp.q_title}</a>
			</td>
			<td style="text-align: center">${tmp.regdate}</td>
		</tr>
		<tr id="content-${tmp.num}" class="hidden-content">
			<td colspan="3">
				<div>${tmp.q_content}</div>
				<c:if test="${empty tmp.a_answer }">
					<a href="${pageContext.request.contextPath}/group/faq/updateform?num=${tmp.num}"id="update">수정</a>
					<a href="${pageContext.request.contextPath}/group/faq/delete?num=${tmp.num}&group_num=${tmp.group_num}">삭제</a>
				</c:if>
				<div class="answer" style="background-color: lightgrey;">${tmp.a_answer }</div> <!-- 이 부분을 추가 -->
				<!-- session id과 manger id를 검증해서 조건부 출력 -->
				<c:if test="${dto.manager_id == sessionScope.id }">
					<a href="${pageContext.request.contextPath}/group/answer/insertform?num=${tmp.num}" id="answer">답변&수정</a>
					<a href="${pageContext.request.contextPath}/group/answer/updateform?num=${tmp.num}" id="updateAnswer" >답변 수정</a>
					<a href="${pageContext.request.contextPath}/group/answer/delete?num=${tmp.num}&group_num=${tmp.group_num}">답변 삭제(실제로는 update)</a>						        
				</c:if>
		    </td>
		</tr>
	</c:forEach>
</tbody>