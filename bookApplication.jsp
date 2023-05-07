<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath}/" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${root}css/all.css" />
<style type="text/css">
@font-face {
    font-family: 'SunBatang-Light';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_eight@1.0/SunBatang-Light.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
*{
	margin: 0;
	padding: 0;	
}
body, html {
	height: 100%;
}
#container{
	width: 60%;
	margin: 0 auto;
	/* height: 100%; */
	min-height: 899px; 
	text-align: center;
	position: relative;
	/* top: 130px; */
	padding-top: 4%;
	font-family: 'SunBatang-Light';
}

.info-box {
	background-color: pink;
	padding: 2% 0;
	margin-top: 2%;
}
.app-box {
	/* border: 1px solid #cde2f2; */
	
	box-shadow: -3px 0px 15px 0px rgba(158,158,158,0.61),3px 0px 15px 0px rgba(158,158,158,0.61);
}
.row {
	padding: 1% 0;
	height: 90px;
}
.row-top {
	margin-top: 4%;
}
.row > label {
	padding-right: 5%;
	/* border: 1px solid black; */
	text-align: left;
	display: inline-block;
	width: 15%;
	height: 34px;
	font-size: 18px;
	 
}
.row > input {
	display: inline-block;
	width: 40%;
	height: 34px;
	position: relative;
 	top: 3.6px;
	
}
.app-btn {
	width: 50%;
	height: 50px;
	font-family: 'SunBatang-Light';
	font-size: large;
	border: none;
	background-color: #cde2f2;
	color: white;
	border-radius: 8px;
}
.app-btn:hover {
	cursor: pointer;
	background-color: #cde2f2;
}

</style>
<title>PLORS_도서 신청</title>
</head>
<body>
	<!-- 상단 header -->
	<%@ include file="../MAIN/header.jsp"%>
	
	<!-- 게시판 상단 메뉴 -->
	<%@ include file="../NBQA/board_top_menu.jsp"%>

	
	<div id="container">
	
		<!-- 게시판 상단 메뉴 -->
		<%@ include file="../NBQA/board_top_menu.jsp"%>


		<form:form action="application_pro" method="post" modelAttribute="insertInfoBean">
			<div class="info-box">
				<p>책제목, 지은이, 출판사, ISBN, 원하는 도서관을 입력해주세요.<br>
				부정확한 정보 기입 시 신청이 되지 않을 수 있습니다.</p>
			</div>
			
			<div class="app-box">
				<div class="row row-top">
					<form:label path="ap_bookname" >책제목</form:label>
					<form:input path="ap_bookname" /><br>
					<form:errors path="ap_bookname" class="form-control" style='color:red'/>
				</div>
				<div class="row">
					<form:label path="ap_author">지은이</form:label>
					<form:input path="ap_author"/><br>
					<form:errors path="ap_author" class="form-control" style='color:red'/>
				</div>
				<div class="row">
					<form:label path="ap_publisher">출판사</form:label>
					<form:input path="ap_publisher"/><br>
					<form:errors path="ap_publisher" class="form-control" style='color:red'/>
				</div>
				<div class="row">
					<form:label path="ap_isbn">ISBN</form:label>
					<form:input type="number" path="ap_isbn"/><br>
					<form:errors path="ap_isbn" class="form-control" style='color:red'/>
				</div>
				<div class="row">
					<form:label path="lb_name">도서관</form:label>
					<form:input path="lb_name"/><br>
					<form:errors path="lb_name" class="form-control" style='color:red'/>
				</div>
				<div class="row">
					<form:button class="app-btn">신청하기</form:button>
				</div>
			</div>
		</form:form>
	</div>

	<!-- 좌측 슬라이드 메뉴 -->
	<%@ include file="../MAIN/left_menu.jsp" %>		

	<!-- 하단 footer -->
	<%@ include file="../MAIN/footer.jsp" %>
	
</body>
</html>