<%@page import="kr.co.itfriend.dao.BookRankingDao"%>
<%-- <%@page import="org.openqa.selenium.By"%> --%>
<%-- <%@page import="org.openqa.selenium.WebElement"%> --%>
<%@page import="java.net.URL"%>
<%-- <%@page import="org.openqa.selenium.chrome.ChromeDriver"%> --%>
<%-- <%@page import="org.openqa.selenium.WebDriver"%> --%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="isbn">
		<c:forEach items="${bookIsbn}" var="br">
			<h3>${br.TB_ISBN13}</h3>	
		</c:forEach>
		</div>
</body>
</html>
