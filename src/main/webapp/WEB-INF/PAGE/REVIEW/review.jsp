<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="review.css">
<title>Insert title here</title>
</head>
<body>
	<div class="review_book">
      <div class="review_book_img">
      <button class="bt1" type="button" onclick="javascript:sensorBtnClick('btn1');"> >
      </button>
      </div>
      <div class="reveiw_book_title">
      <br>
      <p><h5 align="center"><strong>ìê°ì ì¼ìì¼ë¤</strong></h5><p>
     	<h5 align="center"> âââââ</h5>
      </div>
	</div>
	
	 <nav>
      <div class="menu-btn">
         <div class="line line--1"></div>
         <div class="line line--2"></div>
         <div class="line line--3"></div>
      </div>
      
      <div class="nav-links">
         <div class="nav-a">
            <a href="http://www.naver.com">ë¡ê·¸ì¸</a>
            <div>&nbsp;</div>
         </div>
         <div class="nav-a">
            <a href="#mypage">ë§ì´íì´ì§</a> 
            <a href="#about">íìì ë³´ìì </a> 
            <a href="#wishlist">ì¥ë°êµ¬ë</a> 
            <a href="#wishlist">ëì¬ë´ì­</a> 
            <a href="#wishlist">ë°°ì¡ì¡°í</a> 
            <a href="#wishlist">í¬ì¸í¸ì¶©ì </a> 
            <a href="#wishlist">ê¸°ë¶</a> 
            <a href="#wishlist">í¬ì¸í¸ë´ì­</a> 
            <a href="#wishlist">ëìë¦¬ë·°</a> 
            <a href="#wishlist">ëìë¬¸ì</a>
            <div>&nbsp;</div>
         </div>
         <div class="nav-a">
            <a href="#notice">ê³µì§ì¬í­</a> 
            <a href="#notice">ê²ìí</a> 
            <a href="#notice">ë¬¸ì</a> 
            <a href="#notice">ëìì ì²­</a>
            <div>&nbsp;</div>
         </div>
         <div class="nav-a">
            <a href="#review">ë¦¬ë·°</a>
            <div>&nbsp;</div>
         </div>
         <div class="nav-a">
            <a href="#mypage">ëìê´ì¡°í</a> 
            <a href="mainP.html">ëìì¡°í</a>
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