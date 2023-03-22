<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.3.js"></script>
    <style type="text/css">
    </style>
</head>

<body style="overflow-x: hidden;">
<div class="row" style="height: 1200px;">
    <div class="col-sm-2" style="border: 1px solid red;">왼</div>
    <div class="col-sm-8" style="border: 1px solid pink;">
        <div class="mapWeather">
            <jsp:include page="mapWeather.jsp"></jsp:include>
        </div>
        <% // loginok 가져오기
            String loginok = (String) session.getAttribute("loginok");
            if (loginok == null) { //로그아웃
        %>
        <button type="button" class="login" onclick="location.href='../homerun/user/user_loginform.jsp'">로그인</button>
        <% } else { %>
        <button type="button" class="logout" onclick="location.href='../homerun/user/user_logoutaction.jsp'">로그아웃
        </button>
        <% } %>
    </div>
        <div class="col-sm-2" style="border: 1px solid blue;">오</div>
    </div>
    </body>

</html>