<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/ticketingStyle.css" rel="stylesheet" type="text/css"><!-- 모달css -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:useBean id="nowDate" class="java.util.Date" />
<style type="text/css">
	legend{
	text-align: center;
	}
	fieldset{
	width: 95%;
	margin: 0 auto;
	}

	table.mLeft{
	width: 15%;
	float: left;
	height: 500px;
	}
	table.mRight{
	border: 3px solid black;
	width: 85%;
	height: 500px;
	float: right;
	}
	td{
	text-align:center;
	border: 3px solid black;
	width: 15%;
	border-left:none;
	border-bottom: none;
	border-right: hidden;
	border-right-style: dotted;
	border-right-color: gray;
	}
	th{
	text-align: center;
	}
</style>
</head>
<body>
	
		<fieldset class="ticketAll">
			<legend>영화 예매</legend>
			<form action="mFrist" method="post">
			<input type="hidden" name="nal" value="<fmt:formatDate value="${nowDate}" pattern="yyyy-MM-dd-hh-mm-ss" />" readonly="readonly">
			<table class="mLeft">
				<thead>
					<tr>	
						<th scope="col">현재 상영작</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">
						<input type="radio" name="mname" value="1001">1관 mname
						<input type="button" value="상영정보" onclick="">
						</th>
					</tr>
					<tr>
						<th scope="row">
						<input type="radio" name="mname" value="1002">2관 mname
						<input type="button" value="상영정보" onclick="">
						</th>
					</tr>
					<tr>
						<th scope="row">
						<input type="radio" name="mname" value="1003">3관 mname
						<input type="button" value="상영정보" onclick="">
						</th>
					</tr>
					<tr>
						<th scope="row">
						<input type="radio" name="mname" value="1004">4관 mname
						<input type="button" value="상영정보" onclick="">
						</th>
					</tr>
					<tr>
						<th scope="row">
						<input type="radio" name="mname" value="1005">5관 mname
						<input type="button" value="상영정보" onclick="">
						</th>
					</tr>
					<tr>
						<th scope="row">
						<input type="radio" name="mname" value="1006">6관 mname
						<input type="button" value="상영정보" onclick="">
						</th>
					</tr>
				</tbody>
			</table>
			<table class="mRight">
				<thead>
					<tr>
						<th scope="col">Time1 (조조할인)</th>
						<th scope="col">Time2</th>
						<th scope="col">Time3</th>
						<th scope="col">Time4</th>
						<th scope="col">Time5</th>
						<th scope="col">Time6 (심야할인)</th>
					</tr>
				</thead>
				
				<tbody>
					<tr>
						<td><input type="radio" name="mtime" value="09:00">시작 09:00 ~ 종료 11:10</td>
						<td><input type="radio" name="mtime" value="11:30">시작 11:30 ~ 종료 13:40</td>
						<td><input type="radio" name="mtime" value="14:00">시작 14:00 ~ 종료 16:10</td>
						<td><input type="radio" name="mtime" value="16:30">시작 16:30 ~ 종료 18:40</td>
						<td><input type="radio" name="mtime" value="19:00">시작 19:00 ~ 종료 21:10</td>
						<td><input type="radio" name="mtime" value="21:30">시작 21:30 ~ 종료 23:40</td>
					</tr>
					<tr>
						<td><input type="radio" name="mtime" value="09:00">시작 09:00 ~ 종료 11:10</td>
						<td><input type="radio" name="mtime" value="11:30">시작 11:30 ~ 종료 13:40</td>
						<td><input type="radio" name="mtime" value="14:00">시작 14:00 ~ 종료 16:10</td>
						<td><input type="radio" name="mtime" value="16:30">시작 16:30 ~ 종료 18:40</td>
						<td><input type="radio" name="mtime" value="19:00">시작 19:00 ~ 종료 21:10</td>
						<td><input type="radio" name="mtime" value="21:30">시작 21:30 ~ 종료 23:40</td>
					</tr>
					<tr>
						<td><input type="radio" name="mtime" value="09:00">시작 09:00 ~ 종료 11:10</td>
						<td><input type="radio" name="mtime" value="11:30">시작 11:30 ~ 종료 13:40</td>
						<td><input type="radio" name="mtime" value="14:00">시작 14:00 ~ 종료 16:10</td>
						<td><input type="radio" name="mtime" value="16:30">시작 16:30 ~ 종료 18:40</td>
						<td><input type="radio" name="mtime" value="19:00">시작 19:00 ~ 종료 21:10</td>
						<td><input type="radio" name="mtime" value="21:30">시작 21:30 ~ 종료 23:40</td>
					</tr>
					<tr>
						<td><input type="radio" name="mtime" value="09:00">시작 09:00 ~ 종료 11:10</td>
						<td><input type="radio" name="mtime" value="11:30">시작 11:30 ~ 종료 13:40</td>
						<td><input type="radio" name="mtime" value="14:00">시작 14:00 ~ 종료 16:10</td>
						<td><input type="radio" name="mtime" value="16:30">시작 16:30 ~ 종료 18:40</td>
						<td><input type="radio" name="mtime" value="19:00">시작 19:00 ~ 종료 21:10</td>
						<td><input type="radio" name="mtime" value="21:30">시작 21:30 ~ 종료 23:40</td>
					</tr>
					<tr>
						<td><input type="radio" name="mtime" value="09:00">시작 09:00 ~ 종료 11:10</td>
						<td><input type="radio" name="mtime" value="11:30">시작 11:30 ~ 종료 13:40</td>
						<td><input type="radio" name="mtime" value="14:00">시작 14:00 ~ 종료 16:10</td>
						<td><input type="radio" name="mtime" value="16:30">시작 16:30 ~ 종료 18:40</td>
						<td><input type="radio" name="mtime" value="19:00">시작 19:00 ~ 종료 21:10</td>
						<td><input type="radio" name="mtime" value="21:30">시작 21:30 ~ 종료 23:40</td>
					</tr>
					<tr>
						<td><input type="radio" name="mtime" value="09:00">시작 09:00 ~ 종료 11:10</td>
						<td><input type="radio" name="mtime" value="11:30">시작 11:30 ~ 종료 13:40</td>
						<td><input type="radio" name="mtime" value="14:00">시작 14:00 ~ 종료 16:10</td>
						<td><input type="radio" name="mtime" value="16:30">시작 16:30 ~ 종료 18:40</td>
						<td><input type="radio" name="mtime" value="19:00">시작 19:00 ~ 종료 21:10</td>
						<td><input type="radio" name="mtime" value="21:30">시작 21:30 ~ 종료 23:40</td>
					</tr>
				</tbody>
			</table>
			<!-- <input type="button" value="자리선택하기" onClick="location.href='ticketingSeat/seat/selectSeat.jsp';">	 -->
			<button type="button" onclick="location.href='ticketingSeat.jsp' ">좌석선택</button>
			</form>
			
			</fieldset>
			
	<!-- =============================모달======================= -->

    <!-- =============================모달 END======================= -->
</body>
</html>