<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en-us">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>CSS Grid - line-based placement starting point</title>
    <style>
      .container{
        border: 1px solid red;
        display : grid;
        gap : 10px;
      }
      .item:nth-child(1){
        border: 1px dotted green;
        /* 1번 라인에서 2칸 */
        grid-column : 1 / span 1;
        /* 1번 라인에서 3칸 */
        grid-row : 1 / span 2;
        margin: 10px;
      }
      .item:nth-child(2){
        border: 1px dotted blue;
        margin: 5px;
      }
      .item:nth-child(4){
        border: 1px dotted blue;
        margin: 5px;
      }
      .item:nth-child(3){
        border: 1px dotted green;
        /* 1번 라인에서 2칸 */
        grid-column : 3 / span 1;
        /* 1번 라인에서 3칸 */
        grid-row : 1 / span 2;
        margin: 10px;
      }
    </style>
  </head>
<body>
    <div class="container">
        <div class="item">여기에 소모임 이미지</div>
        <div class="item">소모임 작성자 / 소모임 제목</div>
        <div class="item">찜 UX 표시</div>
        <div class="item">소모임 상세내역</div>
    </div>
</body>
</html>