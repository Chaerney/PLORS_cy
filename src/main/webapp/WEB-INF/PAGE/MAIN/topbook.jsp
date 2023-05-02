<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath}/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<img src="${topbookinfo.TB_BOOKIMAGEURL}" width="200" height="300"> <br>
	${ topbookinfo.TB_NO }<br>
	${ topbookinfo.TB_BOOKNAME }<br>
	${topbookinfo.TB_ISBN13 }<br>
	
</body>
</html>