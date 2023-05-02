<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
</head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
 
$(function(){
 
    //댓글 수정 버튼
    $("#btn_reply_Update").click(function(){
    if(confirm("수정 하시겠습니까?")){
        
    //수정하는데 필요한 정보들, 댓글 번호, 글 내용, 작성자 아이디, 게시글 번호를 변수에 저장한다.
        var rno = $("#rno").val();
        var r_content = $("textarea#r_content").text();
        var user_id = $("#user_id").val();
        var member_bno = $("#member_bno").val();
        
    //게시글 세부 페이지로 포워딩을 하기위해 페이지 관련 값들을 변수에 저장해서 컨트롤러로 보낸다.
        var curPage = $("#curPage").val();
        var search_option = $("#search_option").val();
        var keyword = $("#keyword").val();
        
        //페이지 관련 값들과 댓글 수정에 필요한 값들을 url로 전송한다.
        document.form1.action="reply_update.do?rno="+rno+"&r_content="+encodeURI(r_content)+"&user_id="+user_id+"&member_bno="+member_bno+"&curPage="+curPage+"&search_option="+search_option+"&keyword="+keyword;
        document.form1.submit();
        
        
        alert("댓글이 수정되었습니다.")
                }
        });
 
    
    //댓글 삭제 버튼
    $("#btn_reply_Delete").click(function(){
        
        if(confirm("삭제 하시겠습니까?")){
        
        //댓글 삭제를 하기위해 댓글 번호, 글 번호, 댓글 내용, 그리고 게시글 세부 페이지로 포워딩 하기 위해 페이지 관련 값들을 변수에 저장한다.
            var rno = $("#rno").val();
            var member_bno = $("#member_bno").val();
            var content = $("textarea#r_content").text();
            var curPage = $("#curPage").val();
            var search_option = $("#search_option").val();
            var keyword = $("#keyword").val();
            
            
            //url로 삭제에 필요한 변수들을 보낸다.
            document.form1.action="reply_delete.do?rno="+rno+"&member_bno="+member_bno+"&curPage="+curPage+"&search_option="+search_option+"&keyword="+keyword;
            
            document.form1.submit();
            
            alert("댓글이 삭제되었습니다.")
            
        }
    });
});
 
</script>
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
						<input type="text" id="nbqa_date" name="nbqa_date" class="form-control" value="${readContentBean.nbqa_date }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="nbqa_title">제목</label>
						<input type="text" id="nbqa_title" name="nbqa_title" class="form-control" value="${readContentBean.nbqa_title }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="nbqa_content">내용</label>
						<textarea id="nbqa_content" name="nbqa_content" class="form-control" rows="10" style="resize:none" disabled="disabled">${readContentBean.nbqa_content }</textarea>
					</div>
					<div class="form-group">
						<label for="nbqa_file">첨부 이미지</label>
						<img src="${root}upload/${readContentBean.nbqa_file}" width="100%"/>						
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
				</div>
				<!-- 댓글작성 -->
				<%-- <div class="card-body">
					<div class="form-group">
						<label>댓글 작성</label>
						<hr />
						<form:form method="post" >
						<form:label path="mb_id">작성자 : ${loginUserBean.mb_id}</form:label>
						<form:textarea path="rp_content" class="form-control" rows="3" style="resize:none"/>
						</form:form>
					</div>
				</div> --%>
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
