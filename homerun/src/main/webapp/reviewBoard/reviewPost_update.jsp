<%@page import="data.dto.ReviewBoardDto"%>
<%@page import="data.dao.ReviewBoardDao"%>
<%@page import="data.dto.GameDto"%>
<%@page import="data.dao.GameDao"%>
<%@page import="java.sql.Array"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOMERUN | REVIEWBOARD_UPDATE</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>

<!-- se2 폴더에서 js 파일 가져오기 -->
<script type="text/javascript" src="../smartEditor/js/HuskyEZCreator.js"
	charset="utf-8"></script>

<script type="text/javascript" src="../smartEditor/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js"
	charset="utf-8"></script>	
	
<style type="text/css">
	.listBtn, .insertBtn {
			border-radius: 4px;
			padding: 10px 20px;
			border: 1px solid #0b214e;
			background-color: #0b214e;
		  	color: #F8F9FA;
		  	width: 80px; 
		  	height: 40px; 
		  	line-height: 20px;
		}

		.listBtn:hover, .insertBtn:hover {
		 	color: #0b214e;
		  	background-color: #f8f9fa;
		}
</style>
</head>
<body>
<%
	String rbNum = request.getParameter("rbNum");
	String currentPage = request.getParameter("currentPage");
	
	ReviewBoardDao rbDao = new ReviewBoardDao();
	ReviewBoardDto rbDto = rbDao.getRB(rbNum);
	
	GameDao gDao = new GameDao();
	
	String uId = rbDto.getUId();
%>
<form action="reviewPost_updateAction.jsp" method="post">
	<input type="hidden" name="rbNum" value="<%=rbNum %>">
	
	<!-- hiddend으로 nickname / value 값 변경 필요 -->
	<input type="hidden" name="uId" value="<%=uId %>">	
	<%-- <input type="hidden" name="currentPage" value="<%=currentPage %>"> --%>
	
	<table class="table table-bordered" style="height:30px; width: 1000px; height:700px; margin-left: 100px;">
		<caption style="caption-side: top;"><h3>후기 게시판 작성글 수정</h3></caption>
		<tr>
			<th bgcolor="#E1EEDD" width="200" style="height:30px; text-align: center; line-height: 30px;">경기일 경기팀</th>
			<td>
				<%=gDao.getGame(rbDto.getgId()).getgDay() %> <%=gDao.getGame(rbDto.getgId()).getHome() %> vs <%=gDao.getGame(rbDto.getgId()).getAway() %>
			</td>
		</tr>
		
		<tr>
			<th bgcolor="#E1EEDD" width="100" style="height:30px; text-align: center; line-height: 30px;">제목</th>
			<td>
				<input type="text" name="subject" class="form-control"
					required="required" style="width: 500px;" value="<%=rbDto.getRbSubject() %>">
			</td>
		</tr>
		<tr>
			<td colspan="4">
				<textarea name="content" id="content"		
					required="required"			
					style="width: 100%; height: 600px; display: none;"><%=rbDto.getRbContent() %></textarea>		
			</td>
		</tr>
		<tr>
			<td colspan="4" align="center">
				<button type="button" class="insertBtn"
					style="width: 120px;"
					onclick="submitContents(this)">수정</button>
				
				<button type="button" class="listBtn"
					style="width: 120px;"
					onclick="location.href='reviewBoard_listPage.jsp?currentPage=<%=currentPage %>'">목록</button>
			</td>
		</tr>
		
	</table>   
</form>

<!-- 스마트게시판에 대한 스크립트 코드 넣기 -->
<script type="text/javascript">
var oEditors = [];

nhn.husky.EZCreator.createInIFrame({

    oAppRef: oEditors,

    elPlaceHolder: "content",

    sSkinURI: "../smartEditor/SmartEditor2Skin.html",

    fCreator: "createSEditor2"

}); 

//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.

function submitContents(elClickedObj) {

    // 에디터의 내용이 textarea에 적용된다.

    oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", [ ]);

 

    // 에디터의 내용에 대한 값 검증은 이곳에서

    // document.getElementById("textAreaContent").value를 이용해서 처리한다.
    try {
        elClickedObj.form.submit();
    } catch(e) { 

    }

}

// textArea에 이미지 첨부

function pasteHTML(filepath){
    var sHTML = '<img src="../photoSave/'+filepath+'">';
    oEditors.getById["content"].exec("PASTE_HTML", [sHTML]); 

}
</script>

</body>
</html>