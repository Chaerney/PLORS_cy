<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
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
							<input type="text" id="mb_id" name="mb_id" class="form-control" value="${readContentBean.mb_id }" disabled="disabled" />
						</div>
						<div class="form-group">
							<label for="nbqa_date">작성날짜</label> 
							<input type="text" id="nbqa_date" name="nbqa_date" class="form-control" value="${readContentBean.nbqa_date }" disabled="disabled" />
						</div>
						<div class="form-group">
							<label for="nbqa_title">제목</label> 
							<input type="text" id="nbqa_title" name="nbqa_title" class="form-control" value="${readContentBean.nbqa_title }" disabled="disabled" />
						</div>
						<div class="form-group">
							<label for="nbqa_content">내용</label>
							<textarea id="nbqa_content" name="nbqa_content" class="form-control" rows="10" style="resize: none" disabled="disabled">${readContentBean.nbqa_content }</textarea>
						</div>
						<div class="form-group">
							<label for="nbqa_file">첨부 이미지</label> 
							<img src="${root}upload/${readContentBean.nbqa_file}" width="100%" />
						</div>
						<div class="form-group">
							<div class="text-right">
								<a href="${root }NBQA/board?board_id=${board_id}&page=${page}" class="btn btn-primary">목록보기</a>
								<c:if test="${loginUserBean.mb_no == readContentBean.mb_no}">
									<a href="${root }NBQA/modify?board_id=${board_id}&nbqa_no=${nbqa_no}&page=${page}" class="btn btn-info">수정하기</a>
									<a href="${root }NBQA/delete?board_id=${board_id}&nbqa_no=${nbqa_no}" class="btn btn-danger">삭제하기</a>
								</c:if>
							</div>
						</div>
						<!-- 댓글 -->
						<hr />
						<div>
							<c:forEach items="${reply}" var="reply">
								<div>
									<p>${reply.mb_id}| ${reply.rp_date}</p>
									<p>${reply.rp_content }</p>
								</div>
								<p>
									<a href="">수정</a> &nbsp; <a href="">삭제</a>
								</p>
								<hr />
							</c:forEach>
							<c:if test="${board_id == 2 || board_id == 3 }">
								<form method="post" action="${root }NBQA/replyWrite">
									<div class="form-group">
										<label>작성자</label> 
										<input type="text" name="mb_id" class="form-control" value="${loginUserBean.mb_id }">
									</div>
									<div class="form-group">
										<textarea id="rp_content" name="rp_content" class="form-control" rows="3" style="resize: none"></textarea>
									</div>
									<div class="form-group">
										<input type="hidden" name="board_id" value="${board_id}">
										<input type="hidden" name="nbqa_no" value="${nbqa_no}">
										<div class="text-right">
											<button type="submit" class="btn btn-primary">댓글 작성</button>
										</div>
									</div>
								</form>
							</c:if>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>

	<!-- 좌측 슬라이드 메뉴 -->
	<%@ include file="../MAIN/left_menu.jsp"%>

	<!-- 하단 footer -->
	<%@ include file="../MAIN/footer.jsp"%>

</body>
</html>
