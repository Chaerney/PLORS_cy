<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/all.css" />
<style type="text/css">
@charset "utf-8";
/* 레이아웃 틀 */
*{
	margin: 0;
	padding: 0;	
	
}
#container {
  	margin: 0 auto; /* 가로로 중앙에 배치 */ 
  	min-height: 899px;
}
#content {
	top: 300px;
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
    display: block;
    position: relative;
    width: 100%;
    height: 29px;
    border: none;
    background: #fff;
    font-size: 15px;
}
input {
    font-family: Dotum,'돋움',Helvetica,sans-serif;    
}
.box.int_id {
    padding-right: 110px;
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
<title>PLORS_비밀번호 찾기</title>
</head>
<body>
<!-- 상단 header -->
	<%@ include file="../MAIN/header.jsp"%>

        <!-- wrapper -->
        <div id="container">

            <!-- content-->
            <div id="content">
            <div>
                    <h3 class="join_title">
                        <label for="id">아이디</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" class="int" maxlength="20">
                       
                    </span>
                </div>
                <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력">
                    </span> 
                </div>
	        <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="button" id="btnJoin">
                        <span>PASSWORD 찾기</span>
                    </button>
                </div>
            </div> 
            <!-- content-->
        </div> 
        <!-- 좌측 슬라이드 메뉴 -->
	<%@ include file="../MAIN/left_menu.jsp"%>
	<!-- 하단 footer -->
	<%@ include file="../MAIN/footer.jsp" %>
	
        
    </body>
</html>