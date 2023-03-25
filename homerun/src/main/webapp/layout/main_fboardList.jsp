<%@page import="data.dto.FreeBoardDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.FreeBoardDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <title>HOMERUN | MAIN_FBLIST</title>
	   
	    <script src="https://code.jquery.com/jquery-3.6.3.js"></script>
	    
	    <link href="../assets/css/style_index.css" rel="stylesheet">
	    
	    <script src="https://kit.fontawesome.com/8dcaa4675e.js" crossorigin="anonymous"></script>
    
    	<style type="text/css">
    		a {
    			text-decoration: none;
    			color: black;
    		}
    		
    		a:hover {
    			color : black;
    		}
    	</style>
	</head>
	
	<body>
	<%
	String root = request.getContextPath();
	
	%>
	
	<div class="fbList" style="width: 100%; height: 100%; border: 0px solid gray;">
		<div class="title" >
			<div style="float: left;">
				<b style="font-size: 1.4em;">자유게시판 최근게시글</b>
			</div>
			<div class="go" style="float: right;">			
				<a href="<%=root %>/freeBoard/freeBoard_listPage.jsp" style="text-decoration: none; color: black;">더보기&nbsp;<i class="fa-solid fa-angle-right"></i></a>
			</div>
		</div>
		
		<br><hr style="height: 5px;">
		
		<ul style="font-size: 1.2em;">
			<%				
				FreeBoardDao fbDao = new FreeBoardDao();
				List<FreeBoardDto> list = fbDao.getAllFBs();
			
				int admin = fbDao.getAllmyFBs("admin");
				
				for(int i = admin; i < 5 + admin; i++) {
					FreeBoardDto dto = list.get(i);				
			%>
					<li style="margin-bottom: 8px;"><a href="<%=root %>/freeBoard/freePost_detailPage.jsp?fbNum=<%=dto.getFbNum() %>&currentPage=1" style="text-decoration: none; color: black;"><%=dto.getFbSubject() %></a></li>
			<%
				}
			%>
		</ul>
		
	</div>
	
	
	</body>
</html>