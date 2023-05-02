<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/all.css" />
<style type="text/css">
*{
   margin: 0px;
   padding: 0px;
}

#container{	
  	margin: 0 auto; /* 가로로 중앙에 배치 */ 	
  	min-height: 899px;  /* 추후 삭제 */
   /*  padding-bottom: 110px; */ 
}
.form-box{
	top: 250px;
   width: 400px;
   height: 400px;
   position: relative;
   margin: 0 auto;
   /* background: #fff; */
   padding: 0px;
   overflow: hidden;
   align-content: center;
   
}
.button-box{
   width: 360px;
   height: fit-content;
   margin: 0px auto;
   position: relative;
   /* box-shadow: 0 0 0px 0px #cc9966; */
    background: #d6ddf9;
    display: flex;
}
.btn{
   top: 0;
   left: 0;
   position: absolute;
   width: 100%;
   height: 100%;
   background: #d6ddff;
   border-radius: 0px;
   /* transition: .5s;
   margin-right:-4px; */
}
.toggle-btn{
   /* padding: 30px 33px; */
   cursor: pointer;
   background: transparent;
   border:1px solid white;
   position: relative;
/*    margin-right:-5.5px; */
   width:100%;
   height:100px;
   padding:0px;
}


.input-group{
	margin-left: -5px;
   top: 130px;
   position: absolute;
   width: 320px;
   /* transition: .5s; */
}
.input-field{
   width: 100%;
   padding: 10px 0;
   margin: 5px 0;
   border-top: 0;
   border-left: 0;
   border-right: 0;
   border-bottom: 1px solid #999;
   outline: none;
   background: transparent;
}
.submit-btn{
   width: 85%;
   padding: 10px 30px;
   cursor: pointer;
   display: block;
   margin: auto;
   background: #d6ddf9;
   border:0;
   outline: none;
   border-radius: 30px;
}

.submit-btn2{
   position:relative;
   width: 274px;
   padding: 10px 30px;
   cursor: pointer;
   display: block;
   margin: auto;
   background: #ffff33;
   border:0;
   outline: none;
   border-radius: 30px;
   top:160px;
   right:-4px;
}
.check-box{
   margin: 30px 10px 30px 0;
}
span{
   color: #777;
   font-size: 12px;
   bottom: 68px;
   position: absolute; 
}
#login{
   left: 50px;
}
#register{
   left: 450px;
}
</style>
<title>PLORS_로그인</title>
</head>
<body>
	<!-- 상단 header -->
	<%@ include file="../MAIN/header.jsp"%>


	<div id="container"> 
		<div class="form-box">
			<div class="button-box">
			
				<!-- <div id="btn"></div> -->
				<button type="button" class="toggle-btn" onclick="location='${root }MYPAGE/find_id'">ID 찾기</button>
				<button type="button" class="toggle-btn" onclick="location='${root }MYPAGE/find_pw'">PASSWORD<br> 찾기</button>
				<button type="button" class="toggle-btn" onclick="location='${root }MYPAGE/NewAccount'">NEW ACCOUNT</button>
			</div>
			
			<form:form action="${root }MYPAGE/login_pro" method="post" modelAttribute="tempLoginUserBean"  id="login" class="input-group">
				<form:input path="mb_id" class="input-field" placeholder="User Id"/> 
				<form:password path="mb_pw" class="input-field" placeholder="User Password"/> 
				<form:button type="submit" class="submit-btn">Login</form:button>
			</form:form>
	<button type="button" class="submit-btn2" onclick="location='${root }MYPAGE/kakaotalk'">KAKAOTALK 로그인</button>
		</div>
	</div>
	<!-- 좌측 슬라이드 메뉴 -->
	<%@ include file="../MAIN/left_menu.jsp"%>

	<!-- 하단 footer -->
	<%@ include file="../MAIN/footer.jsp"%>
</body>
</html>