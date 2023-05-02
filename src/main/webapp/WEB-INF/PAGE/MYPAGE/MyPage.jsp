<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/all.css" />
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

#container {
	margin: 0 auto; /* 가로로 중앙에 배치 */
	min-height: 899px;
}

.Container {
	top: 110px;
	position: relative;
	height: 80px;
	display: flex;
	align-items: flex-end;
	padding: 20px;
}

.Container .mypage {
	font-size: 40px;
	font-weight: bold;
	color: #b09c94;
}

.Container .name {
	font-size: 30px;
	font-weight: bold;
	color: navy;
}

.btncontainer1 {
	position: relative;
}

.btn {
	width: 150px;
	height: 100px;
	background-color: #d6ddf9;
	border: 0;
	border-radius: 30px;
	outline: none;
	margin: 5%;
}

.btn1 {
	margin-right: -30px;
}

.btn2 {
	margin-right: -30px;
}

.btn3 {
	margin-right: -30px;
}

.btn4 {
	margin-right: -30px;
}

.btncontainer2 {
	position: relative;
}

.btn5 {
	margin-right: -30px;
}

.btn6 {
	margin-right: -30px;
}

.btn7 {
	margin-right: -30px;
}

.btn8 {
	margin-right: -30px;
}
</style>
<title>PLORS_마이페이지</title>
</head>
<body>
	<!-- 상단 header -->
	<%@ include file="../MAIN/header.jsp"%>
	<center id="container">
		<div class="Container">
			<div>
				<div class="mypage">My page</div>
				<div class="name">주은님 환영합니다♥</div>
			</div>
		</div>
		<div class="btncontainer1">
			<button type="button" class="btn btn1">정보수정하기</button>
			<button type="button" class="btn btn2">리뷰작성</button>
			<button type="button" class="btn btn3">리뷰보기</button>
			<button type="button" class="btn btn4">장바구니</button>
		</div>
		<div class="btncontainer2">
			<button type="button" class="btn btn5">찜한목록</button>
			<button type="button" class="btn btn6">음</button>
			<button type="button" class="btn btn7">음</button>
			<button type="button" class="btn btn8">음</button>
		</div>
	</center>
	<!-- 좌측 슬라이드 메뉴 -->
	<%@ include file="../MAIN/left_menu.jsp"%>
	<!-- 하단 footer -->
	<%@ include file="../MAIN/footer.jsp"%>
</body>
</html>