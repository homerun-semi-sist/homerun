<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>HOMERUN | MAIN</title>
<link href="../assets/css/style_index.css" rel="stylesheet">
<style type="text/css">
.main {
	width: 100%;
	height: 100%;
	border: 0px solid gray;
	margin-bottom: 50px;
}

.left {
	width: 57%;
	height: 100%;
	float: left;
	border: 0px solid blue;
}

.left-top {
	width: 100%;
	height: 38%;
	top: 0;
	margin-bottom: 60px;
	border: 0px solid yellow;
}

.left-bottom {
	width: 100%;
	bottom: 0;
	height: 58%;
	border: 0px solid green;
}

.left-bottom-top {
	width: 100%;
	top: 0;
	height: 48%;
	border: 0px solid black;
	margin-bottom: 50px;
	margin-top: 20px;
}

.left-bottom-bottom {
	width: 100%;
	bottom: 0;
	height: 48%;
	border: 0px solid orange;
	margin-bottom: 50px;
}

.right {
	width: 40%;
	height: 900px;
	float: right;
	border: 0px solid pink;
}

.right-top {
	width: 100%;
	height: 25%;
	top: 0;
	margin-bottom: 50px;
	border: 0px solid yellow;
}

.right-bottom {
	width: 100%;
	bottom: 0;
	height: 55%;
	border: 0px solid green;
}
</style>
</head>
<body>
<%
   String uid=(String)session.getAttribute("uid");
%>

	<div class="main">
		<div class="left">
		
			<div class="left-top"><jsp:include page="teamRank.jsp"></jsp:include></div>
			
			<div class="left-bottom">
				<div class="left-bottom-top"><jsp:include page="main_fboardList.jsp"></jsp:include></div>
				<div class="left-bottom-bottom"><jsp:include page="main_rboardList.jsp"></jsp:include></div>
			</div>
			
		</div>
		<div class="right">
			<div class="right-top">
			<% // loginok 가져오기
            String loginok = (String) session.getAttribute("loginok");
            if (loginok == null) 
         { //로그아웃
        %>
			<jsp:include page="login.jsp"></jsp:include>
        <% }
            
            else { %>
            <jsp:include page="logout.jsp"></jsp:include>
        <% } %>
			</div>
			<div class="right-bottom"><jsp:include page="mapWeather.jsp"></jsp:include></div>
		</div>
	</div>
		
</body>
</html>