<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 게시판</title>
<style>
   /* 별점 css */
   #myform fieldset {
      display: inline-block;
      direction: rtl;
      border: 0;
   }

   #myform fieldset legend {
      text-align: left;
   }

   #myform input[type=radio] {
      display: none;
   }

   #myform label {
      font-size: 2em;
      color: transparent;
      text-shadow: 0 0 0 #f0f0f0;
   }

   /* 마우스 호버에 반응 */
   #myform label:hover {
      text-shadow: 0 0 0 yellow;
   }

   #myform label:hover ~ label {
      text-shadow: 0 0 0 yellow;
   }

   /* 마우스 클릭에 체크 */
   #myform input[type=radio]:checked ~ label {
      text-shadow: 0 0 0 yellow;
   }

   .content {
      border: 1px dotted gray;
   }

   /* 댓글 프로필 이미지를 작은 원형으로 만든다. */
   .profile-image {
      width: 50px;
      height: 50px;
      border: 1px solid #cecece;
      border-radius: 50%;
   }

   /* ul 요소의 기본 스타일 제거 */
   .comments ul {
      padding: 0;
      margin: 0;
      list-style-type: none;
   }

   .comments dt {
      margin-top: 5px;
   }

   .comments dd {
      margin-left: 50px;
   }

   .comment-form textarea,
   .comment-form button {
      float: left;
   }

   .comments li {
      clear: left;
   }

   .comments ul li {
      border-top: 1px solid #888;
   }

   .comment-form textarea {
      width: 84%;
      height: 100px;
   }

   .comment-form button {
      width: 14%;
      height: 100px;
   }

   /* 댓글에 댓글을 다는 폼과 수정폼은 일단 숨긴다. */
   .comments .comment-form {
      display: none;
   }

   /* .reply_icon 을 li 요소를 기준으로 배치 하기 */
   .comments li {
      position: relative;
   }

   .comments .reply-icon {
      position: absolute;
      top: 1em;
      left: 1em;
      color: red;
   }

   pre {
      display: block;
      padding: 9.5px;
      margin: 0 0 10px;
      font-size: 13px;
      line-height: 1.42857143;
      color: #333333;
      word-break: break-all;
      word-wrap: break-word;
      background-color: #f5f5f5;
      border: 1px solid #ccc;
      border-radius: 4px;
   }

   .loader {
      /* 로딩 이미지를 가운데 정렬하기 위해 */
      text-align: center;
      /* 일단 숨겨 놓기 */
      display: none;
   }

   .loader svg {
      animation: rotateAni 1s ease-out infinite;
   }

   @keyframes rotateAni {
      0% {
         transform: rotate(0deg);
      }
      100% {
         transform: rotate(360deg);
      }
   }

</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<div class="container"> 
   <div>
	  <h4>리뷰를 입력해 주세요</h4>
      <!-- 원글에 댓글을 작성할 폼 -->
      <form class="comment-form insert-form" action="review_insert" method="post" id="myform">
         <!-- 원글의 글번호가 댓글의 ref_group 번호가 된다. -->
         <input type="hidden" name="group_num" value=${num } />
   		 <fieldset>
         	<small>평점</small>
         	<input type="radio" name="rate" value="5" id="rate1"><label for="rate1">⭐</label>
        	<input type="radio" name="rate" value="4" id="rate2"><label for="rate2">⭐</label>
        	<input type="radio" name="rate" value="3" id="rate3"><label for="rate3">⭐</label>
        	<input type="radio" name="rate" value="2" id="rate4"><label for="rate4">⭐</label>
        	<input type="radio" name="rate" value="1" id="rate5"><label for="rate5">⭐</label>
         </fieldset>
         <br />
         <textarea name="content">${empty id ? '리뷰 작성을 위해 로그인이 필요 합니다.' : '' }</textarea>
         <button type="submit">등록</button>
      </form>
    </div>
</div>
</body>
</html>