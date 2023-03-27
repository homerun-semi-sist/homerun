<%@page import="data.dao.UserDao"%>
<%@page import="data.dto.UserDto"%>
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
	<%
	request.setCharacterEncoding("utf-8");
	%>
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
	session.removeAttribute("loginok");

	String uid=request.getParameter("uid");
	String uName=request.getParameter("uName");
	String nickname=request.getParameter("nickname");
	String pw=request.getParameter("pw1");
	String gender=request.getParameter("gender");
	String birth=request.getParameter("birth1")+"-"+request.getParameter("birth2")+"-"+request.getParameter("birth3");
	String hp=request.getParameter("hp1")+"-"+request.getParameter("hp2")+"-"+request.getParameter("hp3");
	String addr="("+request.getParameter("addr1")+") "+request.getParameter("addr2")+" "+request.getParameter("addr3");
	
	UserDto dto=new UserDto();
	
	dto.setUid(uid);
	dto.setuName(uName);
	dto.setNickname(nickname);
	dto.setPw(pw);
	dto.setGender(gender);
	dto.setBirth(birth);
	dto.setHp(hp);
	dto.setAddr(addr);
	
	UserDao dao=new UserDao();
	
	dao.updateUser(dto);
	
	response.sendRedirect("mypage_modifysuccess.jsp");
%>
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