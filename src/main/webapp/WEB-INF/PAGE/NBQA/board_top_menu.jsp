<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath}/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
#page-box {
	display: flex;
	justify-content: space-around;
	flex-wrap: wrap;
	padding-bottom: 2%;
}
.page {	
	display: inline-block;
	border: 2px solid #cde2f2;
	border-radius: 8px;
	width: 20%;
	height: 50px;
	text-align: center;
	line-height: 50px;	
}
</style>
</head>
<body>
	<div>
		<div id="page-box">		 
			<c:forEach var="obj" items="${topMenuList }">						
				<a class="page" href="${root}NBQA/board?board_id=${obj.board_id }" style="text-decoration: none"><span>${obj.board_name }</span></a>
			</c:forEach>
			<c:choose>
				<c:when test="${loginUserBean.userLogin == true && loginUserBean.mb_ad ==1 }">
					<a class="page" href="${root}NBQA/application_list_admin" style="text-decoration: none">도서신청내역</a>					
				</c:when>
				<c:otherwise>
					<a class="page" href="${root}NBQA/application" style="text-decoration: none"><span>도서신청</span></a>	
				</c:otherwise>
			</c:choose>
				<%-- <c:if test="${loginUserBean.mb_ad ==1 }">
					<a class="page" href="${root}NBQA/application_list_admin" style="text-decoration: none">도서신청내역</a>
				</c:if>
				<a class="page" href="${root}NBQA/application" style="text-decoration: none"><span>도서신청</span></a>	 --%>
		</div>
	</div>
</body>
</html>