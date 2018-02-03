<%@page import="kr.ac.daegu.MovieDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	MovieDTO mdto = new MovieDTO();
	ArrayList<MovieDTO> movieList = (ArrayList) request.getAttribute("movieList");
	int i = movieList.size() / 3;
%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	background-color: #F0F8FF;
}

h1 {
	text-align: center;
	font-family: "Lato", sans-serif;
	font-variant: small-caps;
	position: relative;
	margin: auto;
	margin-top: auto;
	margin-right: auto;
	margin-left: auto;
	text-align: center;
}

h3 {
	text-align: center;
	font-variant: small-caps;
	position: relative;
	top: 20px;
	margin: auto;
	margin-top: auto;
	margin-right: auto;
	margin-left: auto;
	text-align: center;
}

table {
	position: relative;
	top: 30px;
	border-spacing: 20px;
	margin: auto;
	margin-top: auto;
	margin-right: auto;
	margin-left: auto;
	text-align: center;
}

img {
	width: 200px;
	height: 300px;
	cursor: pointer;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post">
		<div>
			<%
				if (i == 0) {
			%>
			<table id="reserve">
				<tr>
					<%
						for (int j = 0; j < 3; j++) {
								mdto = movieList.get(j);
					%>

					<td><img src="images/<%=mdto.getPicture()%>"><br> <input
						type="radio" name="kind" value="1001" class="option-input radio"><%=mdto.getTitle()%>
					</td>

					<%
						}
					%>
				</tr>
			</table>
			<%
				}
				if (i > 0) {
			%>
			<table id="reserve">
				<tr>
					<%
						for (int j = 0; j < 3; j++) {
								mdto = movieList.get(j);
					%>

					<td><img src="images/<%=mdto.getPicture()%>"><br> <input
						type="radio" name="kind" value="1001" class="option-input radio"><%=mdto.getTitle()%>
					</td>
					<%
						}
					%>
				</tr>
			</table>
			<%
				for (i = 1; i <= movieList.size() / 3; i++) {
			%>
			<table>
				<tr>
					<%
						for (int j = 0; j < 3; j++) {
									mdto = movieList.get(i * 3 + j);
					%>

					<td><img src="images/<%=mdto.getPicture()%>"><br> <input
						type="radio" name="kind" value="1004" class="option-input radio"><%=mdto.getTitle()%>
					</td>



					<%
						}
					%>
				</tr>
			</table>
			<%
				}
				}
			%>

		</div>
	</form>


</body>
</html>