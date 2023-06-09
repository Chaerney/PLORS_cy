<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/all.css" />
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

#container {
	width: 70%;
	margin: 0 auto; /* 가로로 중앙에 배치 */
	min-height: 900px;
	top: 110px;
	position: relative;
}

.show-account-info {
}

#tab2 {
	width: 45%;
	border:2px solid lightgray;
	border-radius : 10px;
	background-color: #eeeeee;
	border-radius: 20px;
}

td {
	text-align: center;
	opacity: 0.8;
	padding: 12px;
}

#prevMonthBtn, #nextMonthBtn {
	border-radius: 100%;
	border-color: #fff8f2;
	width: 30px;
	height: 30px;
	background-color: none;
	color: black;
	font-weight: bold;
}

#btn2 {
	font-family: 'GmarketSansMedium';
	font-size: 20px;
	border-radius: 10px;
	border-color: #fff8f2;
	width: 150px;
	height: 50px;
	background-color: none;
	color: black;
	font-weight: bold;
}

.margin_cls {
	margin: 10px 0;
}

table{
	margin-bottom: 60px;
}

</style>
	<script>
		$(document).ready(function() {
			var months = ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"];
			var currentMonth = 3; // April (0-based index)
			var currentYear = new Date().getFullYear();

			function updateTitleAndDateRange() {
				$("#monthTitle").text(months[currentMonth]);
				var startDate = new Date(currentYear, currentMonth, 1).toLocaleDateString();
				var endDate = new Date(currentYear, currentMonth + 1, 0).toLocaleDateString();
				$("#dateRange").text(startDate + " - " + endDate);
			}
			
			$("#prevMonthBtn").click(function() {
			    if (currentMonth > 0) {
			        currentMonth--;
			    } else {
			        currentMonth = 11; // December
			        currentYear--;
			    }
			    updateTitleAndDateRange();
			    getChargeHistory(currentMonth, currentYear);
			});

			$("#nextMonthBtn").click(function() {
			    if (currentMonth < 11) {
			        currentMonth++;
			    } else {
			        currentMonth = 0; // January
			        currentYear++;
			    }
			    updateTitleAndDateRange();
			    getChargeHistory(currentMonth, currentYear);
			});

			updateTitleAndDateRange();
		});
		
		function getChargeHistory(month, year) {
		    $.ajax({
		        url: "/chargeHistory",
		        type: "GET",
		        data: {
		            month: month,
		            year: year
		        },
		        success: function(data) {
		            // 서버로부터 받아온 데이터를 화면에 뿌려줌
		        },
		        error: function() {
		            alert("데이터를 불러오는데 실패했습니다.");
		        }
		    });
		}
	</script>
  
<title>PLORS_포인트 내역</title>
</head>
<body>

<!-- 상단 header -->
	<%@ include file="../MAIN/header.jsp"%>

    <center id="container">
	    <h4>포인트 내역 페이지</h4>
	    
	    <div>
	        <p></p>
	        <h1>보유 포인트 : <fmt:formatNumber value="${ch.charge_amount}" pattern="#,###원" /></h1>
	    </div>
	    <p />
	    <div class="show-account-info">
	       <table height="100" width="900">
		      <tr align="center">
		        <td><input id="prevMonthBtn" type="button" value="<"></td>
		        <td>
			        <h2 id="monthTitle"> </h2><br>
			        <span id="dateRange"></span>
		        </td>
		        <td><input id="nextMonthBtn" type="button" value=">"></td>
		      </tr>
		    </table>
	        
	        <table id="tab2" height="80" width="900" >
	           <tr >
	            <td width="250" height="40"><strong>총 적립 금액</strong></td>
	            <td>|</td>
	            <td width="600" style="text-align: right;"><strong><fmt:formatNumber value="${ch.charge_amount}" pattern="#,###원" /></strong></td>
	           </tr>
	           <tr >
	            <td width="250" height="40">유저 아이디</td>
	            <td>|</td>
	            <td width="600" style="text-align: right;">${ch.user_id}</td>
	           </tr>
	           <tr >
	            <td width="250" height="40">결제 방법</td>
	            <td>|</td>
	            <td width="600" style="text-align: right;">${ch.payment_tool} 종류 </td>
	           </tr>
	           <tr >
	           <tr>
	            <td width="250" height="40">최근 결제일</td>
	            <td>|</td>
	            <td width="600" style="text-align: right;">${ch.chargeDateStr}</td>
	           </tr>
	           <tr>
	            <td width="250" height="40">이벤트/기타</td>
	            <td>|</td>
	            <td width="600" style="text-align: right;">현재 진행되는 이벤트가 없습니다.</td>
	           </tr>
	          
	        </table>
	        <p/>
	            <input id="btn2" type="button" value="전  체" style="background-color: rgb(250, 198, 54); color:rgb(0, 0, 0);">&nbsp;
	            <input id="btn2" type="button" value="충  전" onclick="location.href='./ChargePoint'">&nbsp;
	            <input id="btn2" type="button" value="기  부" onclick="location.href='./CharityPage'">
	        <p/>
	        <br>
	       <h3 class="margin_cls">3월 포인트 내역이 없습니다.</h3>
	        <br>
	        <input  type="button" value="3월 내역 보기"> 
	    </div>
</center>
    <!-- 좌측 슬라이드 메뉴 -->
	<%@ include file="../MAIN/left_menu.jsp"%>

	<!-- 하단 footer -->
	<%@ include file="../MAIN/footer.jsp"%>
</body>
</html>