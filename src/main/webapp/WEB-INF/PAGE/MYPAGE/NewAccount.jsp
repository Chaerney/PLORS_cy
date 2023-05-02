<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/all.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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

/* 에러메세지 */
.error_next_box {
    margin-top: 9px;
    font-size: 12px;
    color: red;    
    display: none;
}
#alertTxt {
    position: absolute;
    top: 19px;
    right: 38px;
    font-size: 12px;
    color: red;
    display: none;
}

/* 버튼 */
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
<script>
 function checkUserIdExist(){
	  //변수선언 : 사용자가 입력한 id값 가져오기
	 var mb_id=$("#mb_id").val();
	 //입력값 요청 경고
	 if(mb_id.length==0){
		 alert('아이디를 입력해주세요');
		 return;
	 }
 	 $.ajax({
 		 url:'${root}MYPAGE/checkUserIdExist/'+mb_id,
 		 type:'get',
 		 dataType:'text',
 		 success:function(result){
 			 if(result.trim()=='true'){
 				 alert('사용할 수 있는 아이디입니다');
 				 $("#userIdExist").val('true');
 			 }else{
 				 alert('사용할 수 없는 아이디입니다');
				 $("#userIdExist").val('false');
 			 }//if
 		 },//function
 		 error: function(error){
 			 alert(error);
 		 }
 	 }); //ajax
 }//checkUserIdExist
 
 //사용자가 아이디란에 입력하면 무조건 false
 function resetUserIdExist(){
	 $("#userIdExist").val('false');
 }
</script>
<title>PLORS_회원가입</title>
</head>
<body>
<!-- 상단 header -->
	<%@ include file="../MAIN/header.jsp"%>
   <!-- container -->
        <div id="container">
            <!-- content-->
            <div id="content">
            <h3 class="newaccount">
                        <label for="newaccount">회원가입</label>
                    </h3>
                <!-- ID -->
                    <form:form action="${root }MYPAGE/NewAccount_pro" method="post" modelAttribute="joinUserBean">
                	
                <div>
                    <h3 class="join_title">
                        <form:label path="mb_id">아이디</form:label>
                    </h3>
                    <div class="box int_id">
                        <form:input path="mb_id" class="int" maxlength="20" onkeypress="resetUserIdExist()" value="aaaaa"/>
                       <div class="input-group-append">
                           <button type="button" class="btn-primary" style="background-color:#d6ddf9; border-color:#d6ddf9; margin:20px;" onclick='checkUserIdExist()' >중복확인</button>
                        </div>
                    </div>
                     <form:errors path="mb_id" style="color:red"/>
                    
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><form:label path="mb_pw">비밀번호(영어,숫자,특수문자)</form:label></h3>
                    <span class="box int_pass">
                       <form:password path="mb_pw" class="int" maxlength="20" value="Aaaaaaaa1!"/>
                    </span>
                     <form:errors path="mb_pw" style="color:red"/>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><form:label path="mb_pw2">비밀번호 재확인</form:label></h3>
                    <span class="box int_pass_check">
                         <form:password path="mb_pw2" class="int" maxlength="20" value="Aaaaaaaa1!"/>
                    </span>
                     <form:errors path="mb_pw2" style="color:red"/>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><form:label path="mb_name">이름</form:label></h3>
                  <form:hidden path="userIdExist"/>
                    <span class="box int_name">
                       <form:input path="mb_name" class="int" maxlength="20"/>
                    </span>
                    <form:errors path="mb_name" style="color:red"/>
                </div>

                <!-- BIRTH -->
                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                    <div id="bir_wrap">
                        

                       
                      <form:input path="mb_birthday" type="date" value="년-월-일" min="1900-01-01" max="2999-01-01" style="width:460px; border: solid 1px #dadada; font-size:20px; text-align:center; align:center"/>
                    </div>
                </div>
                <!-- GENDER -->
                <div>
                    <h3 class="join_title"><label for="gender">성별</label></h3>
                    <span class="box gender_code">
                        <form:select path="mb_gender" class="sel">
                            <option>성별</option>
                            <option value="M">남자</option>
                            <option value="F">여자</option>
                        </form:select>                            
                    </span>
                </div>

                <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <form:input path="mb_tel" class="int" maxlength="16" placeholder="전화번호 입력"/>
                    </span>
                </div>
                
                <div>
                    <h3 class="join_title">
                        <label for="addr">주소</label>
                    </h3>
                    <span class="box int_addr">
                        <form:input path="mb_addr" class="int" maxlength="20"/>
                    </span>
                </div>
                <div>
                	<h3 class="join_title">
                		<lable for="master">사용자 구분</lable>
                	</h3>
                	<span class="box int_master">
                		<form:select path="mb_ad" class="int">
                			<form:option value='1' style="text-align:center;">관리자</form:option>
                			<form:option value='2' style="text-align:center;">사용자</form:option>
                		</form:select>
                	</span>
                </div>
				
				<!-- JOIN BTN-->
                <div class="btn_area">
                    <form:button id="btnJoin">가입하기</form:button>
                </div>
                </form:form>
         </div> 
        </div> 
    <!-- 좌측 슬라이드 메뉴 -->
	<%@ include file="../MAIN/left_menu.jsp"%>

	<%@ include file="../MAIN/footer.jsp" %>
	<!-- 하단 footer -->
</body>

</html>