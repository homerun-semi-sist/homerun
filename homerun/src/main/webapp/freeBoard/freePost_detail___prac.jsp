<%@page import="data.dto.UserDto"%>
<%@page import="data.dao.UserDao"%>
<%@page import="data.dto.FreeBoardDto"%>
<%@page import="data.dao.FreeBoardDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Hi+Melody&family=Jua&family=Nanum+Gothic&family=Noto+Serif+KR&family=Poor+Story&family=Stylish&family=Sunflower&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>

<title>Insert title here</title>

<style type="text/css">
span.day {
	color: gray;
	font-size: 0.8em;
}

div.aList {
	margin-left: 10px;
}

span.fcDay {
	/*  float: right; */
	font-size: 0.8em;
	color: gray;
	margin-left: 10px;
}
</style>

<script type="text/javascript">
		$(function() {
			// 처음 시작시 리스트 호출
			list();
			
			// 댓글 부분에 넣을 num 출력 호출
			var num = $("#num").val();
			// alert(num);
			
			// 댓글 insert
			$("#cInsertBtn").click(function() {
				
				var uId = $("#uId").val();
				var content = $("#content").val();
				
				 alert(num + ", "+ uId + ", " + content);
				$.ajax({
					type : "get",
					dataType : "html",
					url : "freeComment_insert.jsp",
					data : {"num" : num, "uId" : uId, "content" : content},
					success : function (res) {

						// 기존 입력값 지우기
						$("#nickname").val("");
						$("#content").val("");
						
						// 댓글 추가한 후 댓글 목록 다시 출력
						list();
					}
					
				})
			});
			
			/* // 댓글 delete
			$(document).on("click", ".aDel", function() {
				var a = confirm("댓글을 삭제하려면 [확인]을 눌러주세요");
				
				var idx = $(this).attr("idx");
				// alert(idx);
				
				if(a) {
					$.ajax({
						
						type : "get",
						url : "smartAnswer/deleteAnswer.jsp",
						dataType : "html",
						data : {"idx" : idx},
						success : function() {
							list();
						}
					});
				}
			}); */
			
			/* // 댓글 update
			$(document).on("click", "#btnUpdate", function() {
				
				var nickname = $("#uNickname").val();
				var content = $("#uContent").val();
				// alert(uNickname + ", " + uContent);
				
				$.ajax({
				
					type : "get",
					url : "smartAnswer/updateAnswer.jsp",
					dataType : "html",
					data : {"idx" : idx, "nickname" : nickname, "content" : content},
					success : function () {
						
						alert("성공")
						list();
					}, 
					statusCode : {
						404 : function() {
							alert("파일을 찾을 수 없음");
						},
						500 : function() {
							alert("서버 오류, 코드 다시 확인 필요");
						}
					}
					
				});
			}) */
			
		});		
		
		// list 사용자 정의 함수
		function list() {

			$.ajax({
				
				type : "get",
			    url : "freeComment_list.jsp",
			    dataType : "json",
			    data : {"num" : $("#fbNum").val()},
			    success:function(res){
					// alert("성공");
					
					//댓글갯수출력
					$("b.FCcnt>span").text(res.length);
					
					var s="";
					
					$.each(res,function(idx, item){
						
						s+="<div>" + item.nickname + " : " + item.fcContent;
						s+="<span class='fcDay'>" + item.fcWriteday + "</sapn>&nbsp;";
						s+="<span>추천수 : " + item.fcLike + " 비추천수 : " + item.fcDislike + 
						s+="<span style='color: red; cursor:pointer;' class='glyphicon glyphicon-remove-circle aDel' idx=" + item.fcIdx + "></span>&nbsp;";
						s+="<span style='color: green; cursor:pointer;' class='glyphicon glyphicon-edit aMod' idx=" + item.fcIdx + "></span>";
						s+="<span style='color: blue; cursor:pointer;' class='	glyphicon glyphicon-bell report' idx=" + item.fcIdx + "></span>";
						s+="</div>";
					});
					
					$("div.aList").html(s);
				}
			   
			});
		}
		
	</script>
</head>

<body>
	<%
	request.setCharacterEncoding("UTF-8");

	String fbNum = request.getParameter("fbNum");
	String currentPage = request.getParameter("currentPage");

	// dao
	FreeBoardDao fbDao = new FreeBoardDao();

	// 조회수 증가
	fbDao.updateReadCount(fbNum);

	// 데이터
	FreeBoardDto fbDto = fbDao.getFB(fbNum);

	SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd HH:mm");

	String uId = (String) session.getAttribute("myid");
	String loginok = (String) session.getAttribute("loginok");

	UserDao uDao = new UserDao();
	UserDto uDto = uDao.getUser(fbDto.getUId());

	%>
	<input type="hidden" id="fbNum" name="fbNum" value="<%=fbNum%>">

	<table class="table table-condensed" style="width: 650px;">
		<tr>
			<td style="width: 500px;">
				<h2>
					[<%=fbDto.getFbCategory()%>]
					<%=fbDto.getFbSubject()%></h2> <span style="font-size: 9pt;"><b><%=uDto.getNickname()%></b></span>
				<span style="color: gray; font-size: 9pt;"><%=sdf.format(fbDto.getFbWriteday())%></span>&nbsp;&nbsp;&nbsp;&nbsp;
				<span style="font-size: 9pt;">조회 : <%=fbDto.getFbReadCnt()%></span>
				<span style="font-size: 9pt;">추천 : <%=fbDto.getFbLike()%></span> <span
				style="font-size: 9pt;">비추천 : <%=fbDto.getFbDislike()%></span>
			</td>
		</tr>

		<tr>
			<td colspan="2"><%=fbDto.getFbContent().replace("\n", "<br>")%>
			</td>
		</tr>

		<tr>
			<td colspan="2">
				<%
				if (!fbDto.getUId().equals(uId)) {
				%>
				<button type="button" class="btn btn-default" id="likeCnt"
					num="<%=fbNum%>">추천</button> <span class="like"><%=fbDto.getFbLike()%></span>

				<button type="button" class="btn btn-default" id="dislikeCnt"
					num="<%=fbNum%>">비추천</button> <span class="dislike"><%=fbDto.getFbDislike()%></span>

				<button type="button" class="btn btn-default" id="report"
					num="<%=fbNum%>">신고</button> <span class="report"><%=fbDto.getFbReport()%></span>

				<button type="button" class="btn btn-default" id="bookmark"
					num="<%=fbNum%>">찜</button> <%
 }
 %>

				<button type="button" class="btn btn-default"
					onclick="location.href='freeBoard_listPage.jsp?currentPage=<%=currentPage%>'">목록</button>

				<%
				if (loginok != null && fbDto.getUId().equals(uId)) {
				%>
				<button type="button" class="btn btn-default"
					onclick="location.href='freePost_updatePage.jsp?fbNum=<%=fbDto.getFbNum()%>'">수정</button>
				<button type="button" class="btn btn-default"
					onclick="funDel(<%=fbNum%>, <%=currentPage%>)">삭제</button> <%
 }
 %>
			</td>
		</tr>

		<!-- 댓글 -->
		<tr>
			<td>
				<b class="FCcnt">댓글 <span>0</span></b>
				<div class="aForm form-inline">
					<input type="hidden" id="num" name="num" value="<%=fbNum%>">
					<input type="hidden" id="uId" name="uId" value="<%=uId%>">
					<span><%=uDao.getUser(uId).getNickname()%></span> <input
						type="text" id="content" class="form-control"
						style="width: 400px;" placeholder="댓글 입력">&nbsp;&nbsp;
					<button type="button" id="cInsertBtn" class="btn btn-info">입력</button>
				</div>
				
				<div class="aList">댓글 목록</div>
			</td>
		</tr>
	</table>




	<%-- <div style="margin-left: 400px;">
		<%
			if(!fbDto.getUId().equals(uId)) {
		%>
				<button type="button" class="btn btn-default" id="likeCnt"
					num="<%=fbNum%>">추천</button>
				<span class="like"><%=fbDto.getFbLike()%></span>
		
				<button type="button" class="btn btn-default" id="dislikeCnt"
					num="<%=fbNum%>">비추천</button>
				<span class="dislike"><%=fbDto.getFbDislike()%></span>
		
				<button type="button" class="btn btn-default" id="report"
					num="<%=fbNum%>">신고</button>
				<span class="report"><%=fbDto.getFbReport()%></span>
		
				<button type="button" class="btn btn-default" id="bookmark"
					num="<%=fbNum%>">찜</button>
		<%
			}
		%>
		
		<br> <br>
		<button type="button" class="btn btn-default"
			onclick="location.href='freeBoard_listPage.jsp?currentPage=<%=currentPage%>'">목록</button>

		<%
			if(loginok != null && fbDto.getUId().equals(uId)) {
		%>
			<button type="button" class="btn btn-default"
				onclick="location.href='freePost_updatePage.jsp?fbNum=<%=fbDto.getFbNum()%>'">수정</button>
			<button type="button" class="btn btn-default"
				onclick="funDel(<%=fbNum%>, <%=currentPage%>)">삭제</button>
		<%
			}
		%>
	</div> --%>

	<script type="text/javascript">
		
			// 추천수 증가
			$("#likeCnt").click(function() {
				var login = '<%=loginok%>';
				
				// alert(login);
				if(login == "yes") {
				
					var num = $(this).attr("num");
					var tag = $(this);
					
					// alert(num);
				 	
					$.ajax({
						
						type : "get",
						dataType : "json",
						url : "freePost_like.jsp",
						data : {"num" : num},
						success : function(res) {
						
							// alert(res.like);
							tag.next().text(res.like);
							tag.css("background-color", "pink");
							
						}
						
					}); 
				}
				else 
					alert("로그인 후 이용 가능합니다");
				
			});

			// 비추천수 증가
			$("#dislikeCnt").click(function() {
				var login = '<%=loginok%>';
				
				if(login == "yes") {
					
					var num = $(this).attr("num");
					var tag = $(this);	
					
					// alert(num);
					
					$.ajax({
						
						type : "get",
						dataType : "json",
						url : "freePost_dislike.jsp",
						data : {"num" : num},
						success : function(res) {
						
							// alert(res.dislike);
							tag.next().text(res.dislike);
							tag.css("background-color", "pink");
							
						}
						
					});  
				} else 
					alert("로그인 후 이용 가능합니다");
			});
			
			// 신고수 증가
			$("#report").click(function() {
			var login = '<%=loginok%>';
				
				if(login == "yes")  {
					
					var num = $(this).attr("num");
					var tag = $(this);	
					
					// alert(num);
					
					$.ajax({
						
						type : "get",
						dataType : "json",
						url : "freePost_report.jsp",
						data : {"num" : num},
						success : function(res) {
							
							// alert(res.flag);
							
							if(res.flag == true)
								alert("게시글을 신고하였습니다")
							else 
								alert("이미 신고한 게시글입니다")
		
							tag.css("background-color", "pink");	
						}
					});
				} else
					alert("로그인 후 이용 가능합니다");
				
			});
			
			// 찜
			$("#bookmark").click(function() {
				var login = '<%=loginok%>';
				
				if(login == "yes")  {
					
					var num = $(this).attr("num");
					var tag = $(this);	
					
					// alert(num);
					
					$.ajax({
						
						type : "get",
						dataType : "json",
						url : "freePost_bookmark.jsp",
						data : {"num" : num},
						success : function(res) {
							
							// alert(res.flag);
							
							if(res.flag == true)
								alert("찜한 게시글은 마이페이지에서 확인가능합니다")
							else 
								alert("이미 찜한 게시글입니다. 마이페이지에서 확인해주세요")
		
							tag.css("background-color", "pink");	
						}
					});
				} else
					alert("로그인 후 이용 가능합니다");
				
			});
			
			
			
			function funDel(num, currentPage) {
				
				var a = confirm("삭제하려면 [확인]을 눌러주세요");
				
				if(a) {
					location.href="freePost_delete.jsp?fbNum=<%=fbDto.getFbNum()%>";
				}
			}
		</script>
</body>
</html>