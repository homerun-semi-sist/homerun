<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style type="text/css">

</style>
</head>



			<div class="login-logout">
        <% 
            String loginok = (String) session.getAttribute("loginok");
            if (loginok == null) 
         { 
        %>
        	<div class="main-login">
        	
            <jsp:include page="login.jsp"></jsp:include>
            
            </div>
            
        <% }else { %>
        
            <div class="main-logout">
            
            <jsp:include page="logout.jsp"></jsp:include>
			
			</div>
        <% } %>
        </div> 

				  <div class="mapWeather">
            <jsp:include page="mapWeather.jsp"></jsp:include>
        </div>

			
</body>

</html>