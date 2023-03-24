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
<body>
	<table class="table table-bordered" style="width: 100%">
		<thead style="background-color: #0b214e; color: white;">
			<tr height="65">
				<th width="150px"
					style="text-align: center; font-size: 1.4em; vertical-align: middle">순위</th>
				<th width="350px"
					style="text-align: center; font-size: 1.4em; vertical-align: middle">구단</th>
			</tr>
		</thead>
		<%
		for (int i = 1; i <= 10; i++) {
		%>
		<tr height="60">
			<td
				style="text-align: center; vertical-align: middle; color: black; font-size: 1.3em">

				<%=i%></td>
			<td style="text-align: center; vertical-align: middle; color: black;">KT위즈</td>

		</tr>
		<%
		}
		%>

	</table>
</body>
</html>