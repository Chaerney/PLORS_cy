<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>계좌 등록 페이지</title>
	<!-- jQuery 라이브러리 추가 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- SweetAlert2 라이브러리 추가 -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<style>
	@font-face {
	    font-family: 'GmarketSansMedium';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	body{
		font-family: 'GmarketSansMedium';
		background-color:lightgray;
	}
	
	center{
		margin-top:100px;		
		height: 250px;
	}
	form{
		margin-top: 40px;
		width: 800px;
		height: 200px;
		background-size: cover;
		color:black;
	}
	input{
		width: 240px;
		height:60px;
		font-size: 30px;
	}
	table{
		background-color:white;
		padding : 20px;
	}
	tr,td{
		font-weight:bold;
		padding :4px;
		border : 3px solid lightgray;
		cell-spacing:none;
		border-radius:5px;
	}
	select{
		font-size:60px;
		border:none;
	}
	
	button{
		font-family: 'GmarketSansMedium';
		font-size : 20px;
		width:200px;
		height:60px;
	}
	
	hr{
		width:81%;
		height:2px;
		background-color:#eeeeee;
	}
	
	.section{
		width: 800px;
		height: 530px;
		background-color:white;
		border-radius: 20px;
	}
	
	span{
		color:red;
	}
</style>
</head>
<body>
	<center>
	<div class="section">
		<h2>계좌 등록 페이지</h2>
		<hr>
		
			<form action="account_enroll" method="post" onsubmit="showSuccessAlert(event)">
			<table>
				<tr>
					<td>은행 이름</td>
					<td>
					<select name="bankName">
						<option value="신한은행">신한은행</option>
						<option value="국민은행">국민은행</option>
						<option value="하나은행">하나은행</option>
						<option value="한국은행">한국은행</option>
						<option value="삼성카드">삼성카드</option>
					</select>
					
				</tr>
				<tr>
					<td>계좌 번호</td>
					<td><input type="text" name="accountNumber"></td>
				</tr>
			</table>
			<button type="submit">계좌 등록</button>
			</form>
		</div>
	</center>
	<script>
		// 2차 비밀번호 등록 완료 알림창 띄우는 함수
		function showSuccessAlert(event) {
			event.preventDefault(); // 기본 동작 막기
			Swal.fire({
				icon: 'success',
				title: '계좌 등록',
				text: '계좌등록이 성공적으로 완료되었습니다.',
				onClose: () => {
					// 알림창 닫힐 때 폼 submit
					event.target.submit();
				}
			});
		}
	</script>
</body>
</html>
