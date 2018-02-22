<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/ticketingStyle.css" rel="stylesheet" type="text/css"><!-- 모달css -->
<link href="css/ticketingStyleSeat.css" rel="stylesheet" type="text/css">
<!-- <link rel="stylesheet" href="css/main.css" /> -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script><!-- 버튼클릭시 이동 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- =================인원수 체크박스 스크립트=================== -->
 <script>
        // html 이 다 로딩된 후 실행
        $(document).ready(function() {
            // 체크박스들이 변경됬을때
            $(":checkbox").change(function() {
                var cnt = $("#person").val();
                 
                // 셀렉트박스의 값과 체크박스중 체크된 갯수가 같을때, 다른 체크박스들을 disable 처리
                if( cnt==$(":checkbox:checked").length ) {
                    $(":checkbox:not(:checked)").attr("disabled", "disabled");
                }
                // 체크된 갯수가 다르면 활성화 시킴
                else {
                    $(":checkbox").removeAttr("disabled");
                }
            });
             
            // 셀렉트박스에서 다른 인원수를 선택하면 초기화 시킴
            $("#person").change(function(){
                $(":checkbox").removeAttr("checked");
                $(":checkbox").removeAttr("disabled");
            });
        });
           
    </script>
<!--   =============버튼 클릭 시 이동 스크립트================ -->
 <script>
    function fnMove(seq){
        var offset = $("#div" + seq).offset();
        $('html, body').animate({scrollTop : offset.top}, 400);
    }
</script>
<jsp:useBean id="nowDate" class="java.util.Date" />
<style type="text/css">
/* ============mtime css 시작=============== */
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
	background-color: white;
	}
	#mtime{
	text-align:center;
	border: 3px solid black;
	width: 15%;
	border-left:none;
	border-bottom: none;
	border-right: hidden;
	border-right-style: dotted;
	border-right-color: gray;
	}

	/* ============mtime css 끝=============== */
	/* ============seat css 시작=============== */
	th{
	text-align: center;
	}
	label {
	font-size: 18px;
	}
	legend {
	text-align: center;
	}
	fieldset {
	width: 95%;
	margin: 0 auto;
	}
	span {
	margin-left: 3%;
	}
	/* ============seat css 끝=============== */
	button {
	margin-left: 46%;
	margin-top: 20px;
	}
</style>
</head>
<body>
<div id="1" style="background-color: #D0A9F5;">
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
			<table class="mRight" >
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
						<td id="mtime"><input type="radio" name="mtime" value="09:00">시작 09:00 ~ 종료 11:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="11:30">시작 11:30 ~ 종료 13:40</td>
						<td id="mtime"><input type="radio" name="mtime" value="14:00">시작 14:00 ~ 종료 16:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="16:30">시작 16:30 ~ 종료 18:40</td>
						<td id="mtime"><input type="radio" name="mtime" value="19:00">시작 19:00 ~ 종료 21:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="21:30">시작 21:30 ~ 종료 23:40</td>
					</tr>
					<tr>
						<td id="mtime"><input type="radio" name="mtime" value="09:00">시작 09:00 ~ 종료 11:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="11:30">시작 11:30 ~ 종료 13:40</td>
						<td id="mtime"><input type="radio" name="mtime" value="14:00">시작 14:00 ~ 종료 16:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="16:30">시작 16:30 ~ 종료 18:40</td>
						<td id="mtime"><input type="radio" name="mtime" value="19:00">시작 19:00 ~ 종료 21:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="21:30">시작 21:30 ~ 종료 23:40</td>
					</tr>
					<tr>
						<td id="mtime"><input type="radio" name="mtime" value="09:00">시작 09:00 ~ 종료 11:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="11:30">시작 11:30 ~ 종료 13:40</td>
						<td id="mtime"><input type="radio" name="mtime" value="14:00">시작 14:00 ~ 종료 16:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="16:30">시작 16:30 ~ 종료 18:40</td>
						<td id="mtime"><input type="radio" name="mtime" value="19:00">시작 19:00 ~ 종료 21:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="21:30">시작 21:30 ~ 종료 23:40</td>
					</tr>
					<tr>
						<td id="mtime"><input type="radio" name="mtime" value="09:00">시작 09:00 ~ 종료 11:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="11:30">시작 11:30 ~ 종료 13:40</td>
						<td id="mtime"><input type="radio" name="mtime" value="14:00">시작 14:00 ~ 종료 16:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="16:30">시작 16:30 ~ 종료 18:40</td>
						<td id="mtime"><input type="radio" name="mtime" value="19:00">시작 19:00 ~ 종료 21:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="21:30">시작 21:30 ~ 종료 23:40</td>
					</tr>
					<tr>
						<td id="mtime"><input type="radio" name="mtime" value="09:00">시작 09:00 ~ 종료 11:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="11:30">시작 11:30 ~ 종료 13:40</td>
						<td id="mtime"><input type="radio" name="mtime" value="14:00">시작 14:00 ~ 종료 16:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="16:30">시작 16:30 ~ 종료 18:40</td>
						<td id="mtime"><input type="radio" name="mtime" value="19:00">시작 19:00 ~ 종료 21:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="21:30">시작 21:30 ~ 종료 23:40</td>
					</tr>
					<tr>
						<td id="mtime"><input type="radio" name="mtime" value="09:00">시작 09:00 ~ 종료 11:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="11:30">시작 11:30 ~ 종료 13:40</td>
						<td id="mtime"><input type="radio" name="mtime" value="14:00">시작 14:00 ~ 종료 16:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="16:30">시작 16:30 ~ 종료 18:40</td>
						<td id="mtime"><input type="radio" name="mtime" value="19:00">시작 19:00 ~ 종료 21:10</td>
						<td id="mtime"><input type="radio" name="mtime" value="21:30">시작 21:30 ~ 종료 23:40</td>
					</tr>
				</tbody>
			</table>
			<!-- <input type="button" value="자리선택하기" onClick="location.href='ticketingSeat/seat/selectSeat.jsp';">	 -->
			</form>
			 <button onclick="fnMove('1')">좌석선택으로 이동</button>
			</fieldset>
	<br><br><br>
</div>
<!-- ==============================END영화선택============== -->
<br><br><br><br><br><br><br>
<!-- ==============================좌석선택============== -->
<div id="div1"></div>
<div id="2" style="background-color: #58FAF4;">
<fieldset class="seatSelect">
	<legend>좌석선택</legend>
	<form action="">
	 <span>인원수 선택 : </span>
    <select id="person">
        <option value="1">1명</option>
        <option value="2">2명</option>
        <option value="3">3명</option>
        <option value="4">4명</option>
        <option value="5">5명</option>
    </select>
	<div id="screen" style="background-color: gray; width: 50%; height: 30px; border-radius: 15px; text-align: center; margin: 0 auto; margin-top: 10px; margin-bottom: 20px; padding-top: 10px; color: white;">SCREEN</div>
<table class="seat" style="height: 500px; background-color: white;">
	<tbody>
<tr>
	<td><label><input type="checkbox" name="seatnumber" value="A-1"/>A-1</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="A-2"/>A-2</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="A-3"/>A-3</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="A-4"/>A-4</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="A-5"/>A-5</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="A-6"/>A-6</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="A-7"/>A-7</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="A-8"/>A-8</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="A-9"/>A-9</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="A-10"/>A-10</label></td>
</tr>
<tr>
	<td><label><input type="checkbox" name="seatnumber" value="B-1"/>B-1</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="B-2"/>B-2</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="B-3"/>B-3</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="B-4"/>B-4</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="B-5"/>B-5</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="B-6"/>B-6</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="B-7"/>B-7</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="B-8"/>B-8</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="B-9"/>B-9</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="B-10"/>B-10</label></td>
</tr>
<tr>
	<td><label><input type="checkbox" name="seatnumber" value="C-1"/>C-1</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="C-2"/>C-2</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="C-3"/>C-3</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="C-4"/>C-4</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="C-5"/>C-5</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="C-6"/>C-6</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="C-7"/>C-7</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="C-8"/>C-8</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="C-9"/>C-9</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="C-10"/>C-10</label></td>
</tr>
<tr>
	<td><label><input type="checkbox" name="seatnumber" value="D-1"/>D-1</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="D-2"/>D-2</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="D-3"/>D-3</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="D-4"/>D-4</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="D-5"/>D-5</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="D-6"/>D-6</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="D-7"/>D-7</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="D-8"/>D-8</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="D-9"/>D-9</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="D-10"/>D-10</label></td>
</tr>
<tr>
	<td><label><input type="checkbox" name="seatnumber" value="E-1"/>E-1</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="E-2"/>E-2</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="E-3"/>E-3</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="E-4"/>E-4</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="E-5"/>E-5</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="E-6"/>E-6</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="E-7"/>E-7</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="E-8"/>E-8</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="E-9"/>E-9</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="E-10"/>E-10</label></td>
</tr>
<tr>
	<td><label><input type="checkbox" name="seatnumber" value="F-1"/>F-1</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="F-2"/>F-2</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="F-3"/>F-3</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="F-4"/>F-4</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="F-5"/>F-5</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="F-6"/>F-6</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="F-7"/>F-7</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="F-8"/>F-8</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="F-9"/>F-9</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="F-10"/>F-10</label></td>
</tr>
<tr>
	<td><label><input type="checkbox" name="seatnumber" value="G-1"/>G-1</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="G-2"/>G-2</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="G-3"/>G-3</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="G-4"/>G-4</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="G-5"/>G-5</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="G-6"/>G-6</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="G-7"/>G-7</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="G-8"/>G-8</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="G-9"/>G-9</label></td>
	<td><label><input type="checkbox" name="seatnumber" value="G-10"/>G-10</label></td>
</tr>
</table>
	</form>
    <button onclick="fnMove('2')">매점으로 이동</button>
	</fieldset>
	<br><br><br>
</div>
<!-- ==============================END좌석선택============== -->
<br><br><br><br><br><br><br>

<!-- ==============================매점이용========================= -->
<div id="div2"></div>
<fieldset class="marketAll">
	<legend>콤보메뉴 선택</legend>
		<form action="mFrist" method="post">
			<input type="hidden" name="nal" value="<fmt:formatDate value="${nowDate}" pattern="yyyy-MM-dd-hh-mm-ss" />" readonly="readonly">
			<table class="mLeft">
				<tbody>
					<tr>
						<td scope="row">
						<div><img src=""></div>
						<label>혼자먹기 콤보</label>
						<input type="checkbox" value="combo1">
						</td>
						
						<td scope="row">
						<div><img src=""></div>
						<label>따로먹기 콤보</label>
						<input type="checkbox" value="combo2">
						</td>
					</tr>
				</tbody>
			</table>
			<!-- <input type="button" value="자리선택하기" onClick="location.href='ticketingSeat/seat/selectSeat.jsp';">	 -->
		<button type="button" onclick="location.href='ticketingSeat.jsp' ">예약완료</button>
	</form>
</fieldset>
	
</body>
</html>