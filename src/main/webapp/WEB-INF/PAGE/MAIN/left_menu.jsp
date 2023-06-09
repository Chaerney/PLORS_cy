<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath}/" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;	
}
nav {
    overflow: hidden;
    position: fixed;
    transform: translateX(-100px);
    /* top: 110px; */
    top: 16%;
    height: 70%;
    /* height: 64%; */
    width: 200px;
    transition: all 800ms cubic-bezier(.8, 0, .33, 1);
    border-radius: 0 150px 150px 0;
    z-index: 5;
}


nav.nav-open {
    transform: translateX(0px);
    border-radius: 0 150px 150px 0; 
   background-color : rgba(38, 46, 87, 0.8);
}

nav .menu-btn {
    position: absolute;
    top: 50%;
    right: 5%;
    padding: 0;
    width: 30px;
    cursor: pointer;
    z-index: 5;
}

nav .menu-btn .line {
    padding: 0;
    width: 30px;
    background:black;
    height: 2px;
    margin: 5px 0;
    transition: all 700ms cubic-bezier(.9, 0, .33, 1);
}

nav .menu-btn .line.line--1 {
    width: 28px;
    transform: rotate(0) translateY(0);
}

nav .menu-btn .line.line--1.line-cross {
    width: 30px;
    transform: rotate(45deg) translateY(10px);
   /* background: rgba(0,0,0,0.6); */
    background: rgba(255,255,255,0.6); 
}

nav .menu-btn .line.line--2 {
    width: 28px;
    transform: translateX(0);
}

nav .menu-btn .line.line--2.line-fade-out {
    width: 28px;
    transform: translate(30px);
    opacity: 0;
}

nav .menu-btn .line.line--3 {
    width: 28px;
    transform: rotate(0) translateY(0);
}

nav .menu-btn .line.line--3.line-cross {
    width: 30px;
    transform: rotate(-45deg) translateY(-10px);
   /* background: rgba(0,0,0,0.6); */
   background: rgba(255,255,255,0.6);
}

nav .nav-links {
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    /* align-items: left; */
    /* align-content: space-between; */
    justify-content: center; 
   
    transform: translateX(-100px);
    opacity: 0;
    transition: all 900ms cubic-bezier(.9, 0, .33, 1);
}
.nav-a {
	display: flex;
	flex-direction: column;
	align-content: space-between;
	color: white;
	
}

nav .nav-links.fade-in {
    opacity: 1;
    transform: translateX(0px);
}

nav .nav-links .link {

    margin: 10px 0;
    text-decoration: none;
    font-family: sans-serif;
    color: rgba(0,0,0,0.9);
    font-weight: 300;
    font-size: 15px;
    transition: all 300ms cubic-bezier(.9, 0, .33, 1);
}

nav .nav-links .link:hover {
    color: rgba(0, 0, 0, .5);
}


.nav-a > a{
 text-decoration: none;
  margin: 0 20px;
  color: white;
  font-size: 16px;
  transition: all 300ms ease;
}

.nav-a > a:hover{
  color: gray;
}

}
</style>
</head>
<body>

	<nav>
		<div class="menu-btn">
			<div class="line line--1"></div>
			<div class="line line--2"></div>
			<div class="line line--3"></div>
		</div>
		
		<div class="nav-links">
			<div class="nav-a">
				<a href="${root}MYPAGE/login">로그인</a>
				<div>&nbsp;</div>
			</div>
			<div class="nav-a">
				<a href='${root}MYPAGE/Change'>회원정보수정</a> 
				<a href="${root}RENTAL/wishlist">장바구니</a> 
				<a href="${root}RENTAL/orderlist">대여내역</a> 
				<a href="${root}RENTAL/deliverlist">배송조회</a> 
				<a href='${root}POINT/ChargePoint'>포인트충전</a> 
				<a href='${root}POINT/CharityPage'>기부</a> 
				<a href='${root}POINT/PointInfo'>포인트내역</a>
				<div>&nbsp;</div>
			</div>
			<!-- NBQA -->
			<div class="nav-a">
				<c:forEach var="obj" items="${topMenuList }">						
					<a href="${root}NBQA/board?board_id=${obj.board_id }">${obj.board_name }</a> <!-- 공지사항,게시판,문의 -->
				</c:forEach>
				<a href="${root}NBQA/application">도서신청</a>
				<c:if test="${loginUserBean.mb_ad ==1 }">
					<a href="${root}NBQA/application_list_admin">도서신청내역</a>
				</c:if>
				<div>&nbsp;</div>
			</div>
			<div class="nav-a">
				<a href='${root}REVIEW/review'>리뷰</a>
				<div>&nbsp;</div>
			</div>
			<div class="nav-a">
				<a href="${root }MAIN/MainSearchProc">도서관조회</a> 
				<a href="mainP.html">도서조회</a>
			</div>
		</div>
	</nav>
	
<script type="text/javascript">
		var menuBtn = document.querySelector('.menu-btn');
		var nav = document.querySelector('nav');
		var lineOne = document.querySelector('nav .menu-btn .line--1');
		var lineTwo = document.querySelector('nav .menu-btn .line--2');
		var lineThree = document.querySelector('nav .menu-btn .line--3');
		var link = document.querySelector('nav .nav-links');
		menuBtn.addEventListener('click', () => {
		    nav.classList.toggle('nav-open');
		    lineOne.classList.toggle('line-cross');
		    lineTwo.classList.toggle('line-fade-out');
		    lineThree.classList.toggle('line-cross');
		    link.classList.toggle('fade-in');
		})
</script>

</body>
</html>