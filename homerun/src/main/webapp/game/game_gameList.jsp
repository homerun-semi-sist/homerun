<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<body>
	<%
	Date todate = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	SimpleDateFormat sdf_m = new SimpleDateFormat("MM");
	SimpleDateFormat sdf_y = new SimpleDateFormat("yyyy");

	String URL = "https://sports.news.naver.com/kbaseball/schedule/index";

	String date = sdf.format(todate);
	System.out.println(date);
	String month = sdf_m.format(todate);
	System.out.println(month);
	String year = sdf_y.format(todate);
	System.out.println(year);

	String params = "?date=" + date + "&month=" + month + "&year=" + year + "&teamCode=";

	Document doc = Jsoup.connect(URL + params).get();
	Elements elements_left = doc.select(".team_lft");
	Elements elements_right = doc.select(".team_rgt");
	Elements elements_gday = doc.select(".td_date");

	String text_left = "";
	String text_right = "";
	String text_gday = "";

	for (int j = 0; j < elements_gday.size(); j++) {
		for (int i = 0; i < 5; i++) {
			text_gday = elements_gday.get(j).text();
	%>
	<h5><%=text_gday%></h5>
	<%
	}
	}
	%>
	<hr>
	<%
	for (int i = 0; i < elements_left.size(); i++) {

		text_left = elements_left.get(i).text();
		text_right = elements_right.get(i).text();
	%>
	<h2><%=text_left%>&nbsp;VS&nbsp;<%=text_right%></h2>

	<%
	}
	%>

	<table class="table table-bordered">
		<tr>
			<th>경기일</th>
			<th>경기</th>
		</tr>
		<tr>
			<td class="gDdy"></td>
			<td class="teamVSteam"></td>
		</tr>
	</table>

</body>
</html>