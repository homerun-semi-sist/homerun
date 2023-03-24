<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.3.js"></script>
    <style type="text/css">
    .login{
    	width: 250px;
    	height: 80px;
    	color: white;
      	text-align: center;
    	background-color: #0b214e;
    	margin-left: 25px;
    	margin-top: 40px;
    	font-weight: bold;
    	font-size: 15pt;
    	letter-spacing: 5px;
    }
    .login-box{
    top:300px;
    	left: 700px;
    	border: 1px solid #0b214e;
    	box-sizing: border-box;
    	width:375px;
    	height: 180px;
    	background-color: #F2F2F2;
    	margin-bottom:100px;
    	margin-left:8px
    }
    
    .regist{
    
    	color: #0b214e;
    	 margin-right:25px;
    	font-weight: bold;
    	margin-top: 5px;
    }
    
    .regist:hover{
    	text-decoration: none;
    	color: #0b214e;
    }
    	
    .text{
   	 	left: 25px;
    	top: 20px;
    	font-size: 10pt;
    }
    
    .logout-box{
    	top:300px;
    	left: 700px;
    	border: 1px solid #0b214e;
    	box-sizing: border-box;
    	width:375px;
    	height: 180px;
    	background-color: #F2F2F2;
    	margin-bottom:100px;
    	margin-left:8px;
    }
    
    .photo{
    	margin-top: 15px;
    	margin-left: 15px;
    	width: 70px;
    	height: 70px;
    }
    
    .logout{
    	border: 1px solid #0b214e;
    	 left:15px;
    	font-weight: bold;
    }
    
    .uid{
    	position: relative;
    	top: 13px;
    	left: 15px;
    	font-size: 20pt;
    }
    
    .text2{
    	position: relative;
   	 	left: 18px;
    	top: 5px;
    }

    .lefttop{
    align:left;
    width:70%;
    height:500px;
    border:1px solid black;
    }
    .leftbottom{
    align:left;
      width:70%;
    height:500px;
    border:1px solid yellow;
    margin-top:20px;
    }
   
 	.right{
 	position:relative;
 	bottom:1000px;
 	align:right;
 	width:30%;
 	margin-left :880px;
 	text-align:center;
 	}
    </style>
</head>

<body style="overflow-x: hidden;">
<%
	String uid=(String)session.getAttribute("uid");
%>
<div class="row" margin-bottom:200px;">

    <div class="col-sm-2" style="border: 1px solid red;"></div>
    <div class="col-sm-8" style="border: 1px solid pink; ">

    <%--     <div class="mapWeather">
            <jsp:include page="mapWeather.jsp"></jsp:include>
        </div > --%>

        <div class="lefttop">왼쪽위</div>
        <div class="leftbottom">왼쪽아래</div>
        <div class="right">
        <% // loginok 가져오기
            String loginok = (String) session.getAttribute("loginok");
            if (loginok == null) 
         { //로그아웃
        %>
        <div class="login-box">
            <b class="text">로그인 후 이용해 주세요</b>
        <button type="button" class="login" onclick="location.href='../homerun/user/user_loginform.jsp'">로그인</button>
   		<br>
   		<a class="regist" href="../homerun/regist/regist_registform.jsp">회원가입</a>

        </div>
        <% }
            
            else { %>
            <div class="logout-box">
            <b class="text2">환영합니다</b>
            <br>
            <img class="photo" src="../homerun/assets/img/로그인프로필.png">
            <b class="uid"><%=uid %></b>
        <button type="button" class="logout" onclick="location.href='../homerun/user/user_logoutaction.jsp'">로그아웃</button>
        </div>
        <% } %>
        
        <div> <div class="mapWeather">
            <jsp:include page="mapWeather.jsp"></jsp:include>
        </div ></div>
        </div>
    </div>
        <div class="col-sm-2" style="border: 0px solid blue;"></div>
    </div>
    </body>

</html>