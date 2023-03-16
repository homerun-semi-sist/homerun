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
		<script type="text/javascript">
		function logincheck(a)
		{
			if(a.uid.value==""){
				
				alert("아이디를 입력 해 주세요");
								
			}else if(a.pw.value=="")
				alert("비밀번호를 입력 해 주세요");
		}
		</script>
	</head>
	<style>
  html {
    height: 100%;
  }
  body {
    padding:0;
    background: #F8F9FA;
    color: white;
  }

  .login-box {
    position: absolute;
    margin-top: 450px;
    left: 50%;
    width: 600px;
    padding: 40px;
    transform: translate(-50%, -50%);
    background: #0b214e;
    box-sizing: border-box;
    border-radius: 10px;
    background-color: white;
 	color:#0b214e;
 	font-weight: bold;
 	border: 1px solid #0b214e;
  }

  .login-box h2 {
    margin: 0 0 30px;
    padding: 0;
    color: #0b214e;
    text-align: center;
    font-weight: bold;
  }

  .login-box .user-box {
    position: relative;
  }
  


  .login-box .user-box input {
    width: 100%;
    padding: 10px 0;
    font-size: 16px;
    color: #0b214e;
    margin-bottom: 30px;
    border: none;
    border-bottom: 1px solid #0b214e;
    outline: none;
    background: transparent;
  }
  
  .login-box .user-box label {
    position: absolute;
    top:0;
    left: 0;
    padding: 10px 0;
    font-size: 16px;
    color: #0b214e;;
    pointer-events: none;
    transition: .5s;
  }

  .login-box .user-box input:focus ~ label,
  .login-box .user-box input:valid ~ label {
    top: -20px;
    left: 0;
    color: #0b214e;
    font-size: 12px;
    font-weight: bold;
  }

  .login-box form a {
    position: relative;
    display: inline-block;
    padding: 10px 20px;
    color: #0b214e;
    font-size: 16px;
    text-decoration: none;
    text-transform: uppercase;
    overflow: hidden;
    transition: .5s;
    margin-top: 40px;
    letter-spacing: 4px
  }
  
  button.login{
  	background-color: #0b214e;
  	margin-top: 20px;
  	height:30px;
  	width: 100px;
  	color: white;
  }
  
  button.regist{
  	background-color: #0b214e;
  	float: right;
  	margin-top: 20px;
  	height:30px;
  	width: 100px;
  	color: white;
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
	//세션 값 얻기
	String saveok=(String)session.getAttribute("saveok");

	String myid="";
	
	if(saveok!=null)
	{
		myid=(String)session.getAttribute("myid");
	}
%>

<div class="login-box">
  <h2>Login</h2>
  
  <form action="user_loginaction.jsp" method="post" 
  onsubmit="return logincheck(this)" name="a">
  
    <div class="user-box">
      <input type="text" name="uid" required="required" value="<%=myid %>" >
      <label>아이디</label>
    </div>
    
    <div class="user-box">
      <input type="password" name="pw" required="required">
      <label>비밀번호</label>
    </div>
    
    <div class="user-check">
    	<input type="checkbox" name="cbsave"
    	<%=saveok==null?"":"checked" %>>&nbsp;아이디저장
    </div>
    
    <button type="submit" class="login" onclick="logincheck(a)">로그인</button>
    <button type="button" class="regist"  onclick="location.href='../regist/regist_registform.jsp'">회원가입</button>
    
  </form>
  
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