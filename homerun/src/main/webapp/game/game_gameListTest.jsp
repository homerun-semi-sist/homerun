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
	Elements elements_gScore = doc.select(".td_score");

	String text_left = "";
	String text_right = "";
	String text_gday = "";
	String text_gScore = "";
	String text_gScore_left = "";
	String text_gScore_right = "";
	%>
	<table class="table table-bordered" style="width: 100%">
		<thead style="background-color: #0b214e; color: white;">
			<tr height="50">
				<th width="150px" style="text-align: center; vertical-align: middle">경기일</th>
				<th width="350px" style="text-align: center; vertical-align: middle">경기</th>
			<th width="300px" style="text-align: center; vertical-align: middle">구장</th>
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
			</td>
			<td
				style="text-align: center; vertical-align: middle; color: black; font-size: 1.1em">
				<%=dto_right.getStadium()%><span
				style="font-size: 0.8em; color: gray">(<%=dto_right.getHometown()%>)
			</span>
			</td>
		</tr>
		<%
		}
		}
%>
	</table>
</body>
</html>