<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PLORS</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<style type="text/css">
.container {
	padding-top: 130px;
}
</style>
</head>
<body>

	<!-- 상단 header -->
	<%@ include file="../MAIN/header.jsp"%>

<div class="container">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<div class="form-group">
						<label for="mb_name">작성자</label>
						<input type="text" id="mb_id" name="mb_id" class="form-control" value="${readContentBean.mb_id }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="nbqa_date">작성날짜</label>
						<input type="text" id="ap_date" name="ap_date" class="form-control" value="${readContentBean.ap_date }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="nbqa_title">ISBN</label>
						<input type="text" id="ap_isbn" name="ap_isbn" class="form-control" value="${readContentBean.ap_isbn }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="nbqa_content">희망 도서관</label>
						<input type="text" id="lb_name" name="lb_name" class="form-control" value="${readContentBean.lb_name }" disabled="disabled"/>
					</div>
					
					<div class="form-group">
						<div class="text-right">
							<a href="${root }NBQA/application_list_admin?page=${page}" class="btn btn-primary">목록보기</a>
								<%-- <a href="${root }NBQA/modify?ap_no=${ap_no}&page=${page}" class="btn btn-info">수정하기</a> --%>
								<a href="${root }NBQA/application_delete?ap_no=${ap_no}" class="btn btn-danger">삭제하기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>


	<!-- 좌측 슬라이드 메뉴 -->
	<%@ include file="../MAIN/left_menu.jsp" %>

	<!-- 하단 footer -->
	<%@ include file="../MAIN/footer.jsp" %>

</body>
</html>
