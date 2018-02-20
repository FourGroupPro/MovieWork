<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/ticketingStyleSeat.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>

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
    
    <style type="text/css">
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
    </style>
</head>
<body>

<fieldset>
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
<table class="seat" style="height: 500px;">
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
	<button type="button" onclick="location.href='ticketing.jsp'">뒤로가기</button>
	<button type="button" onclick="location.href='ticketingEat.jsp'">매점이용</button>
	</form>
	</fieldset>
</body>
</html>