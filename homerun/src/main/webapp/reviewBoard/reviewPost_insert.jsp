<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.GameDto"%>
<%@page import="data.dao.GameDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/plugin/datepicker/bootstrap-datepicker.css">

<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

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
	//프로젝트의 경로
	// String root=request.getContextPath();
	
	GameDao dao = new GameDao();
	List<GameDto> list = dao.getAllGames();
	
	String uId = (String)session.getAttribute("myid");
%>

<form action="reviewBoard_insertAction.jsp" method="post">	
	<!-- hiddend으로 nickname / value 값 변경 필요 -->
	<input type="hidden" name="uId" value="<%=uId %>">
	<table class="table table-bordered" style="width: 1000px; height:700px; margin-left: 100px;">
		<caption style="caption-side: top;"><h3>후기게시판 게시글 등록</h3></caption>
		<tr>
			<th width="100" style="height:30px; text-align: center; line-height: 30px; background-color: #F8F9FA;">경기일</th>
			<td width="300">
				<input type="date" id="input_date" max="2023-12-31" min="2020-01-01" value="2023-04-01" style="width: 140px;">		
				<input type="button" class="btn btn-default" onclick="inputDate()" value="확인" style="width: 50px; height: 30px;">	
				
				<script type="text/javascript">
					function inputDate() {
						var day = $("#input_date").val();
						alert(day);
					}
				</script>
			
			</td>
			
			<th width="100" style="height:30px; text-align: center; line-height: 30px; background-color: #F8F9FA;">경기팀</th>
			<td>
				<select name="gId" class="form-control" style="width: 300px;">
					<option value="null">-</option>
						<%
							for(GameDto dto : list) {
						%>
							<%-- <option value="<%=dto.getgId() %>"><%=dto.getHome() %> vs <%=dto.getAway() %></option> --%>
							<option value="<%=dto.getgId() %>"><%=dto.getgDay() %> <%=dto.getHome() %> vs <%=dto.getAway() %></option>
						<%
							}
						%>
				</select>
			</td>
		</tr>	
		
		<tr>
			<th width="100" style="height:30px; text-align: center; line-height: 30px; background-color: #F8F9FA;">제목</th>
			<td colspan="4">
				<input type="text" name="subject" class="form-control"
					required="required" style="width: 500px;">
			</td>
		</tr>
		
		<tr>
			<td colspan="4">
				<textarea name="content" id="content"		
					required="required"			
					style="width: 100%; height: 600px; display: none;"></textarea>		
			</td>
		</tr>
		
		<tr>
			<td colspan="4" align="center">
				<button type="button" class="insertBtn"
					style="width: 120px;"
					onclick="submitContents(this)">등록</button>
				
				<button type="button" class="listBtn"
					style="width: 120px;"
					onclick="location.href='reviewBoard_listPage.jsp'">목록</button>
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
    var sHTML = '<img src="../save/'+filepath+'">';
    oEditors.getById["content"].exec("PASTE_HTML", [sHTML]); 

}
</script>

</body>
</html>