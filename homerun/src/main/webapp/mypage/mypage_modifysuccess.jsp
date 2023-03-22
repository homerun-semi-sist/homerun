<%@page import="data.dao.UserDao"%>
<%@ page import="data.dao.ProductDao"%>
<%@ page import="java.util.List"%>
<%@ page import="data.dto.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
		<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
		<link href="../assets/css/index.css" rel="stylesheet">
	</head>
<style>
#btn{
	margin-top:40px;
	margin-left: 50px;
}
#successlogo {
	width: 250px;
	height: 250px;
	margin-top:100px;
}

div {
	text-align: center;
}

#thanksmsg {
	font-size: 50px;

}

#user{
	font-size: 30px;
}

.btn1 {
  left:40%;
  transform: translateX(-38%);
  margin-right: 10px;
  width:100px;
  height:30px;
  color:white;
  font-weight: bold;
  border:none;
  cursor:pointer;
  background-color: #0b214e;
  
}

.btn2 {
  left:40%;
  transform: translateX(-38%);
  width:100px;
  height:30px;
  color:white;
  font-weight: bold;
  border:none;
  cursor:pointer;
  background-color: #0b214e;
  
}

.main{
	margin-top: 80px;
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
					<div class="col-sm-2" style="border: 1px solid red;">left</div>
					<div class="col-sm-8" style="border: 1px solid pink;">
						<!-- write here -->
<%

	String uid=(String)session.getAttribute("uid");
	UserDao dao=new UserDao();
	String uName=dao.getuName(uid);
	
%>
				<div class=main>
					<div>
						<img src="../assets/img/완료.png" id="successlogo"> <br>
						<br> <br>
					</div>
					<div id="thanksmsg">회원수정이 <b>완료</b> 되었습니다.</div>
					<br> <br>
					<div id="user"><b><%=uid%></b>님 다시 로그인 해 주세요</div>



					
					<div id="btn">
						<button type="button" class="btn1"
						onclick="location.href='../user/user_loginform.jsp'">로그인</button>
						
						<button type="button" class="btn2"
						onclick="location.href='../index.jsp'">메인으로</button>
					</div>
				</div>
					
						<!-- the end -->
					</div>
					<div class="col-sm-2" style="border: 1px solid blue;">right</div>
				</div>
			</div>
		</div>

		<div class="main_footer">
			<jsp:include page="../layout/footer.jsp" />
		</div>
	</body>
</html>