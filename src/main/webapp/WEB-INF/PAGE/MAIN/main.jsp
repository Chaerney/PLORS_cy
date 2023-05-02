<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath}/" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/all.css" />
<style type="text/css">
@font-face {
	font-family: 'SunBatang-Light';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_eight@1.0/SunBatang-Light.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.dots{
	position:relative;
	margin-top: -20px;
}
.dot {
	height: 12px;
	width: 12px;
	margin: 0 2px;
	background-color: white;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

* {
	margin: 0;
	padding: 0;
	font-family: 'SunBatang-Light';
}

#container {
	/* min-height: 899px; */
	min-height: 100%;
}

.contents {
	position: relative;
	text-align: center;
	z-index: 3; /* 스크롤 될 때 header 가리지 않게 */
}

#s1 {
	top: 100px;
	height: 100%;
	background-image: url("back.jpg");
	background-size: 100% 100%;
	padding: 150px 0;
}

.section_div {
	padding-bottom: 100px;
}

#s1_box {
	position: relative;
	top: 35%;
}

#s1-p {
	font-weight: 900;
	font-size: large;
}

#book-list {
	width: 60%;
	margin: 0 auto;
	padding: 30px;
	position: relative;
	border: 8px solid #cde2f2;
	border-bottom: 30px solid #cde2f2;
	border-radius: 6px;
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	flex-wrap: wrap;
}

.next-btn {
	margin-top: -25px;
	position: absolute;
	margin-left: 48%;
}

button {
	border: none;
	/* outline: none; */
	background-color: transparent;
	color: white;
	cursor: pointer;
}
/* .book{
	flex-shrink: 1;
	flex-basis: 0px;
} */
#s2 {
	/* top: 50%; */
	height: 500px;
}

#s2_box {
	position: relative;
	top: 30%;
}

#s3 {
	/* top: 80%; */
	height: 500px;
	align-items: center;
}

.contents {
	position: relative;
	top: 30%;
}

#intro {
	color: black;
	font-size: xx-large;
	padding-bottom: 40px;
}

#search_bar {
	padding-left: 8px;
	border-radius: 8px;
	border-color: lightgray;
	height: 50px;
	width: 500px;
}

.text_box {
	border: 3px solid #262e57;
	border-radius: 8px;
	display: inline-block;
	width: 100px;
	height: 100px;
}

.text_box p {
	padding-top: 23px;
}

#up_icon {
	position: fixed;
	bottom: 15px;
	right: 15px;
}

#up_img {
	width: 24px;
	cursor: pointer;
}

.book{
margin: 6px;
}
</style>
<title>PLORS_main</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<!-- 상단 header -->
	<%@ include file="../MAIN/header.jsp"%>

	<div id="container">
		<!-- 검색엔진 -->
		<div id="s1" class="contents">
			<div id="s1_box">
				<div class="section_div">
					<h2 id="intro">반갑습니다, 서울시 공공 도서관 온라인 대여 서비스입니다.</h2>
					<input id="search_bar" type="search"
						placeholder="찾으시는 도서의 제목을 입력해주세요." /><br> <br>
				</div>
				<p id="s1-p">인기 대출 도서</p>
				<br />

				<div id="book-list">

					<div class="rank">
						<c:forEach begin="0" end="4" items="${bookRanking}" var="br">
							<img class="book" src="${br.TB_BOOKIMAGEURL}"
								style="cursor: pointer" width="150" height="200"
								onclick="window.open('${root}MAIN/topbook/${br.TB_NO }','asdfo8or','scrollbars=yes,width=400,height=350,top=10,left=20');" />
						</c:forEach>
					</div>
					<div class="rank">
						<c:forEach begin="5" end="9" items="${bookRanking}" var="br">
							<img class="book" src="${br.TB_BOOKIMAGEURL}"
								style="cursor: pointer" width="150" height="200"
								onclick="window.open('${root}MAIN/topbook/${br.TB_NO }','asdfo8or','scrollbars=yes,width=400,height=350,top=10,left=20');" />
						</c:forEach>
					</div>
					<div class="rank">
						<c:forEach begin="10" end="14" items="${bookRanking}" var="br">
							<img class="book" src="${br.TB_BOOKIMAGEURL}"
								style="cursor: pointer" width="150" height="200"
								onclick="window.open('${root}MAIN/topbook/${br.TB_NO }','asdfo8or','scrollbars=yes,width=400,height=350,top=10,left=20');" />
						</c:forEach>
					</div>
					<div class="rank">
						<c:forEach begin="15" end="19" items="${bookRanking}" var="br">
							<img class="book" src="${br.TB_BOOKIMAGEURL}"
								style="cursor: pointer" width="150" height="200"
								onclick="window.open('${root}MAIN/topbook/${br.TB_NO }','asdfo8or','scrollbars=yes,width=400,height=350,top=10,left=20');" />
						</c:forEach>
					</div>
				</div>

				<div style="text-align: center" class="dots">
					<span class="dot"></span> <span class="dot"></span> <span
						class="dot"></span> <span class="dot"></span>
				</div>

				


			</div>

		</div>

		<!-- 소개 PLORS-->
		<div id="s2" class="contents">
			<div id="s2_box">
				<h2>
					<b>Public Library Online Rental Service</b>
				</h2>
				<p>
					공공 도서관 온라인 대여 서비스 <br>도서관 굳이 안 가도 돼~ <br>집에서 편하게 빌려 볼 수
					있어염~ <br>반납도 올 필요 없어요~
				</p>
			</div>
		</div>

		<!-- 통계 
			(회원 / 책/ 대여/ 신간) -->
		<div id="s3" class="contents">
			<div class="text_box">
				<p>
					1,501<br> <strong>회원 수</strong>
				</p>
			</div>
			<div class="text_box">
				<p>
					222,222<br> <strong>보유 도서</strong>
				</p>
			</div>
			<div class="text_box">
				<p>
					789<br> <strong>대여</strong>
				</p>
			</div>
			<div class="text_box">
				<p>
					510<br> <strong>신간 도서</strong>
				</p>
			</div>
		</div>
	</div>
	<!-- 좌측 슬라이드 메뉴 -->
	<%@ include file="../MAIN/left_menu.jsp"%>

	<!-- 하단 footer -->
	<!-- <footer>		
		<p>Copyright © PLORS All rights reserved.</p>
	</footer> -->
	<%@ include file="../MAIN/footer.jsp"%>


	<!-- 위로 올라가는 버튼 -->
	<div id="up_icon">
		<a href="#"><img id="up_img" src="../img/up-arrow.png"></a>
	</div>
	<script>

		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByClassName("rank");
			var dots = document.getElementsByClassName("dot");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
			setTimeout(showSlides, 3000); // Change image every 2 seconds
		}
	</script>


	<div id="div"
		style="display: none; position: absolute; left: 0px; top: 0px; width: 100px; height: 100px; background-color: blue;">

	</div>


</body>
</html>