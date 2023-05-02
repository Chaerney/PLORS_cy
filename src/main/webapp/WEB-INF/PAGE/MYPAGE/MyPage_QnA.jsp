<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/all.css" />
<style>
@import
   url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Batang&family=Nanum+Myeongjo&display=swap')
   ;

* {
   margin: 0;
   padding: 0;
}

html {
   height: 100vh;
   width: 100%;
}
#container{
   min-height:899px;
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

#reviewbook {
   top: 180px;
   position: absolute;
   margin-left: 15%;
   margin-right: 15%;
   width: 70%;
   height: 25%;
   background-color: blue;
}

#reviewinfo {
   margin-left: 180px;
   position: relative;
   height: 100%;
   top: -22px;
   background-color: skyblue;
}

#reviewbook2 {
   top: 180px;
   position: absolute;
   top: 55%;
   margin-left: 15%;
   width: 70%;
   height: 25%;
   background-color: red;
}

#reviewinfo2 {
   margin-left: 180px;
   position: relative;
   height: 100%;
   top: -22px;
   background-color: skyblue;
}

.mypage_banner {
   background-image:
      url("https://cdn.pixabay.com/photo/2012/04/13/15/04/library-32746_960_720.png");
   width: 100%;
   height: 350px;
   background-size: contain;
   position: relative;
    top: -80px;
}

.my_help {
   position: relative;
   margin: 0 auto;
   top: 180px;
   background-color: white;
   width: 200px;
   font-family: 'Black Han Sans', sans-serif;
   font-family: 'Gowun Batang', serif;
   font-family: 'Nanum Myeongjo', serif;
}

.my_help_bar{
  position: relative;
    top: -110px;
    left: 15%;
   background-color: #cc9966;
   width: 70%;
   height: 25px;
   font-family: 'Black Han Sans', sans-serif;
   font-family: 'Gowun Batang', serif;
   font-family: 'Nanum Myeongjo', serif;
}
.my_help_bar > p{
    text-align : center;
     padding : 4px 0;   
}

</style>
<title>Mypage_qna</title>
</head>
<body>
  
   <%@ include file="../MAIN/header.jsp" %>
   <div id="container">
   		<div class="mypage_banner">
   			<div class=my_help align="center">
   				<h2>나의 문의내역</h2>
   			</div>
   		</div>
      
  <div class="my_help_bar">
   <p>
   <span style="padding-left: 5%"></span><strong>제목</strong><span style="padding-right: 60%"></span>|
    <strong>글쓴이</strong><span style="padding-right: 6%"></span>|
    <strong>작성일</strong><span style="padding-right: 6%"></span>|
    <strong>조회수</strong><span style="padding-right: 6%"></span>
    </p>
   </div>
  
   
   </div>
      
   <!-- 좌측 슬라이드 메뉴 -->
   <%@ include file="../MAIN/left_menu.jsp"%>
   
   <!-- 하단 footer -->
   <%@ include file="../MAIN/footer.jsp"%>
   
</body>
</html>