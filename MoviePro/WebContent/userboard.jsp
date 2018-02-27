<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body { font-size : 15pt;
      font-weight: bold
      }
#title {font-size: 30pt;
      font-family:'Georgia', serif; 
      font-style:italic
      }

      
table.type08 {
	width:90%;
	margin:0 auto;
	border-collapse: collapse;
    line-height: 1.5;
    border-left: 1px solid #ccc;
}

table.type08 thead th {
    padding: 10px;
    font-weight: bold;
    border-top: 1px solid #ccc;
    border-right: 1px solid #ccc;
    border-bottom: 2px solid #c00;
    background: #dcdcd1;
}
table.type08 tbody th {
	text-align: center;
	width:15%;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    background: #ececec;
}

table.type08 td {
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;\
}

#re{
color: black;
margin: 0 auto;
text-decoration: none;
}
#but{
	margin-left: 5%;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<h1 id="title" style="color: black; margin-left: 8%;"> <input type="image" src="images/movie2.png" width="50px">MOVIE REVIEW</h1> 
<fieldset style="border: 3px solid black; border-radius: 15px; width: 85%; margin: 0 auto;">
<div>
<form action="boardcontent" method="post">
<table class="type08">
	<thead>
    <tr>
        <th scope="cols">번호</th>
        <th scope="cols">영화</th>
        <th scope="cols">제목</th>
        <th scope="cols">작성자</th>
        <th scope="cols">작성일</th>
        <th scope="cols">조회수</th>
    </tr>
     </thead>
    <c:forEach var="userboard" items="${boardList}">
  
    <tbody>
    <tr>
  		<td>${userboard.no}</td>
        <td>${userboard.movie}</td>
        <td><a href='boardContent.boa?no=${userboard.no}' style="color: black; text-decoration: none;">${userboard.title}</a></td>
        <td>${userboard.author}</td>
        <td>${userboard.nal}</td>
        <td>${userboard.readcount}</td>
    </tr>
    </tbody>
</c:forEach>
</table>
</form>
<div id="but">
<a id="re" href="usertemplate.jsp?page=userboardwrite">리뷰작성</a>
<a id="re" href="boardList.boa">목록으로</a>
<form action="boardSearch.boa">
<input type="text" name="movie" required="required" placeholder="제목입력">
<input type="submit" value="찾기">
</form>
</div>
</div>
</fieldset>
</div>
</body>
</html>