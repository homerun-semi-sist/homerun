<%@page import="data.dto.UserDto"%>
<%@page import="data.dao.UserDao"%>
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
		<style>
/* common */
html, body {
  height: 100%;
  margin: 0;
  padding: 0;
}
body { 
  overflow-y: scroll;
}

hr {
  border: 1px solid #f84646;
  margin: 0 auto;
}

.ui.sub-container {
  /*border: 1px solid #eee;*/
  margin: 0 4% 0 4%;
}

table td, th {
  padding: 10px 0 !important;
  text-align: center !important;
  font-size: 13px;
}

.pagination{
	position: relative;
	left: 250px;
}
	</style>
	<script type="text/javascript">
	$(function() {
		$("#delbtn").click(function(){
			var uid = $(this).attr("uid");
			
			alert(uid);
			
			/* var yes=confirm("탈퇴 처리 하시겠습니까?");
			
			if(yes)
				alert("탈퇴 처리 되었습니다");
				location.href='admin_unregistaction.jsp?uid='+uid; */
		}
	})
		
	</script>
	</head>
	<%
		//전체 회원 출력
		UserDao dao=new UserDao();
		List<UserDto> list=dao.getAllUsers();
		int no=1;
	%>
	
	<%
		String loginok=(String)session.getAttribute("loginok");
		
		int totalCount;
		int totalPage; //총 페이지수
		int startPage; //각블럭의 시작페이지
		int endPage;  //각 블럭의 마지막페이지
		int start;  //각페이지 시작번호
		int perPage = 7;  //현제페이지 보여질 글의 갯수
		int perBlock = 5;  //한블럭당 보여지는 페이지개수
		int currentPage;  //현재페이지
		
		//총 갯수
		totalCount=dao.getTotalCount();
		
		//현재 페이지번호
		if(request.getParameter("currentPage")==null)
			currentPage=1;
		else
			currentPage=Integer.parseInt(request.getParameter("currentPage"));
		
		//총 페이지 갯수
		totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);	
		
		//각 블럭의 시작페이지
		startPage = (currentPage - 1) / perBlock * perBlock + 1;
		endPage = startPage + perBlock - 1;
				
		//총페이지가 8... (6-10... endpage를 8로 수정)
		if (endPage > totalPage)
			endPage = totalPage;
				
		//각페이지에서 불러올 시작번호
		start=(currentPage-1)*perPage;
		
		//각 페이지에서 필요한 게시글
		List<UserDto> list2=dao.getList(start, perPage);
	%>

	<body style="overflow-x: hidden;">
		<%
			String mainPage = "../layout/main.jsp";
		
			// url?? ????? main???? ?��? ???????????? ???
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

    <div class="ui sub-container">
          
      <div>
		<h3><b>회원 관리 <b style="font-size: 12pt;">(총 회원 수:<%=totalCount %>명)</b></b></h3>
		<hr class="line" style="height: 5px;">
	  </div>  
	  
          <!-- Table -->
          <table class="ui very basic table">
            <thead>
              <tr>
                <th><input type="checkbox"></th>
                <th>번호</th>
                <th>이름</th>
                <th>아이디</th>
                <th>성별</th>
                <th>생년월일</th>
                <th>핸드폰</th>
                <th>주소</th>
                <th>관리</th>
              </tr>
            </thead>
            <tbody>
            <%
            	for(UserDto dto:list)
            	{%>
            		<tr>
            			<td><input type="checkbox"></td>
            			<td><%=no++ %></td>
            			<td><%=dto.getuName() %></td>
            			<td><%=dto.getUid() %></td>
            			<td><%=dto.getGender()%></td>
            			<td><%=dto.getBirth() %></td>
            			<td><%=dto.getHp() %></td>
            			<td><%=dto.getAddr() %></td>
            			<td><button type="button" class="btn btn-default" id="delbtn"
							uid="<%=dto.getUid()%>">탈퇴</button></td>
            		</tr>
            	<%}
            %>
            </tbody>
            <tfoot>
              <tr>
                <th colspan="10">
                
        <!-- 페이징 처리 -->
    	<div style="width: 500px; text-align: center;">
		<ul class="pagination">
			<%
			
			//이전
			if(startPage>1){
				%>
				<li>
					<a href="admin_usermanageform.jsp?currentPage=<%=startPage-1 %>">이전</a>
				</li>
			<%}
			
			
			for(int pp=startPage;pp<=endPage;pp++){
				
				if(pp==currentPage){
					%>
					<li class="active">
						<a href="admin_usermanageform.jsp?currentPage=<%=pp %>"><%=pp %></a>
					</li>
				<% } else{
					%>
					<li>
						<a href="admin_usermanageform.jsp?currentPage=<%=pp %>"><%=pp %></a>
					</li>
				<%}
				
			}
			
			//다음
			if(endPage<totalPage){
				%>
				<li>
					<a href="admin_usermanageform.jsp?currentPage=<%=endPage+1 %>">다음</a>
				</li>
			<%}
			%>
		</ul>
	</div>
                </th>
              </tr>
            </tfoot>
          </table>          
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