<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.3.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
nav{
	margin-top: 170px;
}

.navbar-nav{
	float: right;

	}
	
.navbar-default .navbar-nav>li>a{
	color:#0b214e;
	font-weight: bold;
	}
	
 .navbar-nav>li>a{
  	margin-right: 100px;
  }
  
  .dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
  }
  
  .navbar-default .navbar-brand{
  	color:#0b214e;
	font-weight: bold;
  }
  

  html {
    height: 100%;
  }
  body {
    padding:0;
    font-family: sans-serif;
    background: #F8F9FA;
    color: white;
  }

  .login-box {
    position: absolute;
    margin-top: 270px;
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
  
  button.gaip{
  	background-color: #0b214e;
  	float: right;
  	margin-top: 20px;
  	height:30px;
  	width: 100px;
  	color: white;
  }


</style>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Homerun</a>
    </div>
     
     <div class="inb-sub"></div>
     
    <ul class="nav navbar-nav">
      <li><a href="#">Home</a></li>
      <li class="dropdown"><a href="#">경기일정<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a href="#">게시판<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>

      <li class="dropdown"><a href="#">응원용품<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>

      <li class="dropdown"><a href="#">예약<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>

      <li class="dropdown"><a href="#">관리자페이지<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">회원관리</a></li>
          <li><a href="#">재고관리</a></li>
          <li><a href="#">게시글관리</a></li>
        </ul>
      </li>
      
    </ul>
  </div>
</nav>
  


<div class="login-box">
  <h2>Login</h2>
  <form>
    <div class="user-box">
      <input type="text" name="" required="required">
      <label>아이디</label>
    </div>
    <div class="user-box">
      <input type="password" name="" required="required">
      <label>비밀번호</label>
    </div>
    <div class="user-check">
    	<input type="checkbox" name="cbsave">&nbsp;아이디저장
    </div>
    <button type="submit" class="login" >로그인</button>
    <button type="submit" class="gaip" >회원가입</button>

  </form>
</div>
</body>
</html>