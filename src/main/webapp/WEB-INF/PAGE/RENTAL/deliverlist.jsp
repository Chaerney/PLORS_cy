<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath}/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${root}MYPAGE/wishorderdeliver.css" />
<style>
	.payment{
	}
</style>
<title>배송정보</title>
</head>
<body>

	<!-- 상단 header -->
	<%@ include file="../MAIN/header.jsp"%>
	
	<div class="center bg-gray">
		<div class="basket order-basket-option">
			<div class="order-select selected-option">전체</div>
			<div class="order-select">결제완료</div>
			<div class="order-select">배송중</div>
			<div class="order-select">배송완료</div>
		</div>
		<div class="basket order-basket-item">
			<div>
				<table border=0 width="100%">
					<tr>
						<td align="center" style="margin-left: 12px; width: 250px;">
							<img src="https://image.yes24.com/Goods/104141584/L" width="200"/>
						</td>
						<td align="center">
							<div align="center" style="height: 160px; width: 460px; float:left;">
								<img src="../img/payment.png" width="100" height="200" style="margin: 10px 20px 10px 10px; padding-bottom: 100px;"/>
								<img src="../img/nodelivery.png" width="160" height="200" style="margin: 10px; padding-bottom: 83px;"/>
								<img src="../img/mypage/noarrival.png" width="100" height="200" style="margin: 10px 10px 10px 20px; padding-bottom: 100px;"/>
								<div class="div-dot-option" style="width: 339px; height: 50px; position: relative; bottom: 130px; border-bottom: 10px dotted black;">
									<div class="circle-ripple" style="width: 20px; height: 20px; position: relative; top: 35px; left: -135px; background-color: black; border-radius: 50%">
										<div class="circle-ripple-blur" style="width: 20px; height: 20px; position: relative; top: 0px; left: 0px; background-color: black; border-radius: 50%"></div>
										<div class="circle-ripple-blur2" style="width: 20px; height: 20px; position: relative; top: -20px; left: 0px; background-color: black; border-radius: 50%"></div>
									</div>
									<div style="width: 20px; height: 20px; position: relative; top: 35px; left: -155px; background-color: #876b52; border-radius: 50%"></div>
									<div style="width: 20px; height: 20px; position: relative; top: 35px; left: -10px; background-color: black; border-radius: 50%"></div>
									<div style="width: 20px; height: 20px; position: relative; top: 35px; left: 140px; background-color: black; border-radius: 50%"></div>
								</div>
							</div>
						</td>
						<td align="left">
							<div align="left" style="width: 500px">
								<span style="font-size:24px;">서대문구 스마트 도서관 | Hot Dog | 1권</span>
								<br><span style="font-size:16px;">서울시 영등포구 어딘가</span>
								<br><b style="font-size: 34px;">배송 준비중</b>
							</div>
						</td>
					</tr>
				</table>
			</div>	
		</div>
		<div class="basket order-basket-item">
			<div>
				<table border=0 width="100%">
					<tr>
						<td align="center" style="margin-left: 12px; width: 250px;" >
							<img src="https://image.yes24.com/Goods/118060750/L" width="200"/>
						</td>
						<td align="center">
							<div align="center" style="height: 160px; width: 460px; float:left;">
								<img src="${root}mypage/nopayment.png" width="100" height="200" class="payment" style="margin: 10px 20px 10px 10px; padding-bottom: 100px;"/>
								<img src="${root}mypage/delivery.png" width="160" height="200" style="margin: 10px; padding-bottom: 83px;"/>
								<img src="${root}mypage/noarrival.png" width="100" height="200" style="margin: 10px 10px 10px 20px; padding-bottom: 100px;"/>
								<div class="div-dot-option" style="width: 339px; height: 50px; position: relative; bottom: 130px; border-bottom: 10px dotted black;">
									<div style="width: 20px; height: 20px; position: relative; top: 35px; left: -130px; background-color: black; border-radius: 50%"></div>
									<div class="circle-ripple" style="width: 20px; height: 20px; position: relative; top: 35px; left: 10px; background-color: black; border-radius: 50%">
										<div class="circle-ripple-blur" style="width: 20px; height: 20px; position: relative; top: 0px; left: 0px; background-color: black; border-radius: 50%"></div>
										<div class="circle-ripple-blur2" style="width: 20px; height: 20px; position: relative; top: -20px; left: 0px; background-color: black; border-radius: 50%"></div>
									</div>
									<div style="width: 20px; height: 20px; position: relative; top: 35px; left: -10px; background-color: #876b52; border-radius: 50%"></div>
									<div style="width: 20px; height: 20px; position: relative; top: 35px; left: 140px; background-color: black; border-radius: 50%"></div>
								</div>
							</div>
						</td>
						<td align="left">
							<div align="left" style="width: 500px">
								<span style="font-size:24px;">서대문구 스마트 도서관 | 잠이 솔솔 핫초코 | 1권</span>
								<br><span style="font-size:16px;">서울시 광진구 어딘가</span>
								<br><b style="font-size: 34px;">배송 진행중</b>
							</div>
						</td>
					</tr>
				</table>
			</div>	
		</div>
		<div class="basket order-basket-item">
			<div>
				<table border=0 width="100%">
					<tr>
						<td align="center" style="margin-left: 12px; width: 250px;" >
							<img src="https://image.yes24.com/Goods/116991024/M" width="200"/>
						</td>
						<td align="center">
							<div align="center" style="height: 160px; width: 460px; float:left;">
								<img src="${root}mypage/nopayment.png" width="100" height="200" style="margin: 10px 20px 10px 10px; padding-bottom: 100px;"/>
								<img src="${root}mypage/nodelivery.png" width="160" height="200" style="margin: 10px; padding-bottom: 83px;"/>
								<img src="${root}mypage/arrival.png" width="100" height="200" style="margin: 10px 10px 10px 20px; padding-bottom: 100px;"/>
								<div class="div-dot-option" style="width: 339px; height: 50px; position: relative; bottom: 130px; border-bottom: 10px dotted black;">
									<div class="circle-ripple" style="width: 20px; height: 20px; position: relative; top: 35px; left: -135px; background-color: black; border-radius: 50%">
										<div class="circle-ripple-blur" style="width: 20px; height: 20px; position: relative; top: 0px; left: 0px; background-color: black; border-radius: 50%"></div>
										<div class="circle-ripple-blur2" style="width: 20px; height: 20px; position: relative; top: -20px; left: 0px; background-color: black; border-radius: 50%"></div>
									</div>
									<div style="width: 20px; height: 20px; position: relative; top: 35px; left: -155px; background-color: #876b52; border-radius: 50%"></div>
									<div style="width: 20px; height: 20px; position: relative; top: 35px; left: -10px; background-color: black; border-radius: 50%"></div>
									<div style="width: 20px; height: 20px; position: relative; top: 35px; left: 140px; background-color: black; border-radius: 50%"></div>
								</div>
							</div>
						</td>
						<td align="left">
							<div align="left" style="width: 500px">
								<span style="font-size:24px;">종로 도서관 | 기후위기인간 | 1권</span>
								<br><span style="font-size:16px;">서울시 양천구 어딘가</span>
								<br><b style="font-size: 34px;">배송 완료</b>
							</div>
						</td>
					</tr>
				</table>
			</div>	
		</div>
	</div>
	
	<!-- 좌측 슬라이드 메뉴 -->
	<%@ include file="../MAIN/left_menu.jsp"%>

	<!-- 하단 footer -->
	<%@ include file="../MAIN/footer.jsp"%>
</body>
</html>