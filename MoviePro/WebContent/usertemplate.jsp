<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 	 <c:set var="pagefile" value="${param.page}"/>
   	 <c:choose>
  	  <c:when test="${pagefile==null}">
  		<c:set var="pagefile" value="movieList.mo?name=user"/>
  	  </c:when>
     </c:choose>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Awesome Bootstrap 3 Sidebar Navigation</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
    <link rel="stylesheet" href="css/leftstyle.css">
</head>

<body>
		
    	 <div id="wrapper">
    	 <jsp:include page="slide.jsp"/>
        <div class="overlay"></div>
        <!-- Sidebar -->
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
            <ul class="nav sidebar-nav">
            <c:choose>
				<c:when test="${sessionScope.id == null }">
                <li class="sidebar-brand">
                    <a href="template.jsp?page=managerLogin">Login</a>
                </li>
                 </c:when>
 				 <c:otherwise>
 				  <li>
                    <h4 style="color: white; font-size: 15px;">${sessionScope.id}님 환영합니다.</h4></center>
  					<a href="logout.manager">LogOut</a><a href="update.manager">매니저 정보수정</a><a href="template.jsp?page=Manager_Main">Manager Home	</a>
                </li>
 <li></li>               
                </c:otherwise>  
                </c:choose>
                
                <li>
                   <a href="movieList.mo?name=user">User Home</a>
                </li>
                <li>
                    <a href="movieList.mo?name=screening">상영작</a>
                </li>
                <li>
                    <a href="movieList.mo?name=ticketing">영화예매</a>
                </li>
                <li>
                   <a href="usertemplate.jsp?page=event">이벤트</a>
                </li>
                <li>
                    <a href="boardList.boa">영화후기</a>
                </li>
                <li>
                    <a href="#">고객센터</a>
                </li>
                <li>
                    <a href="usertemplate.jsp?page=map">오시는 길</a>
                </li>
            </ul>
        </nav>
			
		<div class="content" style="background-color: white;">
			<div id="movie">
				<jsp:include page='${pagefile}.jsp' />
			</div>
		</div>
		<!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div>
          <button type="button" class="hamburger is-closed animated fadeInLeft" data-toggle="offcanvas">
            <span class="hamb-top"></span>
            <span class="hamb-middle"></span>
            <span class="hamb-bottom"></span>
          </button>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                    
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>

  

    <script  src="js/index.js"></script>




</body>

</html>
