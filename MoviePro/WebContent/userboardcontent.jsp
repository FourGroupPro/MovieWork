<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">

fieldset {
	border-color: black;
	width: 95%;
	height: 550px;
}
div#content{
	top: 5%;
	width: 60%;
	margin-left: 20%;
	ri 
}


</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="contentall">
<h1 style="margin-left: 20%; background-color: #FF8000; width: 60%;height:50px; text-align:center; ;border-top-left-radius: 15px; border-top-right-radius: 15px;" >REVIEW</h1>
<fieldset> 
<form action="boardUpdate.boa" method="post">
<input type="hidden" name="no" value="${boardDTO.no }">
	<div id="content">
   <ul>
      <li>
      <input type="hidden" name="no" value="${boardDTO.no}">
         <label for="영화">영화</label>
      <input type="text" name="movie" size="52" value="${boardDTO.movie}">
      </select>
      </li>
      <li>
         <label for="제목" ">제목</label>
         <input type="text" name="title" size="52" value="${boardDTO.title}">
      </li>
      <li>
         <label for="작성자">작성자</label>
         <input type="text" name="author" size="20" value="${boardDTO.author}">&emsp;
         <label for="날짜">날짜</label>
         <input type="date" name="nal" value="${boardDTO.nal}">
      </li>
      
      <li>
         <label for="내용">내용</label><br>
         <input type="text"  name="content"  style="width:100%; height:250px;" value="${boardDTO.content}">
      </li>
      <br>
      <li>
         <input type="submit" value="수정하기">
      </li>
      <li>
   		<a href="boardDelete.boa?no=${boardDTO.no}">삭제하기</a>   
      </li>
      <li>
   		<a href="boardList.boa">목록으로</a>   
      </li>
   </ul>
   </div>
   </form>
</fieldset>
</div>
</body>
</html>