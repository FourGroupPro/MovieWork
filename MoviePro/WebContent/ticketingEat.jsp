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
</style>
</head>
<body>
	
		<fieldset class="ticketAll">
			<legend>콤보메뉴 선택</legend>
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
						<div><img src=""></div>
						<input type="checkbox" value="combo1">
						</th>
						
						<th scope="row">
						<div><img src=""></div>
						<input type="checkbox" value="combo2">
						</th>
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