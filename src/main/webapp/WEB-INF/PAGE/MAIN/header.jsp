<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <c:set var='root' value="${pageContext.request.contextPath}/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
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
	box-sizing: border-box;	
}
#header {
	width: 100%;
	height: 100px;
	position: fixed;
	background-color: #262e57;
	z-index: 10;
}

#img_title {
	height: 100px;
}
#header-flex {
	display: flex;
	justify-content: space-between;
}
#login-btn {
	margin-right: 12px;
	margin-top: 66px; 
} 
#login-btn > a {
	color: rgba(255,255,255,0.8);
	text-decoration: none;
	font-family: 'SunBatang-Light';	
	font-size: 18px;
}
#login-btn > a:hover {
	color: gray;
}

</style>
</head>
<body>
	<div id="header">
		<div id="header-flex">
			<div>
				<a href="${root }MAIN/main"><img id="img_title" src="${root }img/title_white.png"/></a>
			</div>	
			<div id="login-btn">
				<c:choose>
					<c:when test="${loginUserBean.userLogin == true }">
						<a href="${root }MYPAGE/logout">로그아웃</a>&nbsp;
						<a href="${root }MYPAGE/Change">정보수정</a>&nbsp;						
					</c:when>
					<c:otherwise>
						<a href="${root }MYPAGE/login">로그인</a>&nbsp;
						<a href="${root }MYPAGE/NewAccount">회원가입</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</body>
</html> 