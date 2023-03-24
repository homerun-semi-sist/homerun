<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.TeamDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
table, tr, th, td {
	border: 1px solid gray;
	border-collapse: collapse;
}
</style>
</head>
<%
TeamDao dao = new TeamDao();
List<HashMap<String, String>> list = dao.teamRank();
%>
<body>
	<table class="table table-bordered" style="width: 100%; height: 100%">
		<thead style="background-color: #0b214e; color: white;">
			<tr>
				<th width="30px"
					style="text-align: center; font-size: 1.4em; vertical-align: middle">순위</th>
				<th width="50px"
					style="text-align: center; font-size: 1.4em; vertical-align: middle">구단</th>
					<th width="30px"
					style="text-align: center; font-size: 1.4em; vertical-align: middle">경기수</th>
				<th width="30px"
					style="text-align: center; font-size: 1.4em; vertical-align: middle">승수</th>
					<th width="30px"
					style="text-align: center; font-size: 1.4em; vertical-align: middle">패수</th>
					<th width="50px"
					style="text-align: center; font-size: 1.4em; vertical-align: middle">승률</th>
			</tr>
		</thead>
		<%
		for (int i = 0; i < 10; i++) {
			HashMap<String, String> map = list.get(i);
		%>
		<tr>
			<td
				style="text-align: center; vertical-align: middle; color: black; font-size: 1.3em">
				<%=map.get("등수")%></td>
			<td
				style="text-align: center; vertical-align: middle; color: black; font-size: 1.3em"><b><%=map.get("구단명")%></b></td>
				<td
				style="text-align: center; vertical-align: middle; color: black; font-size: 1.3em"><%=map.get("경기수")%></td>
			<td
				style="text-align: center; vertical-align: middle; color: black; font-size: 1.3em"><%=map.get("승수")%></td>
				<td
				style="text-align: center; vertical-align: middle; color: black; font-size: 1.3em"><%=map.get("패수")%></td>
				<td
				style="text-align: center; vertical-align: middle; color: black; font-size: 1.3em"><%=map.get("승률")%></td>
		</tr>
		<%
		}
		%>

	</table>
</body>
</html>