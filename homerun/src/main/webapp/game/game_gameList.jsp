<%@page import="data.dao.TeamDao"%>
<%@page import="data.dto.TeamDto"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!--   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> -->
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
table, tr, th, td {
	border: 1px solid gray;
	border-collapse: collapse;
}
</style>

<body>
	<%
	Date todate = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	SimpleDateFormat sdf_m = new SimpleDateFormat("MM");
	SimpleDateFormat sdf_y = new SimpleDateFormat("yyyy");

	String URL = "https://sports.news.naver.com/kbaseball/schedule/index";

	String date = sdf.format(todate);
	//System.out.println(date);
	String month = sdf_m.format(todate);
	//System.out.println(month);
	String year = sdf_y.format(todate);
	//System.out.println(year);

	String params = "?date=" + date + "&month=" + month + "&year=" + year + "&teamCode=";

	Document doc = Jsoup.connect(URL + params).get();
	Elements elements_left = doc.select(".team_lft");
	Elements elements_right = doc.select(".team_rgt");
	Elements elements_gday = doc.select(".td_date");

	String text_left = "";
	String text_right = "";
	String text_gday = "";
	%>
	<table class="table table-bordered" style="width: 100%">
		<thead style="background-color: #0b214e; color: white;">
			<tr height="50";>
				<th width="150px" style="text-align: center; vertical-align: middle">경기일</th>
				<th width="350px" style="text-align: center; vertical-align: middle">경기</th>
			</tr>
		</thead>
		<%
		for (int i = 0; i < elements_gday.size(); i++) {
			text_gday = elements_gday.get(i).text();
			int startIndex = i * 5;
			int endIndex = (i + 1) * 5;
			if (endIndex > elements_left.size()) {
				endIndex = elements_left.size();
			}
			for (int j = startIndex; j < endIndex; j++) {
				text_left = elements_left.get(j).text();
				text_right = elements_right.get(j).text();
		%>
		<tr height="60">
			<td
				style="text-align: center; vertical-align: middle; color: black; font-size: 1.3em"><%=text_gday%></td>
			<td style="text-align: center; vertical-align: middle; color: black;">
				<%
				TeamDao dao = new TeamDao();
				TeamDto dto_left = dao.getTeam(text_left);
				%> <img src="<%=dto_left.getTeamLogo()%>" width="40">&nbsp;&nbsp;VS&nbsp;&nbsp;
				<%
				TeamDto dto_right = dao.getTeam(text_right);
				%> <img src="<%=dto_right.getTeamLogo()%>" width="40">
		</tr>
		<%
		}
		}

		int totalCount; //총 개수
		int totalPage; //총 페이지수
		int startPage; //각 블럭(1,2,3..)의 시작페이지
		int endPage; //각 블럭의 마지막 페이지
		int start; //각 페이지의 시작번호
		int perPage = 10; //한 페이지당 보여질 글 개수
		int perBlock = 5; //한 블럭당 보여지는 페이지 개수
		int currentPage; //현재페이지

		int no;

		totalCount = elements_gday.size();

		//현재 페이지 번호 읽기(null일때는 1페이지로 설정)
		if (request.getParameter("currentPage") == null)
			currentPage = 1;
		else
			currentPage = Integer.parseInt(request.getParameter("currentPage"));

		//총 페이지 개수
		totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);

		//각 블럭의 시작페이지 -> 현재페이지가 3 -> s:1, e:5 / 6 -> s:6, e:10
		startPage = (currentPage - 1) / perBlock * perBlock + 1;
		endPage = startPage + perBlock - 1;

		//총 페이지가 8이면 (6~10 -> end페이지를 8로 수정)
		if (endPage > totalPage)
			endPage = totalPage;

		//각페이지에서 불러올 시작번호
		start = (currentPage - 1) * perPage;

		%>
	</table>
</body>
</html>