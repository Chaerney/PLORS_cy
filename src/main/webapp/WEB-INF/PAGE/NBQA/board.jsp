<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath}/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<!-- <link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet"> -->
<link rel="stylesheet" href="../css/all.css" />
<style type="text/css">
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;	
}

body, html {
	height: 100%;
}
#container {
	width: 70%;
  	margin: 0 auto; /* 가로로 중앙에 배치 */
  	/* top: 130px;  */
  	padding-top: 8%;
  	height: 100%;  /* 추후 삭제 */
  	position: relative;
}

#write {
    text-align: right;
}

/* Bootstrap 수정 */

 .table > thead {
   background-color: #cde2f2;
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
/* #page-box {
	display: flex;
	justify-content: space-around;
	flex-wrap: wrap;
	padding-bottom: 2%;
}
.page {	
	display: inline-block;
	border: 2px solid #e5c49c;
	border-radius: 8px;
	width: 20%;
	height: 50px;
	text-align: center;
	line-height: 50px;	

} */


</style>
<title>PLORS</title>
</head>
<body>

	<!-- 상단 header -->
	<%@ include file="../MAIN/header.jsp"%>

	
	<!-- 공지사항 list -->
	<div id="container">
		
		<!-- 게시판 상단 메뉴 -->
		<%@ include file="../NBQA/board_top_menu.jsp"%>
		
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
			
			<!-- 공지 -->
			<tbody>
				<c:forEach var="obj" items="${contentList }">
					<tr height="40">
						<td width="50" align="left">${obj.nbqa_no }</td>
						<td width="700" align="left"><a href="${root }NBQA/read?board_id=${board_id}&nbqa_no=${obj.nbqa_no}&page=${page}">${obj.nbqa_title }</a></td>
						<td width="100" align="center">${obj.mb_id }</td>
						<td width="150" align="center">${obj.nbqa_date }</td>
						<td width="80" align="center">${obj.nbqa_click }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<div class="d-none d-md-block">
				<ul class="pagination justify-content-center">
					<c:choose>
						<c:when test="${pageBean.prevPage <= 0 }">
							<!-- 이전 페이지가 1이하일 땐 비활성화 -->
							<li class="page-item disabled">
								<a href="#" class="page-link">이전</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a href="${root }NBQA/board?board_id=${board_id}&page=${pageBean.prevPage}" class="page-link">이전</a>
							</li>
						</c:otherwise>
					</c:choose>
					<c:forEach var="idx" begin="${pageBean.min }" end="${pageBean.max }">
						<c:choose>
							<c:when test="${idx==pageBean.currentPage }">
								<li class="page-item active">
									<a href="${root }NBQA/board?board_id=${board_id}&page=${idx}" class="page-link">${idx }</a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="page-item">
									<a href="${root }NBQA/board?board_id=${board_id}&page=${idx}" class="page-link">${idx }</a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${pageBean.max >= pageBean.pageCnt }">
							<!-- 이전 페이지가 1이하일 땐 비활성화 -->
							<li class="page-item disabled">
								<a href="#" class="page-link">다음</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a href="${root }NBQA/board?board_id=${board_id}&page=${pageBean.nextPage}" class="page-link">다음</a>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		
		<div id="write" class="text-right">
			<c:if test="${board_id ==1 && loginUserBean.mb_ad ==1 && loginUserBean.userLogin == true  }">
				<a href="${root }NBQA/write?board_id=${board_id}" class="btn btn-primary">글쓰기</a>
			</c:if>
			<c:if test="${board_id ==2 || board_id ==3}">
				<a href="${root }NBQA/write?board_id=${board_id}" class="btn btn-primary">글쓰기</a>
			</c:if>
		</div>
		
		
	</div>
	
	<!-- 좌측 슬라이드 메뉴 -->
	<%@ include file="../MAIN/left_menu.jsp" %>
	
	<!-- 하단 footer -->
	<%@ include file="../MAIN/footer.jsp" %>
</body>
</html>