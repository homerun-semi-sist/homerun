 <%@page import="data.dto.UserDto"%>
<%@page import="data.dao.UserDao"%>
<%@page import="data.dto.TeamDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.TeamDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		//프로젝트의 경로
		// String root=request.getContextPath();
	
		TeamDao tDao = new TeamDao();	
		List<TeamDto> list = tDao.getAllTeams();
	
		String uId = (String)session.getAttribute("uid");
	%>

    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
        <div class="layout-container">

            <!-- Content wrapper -->
            <div class="content-wrapper">
                <!-- Content -->

                <div class="container-xxl flex-grow-1 container-p-y">
                	<div class="card" style="background-color: #fff">
						<form action="freePost_insertAction.jsp" method="post">	
							<!-- hiddend으로 nickname / value 값 변경 필요 -->
							<input type="hidden" name="uId" value="<%=uId %>">
							<table class="table table-bordered" style="width: 1000px; height:700px; margin-left: 100px;">
								<caption style="caption-side: top;"><h3>자유게시판 게시글 등록</h3></caption>
								<tr>
									<th width="100" style="height:30px; text-align: center; line-height: 30px; background-color: #F8F9FA;">카테고리</th>
									<td>
										<select name="category" class="form-control" style="width: 220px;">
										
										<%
											if(uId.equals("admin")) {
										%>
												<option value="공지" selected="selected">공지</option>										
										<%
											} else {
										%>
												<option value="전체" selected="selected">전체</option>
											<%
												for(TeamDto tDto : list) {
													String category = tDto.getTeamNick();	
											%>
												<option value="<%=category %>"><%=category %></option>
											<%
												}
											%>
										<%
											}
										%>											
										</select>
									</td>
							
									<th bgcolor="#E1EEDD" width="100" style="height:30px; text-align: center; line-height: 30px; background-color: #F8F9FA;">제목</th>
									<td>
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
											onclick="location.href='freeBoard_listPage.jsp'">목록</button>
									</td>
								</tr>
								
							</table>   
						</form>
					</div>			
				</div>
			</div>
		</div>
	</div>
				

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