<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Insert title here</title>
    <link
            href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap"
            rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.3.js"></script>
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
</style>

<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Homerun</a>
    </div>
      
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
</body>
</html>