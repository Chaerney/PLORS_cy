<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath}/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../css/all.css" />
<style type="text/css">
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;	
}

#container {
	width: 70%;
  	margin: 0 auto; /* 가로로 중앙에 배치 */
  	padding-top: 10%; 
  	height: 150vh; /* 추후 삭제 */
}

#write {
    text-align: right;
}

/* Bootstrap 수정 */

 .table > thead {
   background-color: #ceaf8a;
 }
 .table > thead > tr > th {
   text-align: center;
 }
 .table-hover > tbody > tr:hover {
   background-color: #e6ecff;
 }
 .table > tbody > tr > td {
   text-align: center;
 }
 .table > tbody > tr > #title {
   text-align: left;
 }
#page-box {
	display: flex;
	justify-content: space-around;
	flex-wrap: wrap;
}
.page {	
	display: inline-block;
	border: 2px solid #e5c49c;
	border-radius: 8px;
	width: 20%;
	height: 50px;
	text-align: center;
	line-height: 50px;	
}

</style>
<title>PLORS_공지사항</title>
</head>
<body>

	<!-- 상단 header -->
	<%@ include file="../MAIN/header.jsp"%>
	
	<!-- 공지사항 list -->
	<div id="container">
		<div id="page-box">
			<a class="page" href="${root}NBQA/notice" style="text-decoration: none"><span>공지사항</span></a>
			<a class="page" href="${root}NBQA/board" style="text-decoration: none"><span>자유게시판</span></a>
			<a class="page" href="${root}NBQA/q_a" style="text-decoration: none"><span>문의사항</span></a>
			<a class="page" href="${root}NBQA/application" style="text-decoration: none"><span>도서신청</span></a>
		</div>
		
		<div id="write">
		     <a href="board_write.jsp" style="text-decoration: none">글쓰기</a>
		</div>
		
		<table class="table">
			<!-- no, 제목, 작성자, 작성일, 조회 -->
			<thead>
				<tr height="30">
					<th width="150">번호</th>
					<th width="700">제목</th>
					<th width="150">작성자</th>
					<th width="150">작성일</th>
					<th width="150">조회</th>
				</tr>
			</thead>
			<!-- 중요 공지 -->
			<tbody>
				<tr height="40">
					<td width="50" align="left">공지</td>
					<td width="700" align="left">..중요..</td>
					<td width="100" align="center">이름</td>
					<td width="150" align="center">2023.03.31</td>
					<td width="80" align="center">22</td>
				</tr>
			</tbody>
			
			<!-- 공지 -->
			<tbody>
				<tr height="40">
					<td width="50" align="left">1</td>
					<td width="700" align="left">..제목..</td>
					<td width="100" align="center">이름</td>
					<td width="150" align="center">2023.03.31</td>
					<td width="80" align="center">22</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<!-- 좌측 슬라이드 메뉴 -->
	<%@ include file="../MAIN/left_menu.jsp" %>		

	<!-- 하단 footer -->
	<%@ include file="../MAIN/footer.jsp" %>

</body>
</html>