<%@page import="kr.ac.daegu.MovieDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%ArrayList<MovieDTO>movieList = (ArrayList)request.getAttribute("movieList");
    MovieDTO mdto = new MovieDTO();
    int i = movieList.size()/3;%>
<!DOCTYPE html>
<html>
<head>
<link href="css/styleOrigin.css" rel="stylesheet" type="text/css"><!-- css가져오기 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post">
	<div>
	
	<%
	if(i==0){%>
			<table id="reserve">
				<tr>
		<% for(int j=0;j<3;i++){
		mdto = movieList.get(j); %>
			
		<td>
		<img src="<%=mdto.getPicture()%>"><br>
		<input type="radio" name="kind" value="1001" class="option-input radio"><%=mdto.getTitle() %>
		</td>
	</tr>
</table>
<% 
	}
	}
	else if(i>0){
		for(i=1;i<movieList.size()/3;i++){%>
		<table>
		<tr>
			<% for(int j = 0; j<3;j++){
			mdto = movieList.get(i*3+j);%>
			
			<td>
			<img src="<%=mdto.getPicture()%>"><br>
			<input type="radio" name="kind" value="1004" class="option-input radio"><%=mdto.getTitle() %>
			</td>
			
			

		<% }%>
			</tr>
			</table>	
		<% }
	}%>

	</div>
	</form>
</body>
</html>