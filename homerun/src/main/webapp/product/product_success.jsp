<%@page import="java.util.Random"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="data.dao.ProductDao"%>
<%@ page import="java.util.List"%>
<%@ page import="data.dto.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>HOMERUN | PRODUCT_SUCCESS</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href="../assets/css/index.css" rel="stylesheet">
</head>

<style>
#successlogo {
	width: 350px;
	height: 350px;
}

div {
	text-align: center;
}

#thanksmsg {
	font-size: 50px;
}

table {
	border-collapse: collapse;
	border: 1px solid black;
}

td {
	border: 1px solid black;
	padding: 5px;
}

#tables {
	text-aling: center;
}

.btn1 {
	left: 40%;
	transform: translateX(-38%);
	margin-bottom: 20px;
	margin-right: 10px;
	width: 100px;
	height: 30px;
	color: white;
	font-weight: bold;
	border: none;
	cursor: pointer;
	background-color: #0b214e;
}

.btn2 {
	left: 40%;
	transform: translateX(-38%);
	margin-bottom: 20px;
	width: 100px;
	height: 30px;
	color: white;
	font-weight: bold;
	border: none;
	cursor: pointer;
	background-color: #0b214e;
}

#successdiv{
margin-top:50px;
}
</style>


	
<body style="overflow-x: hidden;">
	<%
	String mainPage = "../layout/main.jsp";

	// url?? ????? main???? ???? ???????????? ???
	if (request.getParameter("main") != null) {
		mainPage = request.getParameter("main");
	}
	String root = request.getContextPath();
	%>
	<header class="main_title">
		<jsp:include page="../layout/title.jsp" />
	</header>
	<div class="main_nav">
		<jsp:include page="../layout/nav.jsp" />
	</div>
	<div id="wrap">
		<div id="content-wrap">
			<div class="row">
				<div class="col-sm-2" style="border: 0px solid red;"></div>
				<div class="col-sm-8"  id="successdiv">
					<!-- write here -->
					<%
					//주문번호 만들기

					// 현재 시간 정보를 구하기.
					SimpleDateFormat sdf = new SimpleDateFormat("MMddHHmmss");
					String currentTime = sdf.format(new Date());

					// 무작위 문자열을 생성합니다.
					String characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
					StringBuilder randomString = new StringBuilder();
					Random rnd = new Random();
					while (randomString.length() < 10) { // 10자리 문자열 생성
						int index = (int) (rnd.nextFloat() * characters.length());
						randomString.append(characters.charAt(index));
					}
					
					String randomValue = randomString.toString();

					
					 // 주문번호를 생성합니다.  현재시간 + 랜덤 문자열
					   String orderNumber = currentTime + "-" + randomValue ;

					   // 생성된 주문번호를 출력합니다.
					  
					%>



					<div>
						<img src="../assets/img/결제완료.png" id="successlogo"> <br>
						<br> <br>
					</div>
					<div id="thanksmsg">구매해 주셔서 감사합니다.</div>
					<br> <br>
					<div style="text-align: center; margin-left: 350px; ">
<<<<<<< HEAD
						<table class="table table-bordered" style="width: 60%; position:relative;margin-bottom:300px;">
=======
						<table class="table table-bordered" style="width: 60%; position:relative;margin-bottom:30px;">
>>>>>>> UngTest6
							
							<tr>
								<th width="60px" style="text-align: center;">주문번호</th>
								<td width="300px"><%=orderNumber %></td>

							</tr>
						</table>

					</div>




					<div style="margin-left: 100px;margin-bottom:30px;">
						<button type="submit" class="btn2"
							onclick="location.href='product_orderlist.jsp'">주문목록</button>
						&nbsp;
						<button type="button" class="btn1"
							onclick="location.href='../index.jsp'">메인으로</button>
					</div>
					<!-- the end -->
				</div>
				<div class="col-sm-2" style="border: 0px solid blue;"></div>
			</div>
		</div>
	</div>

	<div class="main_footer">
		<jsp:include page="../layout/footer.jsp" />
	</div>
</body>
</html>