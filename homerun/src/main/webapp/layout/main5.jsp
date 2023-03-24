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
	border: 1px solid gray;
}

.left {
	width: 57%;
	height: 100%;
	float: left;
	border: 1px solid blue;
}

.left-top {
	width: 100%;
	height: 38%;
	top: 0;
	margin-bottom: 20px;
	border: 1px solid yellow;
}

.left-bottom {
	width: 100%;
	bottom: 0;
	height: 58%;
	border: 1px solid green;
}

.right {
	width: 40%;
	height: 100%;
	float: right;
	border: 1px solid pink;
}

.right-top {
	width: 100%;
	height: 30%;
	top: 0;
	margin-bottom: 20px;
	border: 1px solid yellow;
}

.right-bottom {
	width: 100%;
	bottom: 0;
	height: 65%;
	border: 1px solid green;
}
</style>
</head>
<body>
<%
   String uid=(String)session.getAttribute("uid");
%>

	<div class="main">
		<div class="left">
		
			<div class="left-top"><jsp:include page="test.jsp"></jsp:include></div>
			
			<div class="left-bottom"><jsp:include page="main_rboardList.jsp"></jsp:include></div>
			
		</div>
		<div class="right">
			<div class="right-top">
			<% // loginok 가져오기
            String loginok = (String) session.getAttribute("loginok");
            if (loginok == null) 
         { //로그아웃
        %>
        <div class="login-box">
            <b class="text">로그인 후 이용해 주세요
        <button type="button" class="login" onclick="location.href='../homerun/user/user_loginform.jsp'">로그인</button>
         <br>
         <a class="regist" href="../homerun/regist/regist_registform.jsp">회원가입</a>

        </div>
        <% }
            
            else { %>
            <div class="logout-box">
            <b class="text2">환영합니다
            <br>
            <img class="photo" src="../homerun/assets/img/로그인프로필.png">
            <b class="uid"><%=uid %>
        <button type="button" class="logout" onclick="location.href='../homerun/user/user_logoutaction.jsp'">로그아웃</button>
        </div>
        <% } %>
			</div>
			<div class="right-bottom">
            <jsp:include page="mapWeather.jsp"></jsp:include>
        </div >
			</div>
		</div>

	</div>

</body>
</html>