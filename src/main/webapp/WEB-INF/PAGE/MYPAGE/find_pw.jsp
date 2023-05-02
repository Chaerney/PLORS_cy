<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/all.css" />
<style type="text/css">
*{
	margin: 0;
	padding: 0;		
}
#container {
  	margin: 0 auto; /* 가로로 중앙에 배치 */ 
  	height: 1100px;
}
#content {
	top: 130px;
    position: absolute;
    left: 50%;
    transform: translate(-50%);
    width: 460px;
}

/* 입력폼 */
h3 {
    margin: 19px 0 8px;
    font-size: 14px;
    font-weight: 700;
}

.box {
    display: block;
    width: 100%;
    height: 51px;
    border: solid 1px #dadada;
    padding: 10px 14px 10px 14px;
    box-sizing: border-box;
    background: #fff;
    position: relative;
}
.int {
    /* display: block; */
    position: relative;
    /* width: 100%; */
    width: 100%;
    height: 29px;
    border: none;
    background: #fff;
    font-size: 15px;
}



input {
    font-family: Dotum,'돋움',Helvetica,sans-serif;    
}
.newaccount{
   text-align:center;
   font-size:20px;
}
.input-group-append{
    display: inline-block;
    float: right;
}
.box.int_id {
    /* padding-right: 110px; */
}
.box.int_pass {
    padding-right: 40px;
}
.box.int_pass_check {
    padding-right: 40px;
}
#bir_wrap {
    display: table;
    width: 100%;
}
#bir_yy {
    display: table-cell;
    width: 147px;
    
}
#bir_mm {
    display: table-cell;
    width: 147px;
    vertical-align: middle;
}
#bir_dd {
    display: table-cell;
    width: 147px;
}
#bir_mm, #bir_dd {
    padding-left: 10px;
}
select {
    width: 100%;
    height: 29px;
    font-size: 15px;
    background: #fff;
    background-size: 20px 8px;
    -webkit-appearance: none;
    display: inline-block;
    text-align: start;
    border: none;
    cursor: default;
    font-family: Dotum,'돋움',Helvetica,sans-serif;
}
.btn_area {
    margin: 30px 0 91px;
}
#btnJoin {
    width: 100%;
    padding: 21px 0 17px;
    border: 0;
    cursor: pointer;
    color: #fff;
    background-color: #d6ddf9;
    font-size: 20px;
    font-weight: 400;
    font-family: Dotum,'돋움',Helvetica,sans-serif;
}

</style>
<title>PLORS_비밀번호찾기</title>
</head>
<body>

	<!-- 상단 header -->
	<%@ include file="../MAIN/header.jsp"%>

	<!-- wrapper -->
	<div id="container">
		<!-- content-->
		<div id="content">
 			<h3 class="newaccount">
                        <label for="newaccount">비밀번호 찾기</label>
                    </h3>
				<form:form action="${root }MYPAGE/find_pw_pro" method="Get" modelAttribute="findUserBean">
				<div>
					<h3 class="join_title">
						<form:label path="mb_id">아이디</form:label>
					</h3>
					<span class="box int_id"> 
					<form:input path="mb_id" class="int" maxlength="20" />
					</span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="mobile">휴대전화</label>
					</h3>
					<span class="box int_mobile"> 
					<form:input path="mb_tel" class="int" maxlength="16" placeholder="전화번호 입력" />
					</span>
				</div>

				<div class="btn_area">
					<form:button id="btnJoin">비밀번호 찾기</form:button>
				</div>
			</form:form>

		</div>
	</div>
	<!-- 좌측 슬라이드 메뉴 -->
	<%@ include file="../MAIN/left_menu.jsp"%>

	<!-- 하단 footer -->
	<%@ include file="../MAIN/footer.jsp"%>

</body>
</html>