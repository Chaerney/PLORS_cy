<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PLORS_글쓰기</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;	
}
#container {
	padding-top: 11%;
}

</style>
</head>
<body>


	<!-- 상단 header -->
	<%@ include file="../MAIN/header.jsp"%>

<div id="container" >
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form:form action="${root }NBQA/write_pro" method="post" modelAttribute="writeContentBean" enctype="multipart/form-data">
					<form:hidden path="nbqa_board_no"/>
					<div class="form-group">
						<form:label path="nbqa_title">제목</form:label>
						<form:input path="nbqa_title" class="form-control"/>
						<form:errors path="nbqa_title" class="form-control" style='color:red'/>
					</div>
					<div class="form-group">
						<form:label path="nbqa_content">내용</form:label>
						<form:textarea path="nbqa_content" class="form-control" rows="10" style="resize:none"/>
						<form:errors path="nbqa_content" class="form-control" style='color:red'/>
					</div>
					<div class="form-group">
						<form:label path="upload_file">첨부 이미지</form:label>
						<form:input type="file" path="upload_file" class="form-control" accept="image/*"/>
					</div>
					<div class="form-group">
						<div class="text-right">
							<form:button class="btn btn-primary">작성하기</form:button>
						</div>
					</div>
					
					</form:form>
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
