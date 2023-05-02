<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath}/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${root}MYPAGE/wishorderdeliver.css" />
<title>장바구니</title>
</head>
<body>

	<!-- 상단 header -->
	<%@ include file="../MAIN/header.jsp"%>

	<div class="center bg-gray">
		<div class="basket basket-item" style="margin-top: 100px">
			<div align="left" class="basket-group">
				<input type="checkbox" id="allCheck"/>
				<label for="allCheck">전체선택</label>
				<button style='float: right; height: 28px'>X선택삭제</button>
			</div>
		</div>
		<div class="basket basket-order">
			<span class="whitetext">전체 n건 주문하기</span>
		</div>
		<div class="basket basket-item">
			<div align="left" class="basket-group">
				<input type="checkbox" id="groupCheck"/>
				<label for="groupCheck">서대문구 스마트 도서관</label>
			</div>
			<hr>
			<div>
				<table border=0>
					<tr>
						<td rowspan="4" width="5%">
							<input type="checkbox" id="aloneCheck"/>
						</td>
						<td rowspan="4">
							<img src="https://image.yes24.com/Goods/104141584/L" width="200"/>
						</td>
						<td width="75%"><b style="font-size: 24px">Hot Dog</b></td>
					</tr>
					<tr>
						<td><span>배송비 : 2,500</span></td>
					</tr>
					<tr>
						<td><span>Doug Salati</span></td>
					</tr>
					<tr>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="numbers" value="1" style="text-align: center"/>
						</td>
					</tr>
				</table>
			</div>	
			<hr id="among-items-hr">
			<div>
				<table border=0>
					<tr>
						<td rowspan="4" width="5%">
							<input type="checkbox" id="aloneCheck"/>
						</td>
						<td rowspan="4">
							<img src="https://image.yes24.com/Goods/118060750/L" width="200"/>
						</td>
						<td width="75%"><b style="font-size: 24px">잠이 솔솔 핫초코</b></td>
					</tr>
					<tr>
						<td><span>양선</span></td>
					</tr>
					<tr>
						<td><span>배송비 : 2,500</span></td>
					</tr>
					<tr>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="numbers" value="1" style="text-align: center"/>
						</td>
					</tr>
				</table>
			</div>
			<hr>
			총 배송비 : 5,000원<br>
		</div>
		<div class="basket basket-order">
			<span class="whitetext">서대문구 스마트 도서관 2건 주문하기</span>
		</div>
		<div class="basket basket-item">
			<div align="left" class="basket-group">
				<input type="checkbox" id="groupCheck"/>
				<label for="groupCheck">종로 도서관</label>
			</div>
			<hr>
			<div>
				<table border=0>
					<tr>
						<td rowspan="4" width="5%">
							<input type="checkbox" id="aloneCheck"/>
						</td>
						<td rowspan="4">
							<img src="https://image.yes24.com/Goods/116991024/M" width="200"/>
						</td>
						<td width="75%"><b style="font-size: 24px">기후위기인간</b></td>
					</tr>
					<tr>
						<td><span>구희</span></td>
					</tr>
					<tr>
						<td><span>배송비 : 2,500</span></td>
					</tr>
					<tr>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="numbers" value="1" style="text-align: center"/>
						</td>
					</tr>
				</table>
			</div>
			<hr>
			총 배송비 : 2,500원<br>
		</div>
		<div class="basket basket-order">
			<span class="whitetext">종로 도서관 1건 주문하기</span>
		</div>
	</div>
	
	<!-- 좌측 슬라이드 메뉴 -->
	<%@ include file="../MAIN/left_menu.jsp"%>

	<!-- 하단 footer -->
	<%@ include file="../MAIN/footer.jsp"%>
</body>
</html>