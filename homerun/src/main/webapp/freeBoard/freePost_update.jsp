<%@page import="data.dto.UserDto"%>
<%@page import="data.dao.UserDao"%>
<%@page import="java.sql.Array"%>
<%@page import="java.util.List"%>
<%@page import="data.dto.FreeBoardDto"%>
<%@page import="data.dao.FreeBoardDao"%>
<%@page import="data.dto.TeamDto"%>
<%@page import="data.dao.TeamDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOMERUN | FREEBOARD_UPDATE</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>

<!-- se2 폴더에서 js 파일 가져오기 -->
<script type="text/javascript" src="../smartEditor/js/HuskyEZCreator.js"
	charset="utf-8"></script>

<script type="text/javascript"
	src="../smartEditor/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js"
	charset="utf-8"></script>

<style type="text/css">
.listBtn, .updateBtn {
	border-radius: 4px;
	padding: 10px 20px;
	border: 1px solid #0b214e;
	background-color: #0b214e;
	color: #F8F9FA;
	width: 80px;
	height: 40px;
	line-height: 20px;
}

.listBtn:hover, .updateBtn:hover {
	color: #0b214e;
	background-color: #f8f9fa;
}
</style>
</head>
<body>
	<%
	String fbNum = request.getParameter("fbNum");
	String currentPage = request.getParameter("currentPage");

	FreeBoardDao fbDao = new FreeBoardDao();
	FreeBoardDto fbDto = fbDao.getFB(fbNum);

	String uId = fbDto.getUId();
	%>

	<form action="freePost_updateAction.jsp" method="post">

		<input type="hidden" name="uId" value="<%=uId%>"> <input
			type="hidden" name="fbNum" value="<%=fbNum%>"> <input
			type="hidden" name="currentPage" value="<%=currentPage%>">

		<table class="table table-bordered"
			style="height: 30px; width: 1000px; height: 700px; margin-left: 100px;">
			<caption style="caption-side: top;">
				<h3>자유 게시판 작성글 수정</h3>
			</caption>
			<tr>
				<th width="100"
					style="height: 30px; text-align: center; line-height: 30px; background-color: #F8F9FA;">카테고리</th>
				<td width="100"
					style="height: 30px; text-align: center; line-height: 30px;">
					<%=fbDto.getFbCategory()%>
				</td>

				<th width="100"
					style="height: 30px; text-align: center; line-height: 30px; background-color: #F8F9FA;">제목</th>
				<td><input type="text" name="subject" class="form-control"
					required="required" style="width: 500px;"
					value="<%=fbDto.getFbSubject()%>"></td>
			</tr>
			<tr>
				<td colspan="4"><textarea name="content" id="content"
						required="required"
						style="width: 100%; height: 600px; display: none;"><%=fbDto.getFbContent()%></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<button type="button" class="updateBtn" style="width: 120px;"
						onclick="submitContents(this)">수정</button>

					<button type="button" class="listBtn" style="width: 120px;"
						onclick="location.href='freeBoard_listPage.jsp?currentPage=<%=currentPage%>'">목록</button>
				</td>
			</tr>

		</table>
	</form>

	<!-- 스마트게시판에 대한 스크립트 코드 넣기 -->
	<script type="text/javascript">
		var oEditors = [];

		nhn.husky.EZCreator.createInIFrame({

			oAppRef : oEditors,

			elPlaceHolder : "content",

			sSkinURI : "../smartEditor/SmartEditor2Skin.html",

			fCreator : "createSEditor2"

		});

		//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.

		function submitContents(elClickedObj) {

			// 에디터의 내용이 textarea에 적용된다.

			oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);

			// 에디터의 내용에 대한 값 검증은 이곳에서

			// document.getElementById("textAreaContent").value를 이용해서 처리한다.
			try {
				elClickedObj.form.submit();
			} catch (e) {

			}

		}

		// textArea에 이미지 첨부

		function pasteHTML(filepath) {
			var sHTML = '<img src="../photoSave/'+filepath+'">';
			oEditors.getById["content"].exec("PASTE_HTML", [ sHTML ]);

		}
	</script>

</body>
</html>