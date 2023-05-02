<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath}/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${root}MYPAGE/wishorderdeliver.css" />
<title>대여내역</title>
</head>
<body>

	<!-- 상단 header -->
	<%@ include file="../MAIN/header.jsp"%>

	<div class="center bg-gray">
		<div class="basket order-basket-option" style="margin-top: 100px">
			<div class="order-select selected-option">전체</div>
			<div class="order-select">결제완료</div>
			<div class="order-select">배송완료</div>
			<div class="order-select">반납완료</div>
		</div>
		<div class="basket order-basket-item">
			<div>
				<table border=0>
					<tr>
						<td colspan="2" align="left" style="font-size: 24px; margin-left: 12px;"><b>결제완료</b></td>
					</tr>
					<tr>
						<td>
							<img src="https://image.yes24.com/Goods/104141584/L" width="90"/>
						</td>
						<td width="100%" align="left">
							<b style="margin-left: 12px;">2023.01.11 결제</b>
							<br><span style="margin-left: 12px;">서대문구 스마트 도서관 | Hot Dog | 1권</span>
							<br><span style="margin-left: 12px;">배송비 : 2,500원</span>
							<br><span style="margin-left: 12px;">연체료 : 0원</span>
						</td>
					</tr>
				</table>
			</div>	
		</div>
		<div class="basket order-basket-item">
			<div>
				<table border=0>
					<tr>
						<td colspan="2" align="left" style="font-size: 24px; margin-left: 12px;"><b>배송완료</b></td>
					</tr>
					<tr>
						<td>
							<img src="https://image.yes24.com/Goods/118060750/L" width="90"/>
						</td>
						<td width="100%" align="left">
							<b style="margin-left: 12px;">2023.01.01 결제</b>
							<br><span style="margin-left: 12px;">서대문구 스마트 도서관 | 잠이 솔솔 핫초코 | 1권</span>
							<br><span style="margin-left: 12px;">배송비 : 2,500원</span>
							<br><span style="margin-left: 12px;">연체료 : 0원</span>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="basket order-basket-item">
			<div>
				<table border=0>
					<tr>
						<td colspan="2" align="left" style="font-size: 24px; margin-left: 12px;"><b>반납완료</b></td>
					</tr>
					<tr>
						<td>
							<img src="https://image.yes24.com/Goods/116991024/M" width="90"/>
						</td>
						<td width="100%" align="left">
							<b style="margin-left: 12px;">2022.12.10 결제</b>
							<br><b style="margin-left: 12px;">2022.12.24 연체</b>
							<br><b style="margin-left: 12px;">2022.12.30 반납</b>
							<br><span style="margin-left: 12px;">종로 도서관 | 기후위기인간 | 1권</span>
							<br><span style="margin-left: 12px;">배송비 : 2,500원</span>
							<br><span style="margin-left: 12px;">연체료 : 1,000원</span>
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