<%@page import="data.dao.ProductDao"%>
<%@page import="data.dto.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="../assets/css/styles_productinsert.css" rel="stylesheet">

</head>
<%
String pId = request.getParameter("pId");

ProductDao dao = new ProductDao();
ProductDto dto = dao.getProduct(pId);
%>

<body>
	<form action="product_updateAction.jsp" method="post"
		class="insertForm">
		<h2>����Է�</h2>
		<div class="textForm teamNcategory">
			<div style="width: 400px">
				<input name="pId" type="text" class="inputForm"
					placeholder="��ǰ���̵� �Է�" readonly="readonly"
					value="<%=dto.getpId()%>">
			</div>
		</div>

		<div class="textForm">
			<input name="pName" type="text" class="inputForm"
				placeholder="��ǰ�� �Է�" readonly="readonly" value="<%=dto.getpName()%>">
		</div>

		<div class="textForm teamNcategory">
			<span class="inputForm"> <span class="sameWidth"> ��
					����&nbsp;&nbsp; </span> <select name="teamName">
					<option value="�λ� ���"
						<%=dto.getTeamName().equals("�λ� ���") ? "selected" : ""%>>�λ�
						���</option>
					<option value="�Ե� ���̾���"
						<%=dto.getTeamName().equals("�Ե� ���̾���") ? "selected" : ""%>>�Ե�
						���̾���</option>
					<option value="�Ｚ ���̿���"
						<%=dto.getTeamName().equals("�Ｚ ���̿���") ? "selected" : ""%>>�Ｚ
						���̿���</option>
					<option value="Ű�� �������"
						<%=dto.getTeamName().equals("Ű�� �������") ? "selected" : ""%>>Ű��
						�������</option>
					<option value="��ȭ �̱۽�"
						<%=dto.getTeamName().equals("��ȭ �̱۽�") ? "selected" : ""%>>��ȭ
						�̱۽�</option>
					<option value="KIA Ÿ�̰���"
						<%=dto.getTeamName().equals("KIA Ÿ�̰���") ? "selected" : ""%>>KIA
						Ÿ�̰���</option>
					<option value="KT WIZ"
						<%=dto.getTeamName().equals("KT WIZ") ? "selected" : ""%>>KT
						WIZ</option>
					<option value="LG Ʈ����"
						<%=dto.getTeamName().equals("LG Ʈ����") ? "selected" : ""%>>LG
						Ʈ����</option>
					<option value="NC ���̳뽺"
						<%=dto.getTeamName().equals("NC ���̳뽺") ? "selected" : ""%>>NC
						���̳뽺</option>
					<option value="SSG ������"
						<%=dto.getTeamName().equals("SSG ������") ? "selected" : ""%>>SSG
						������</option>
			</select>
			</span> <span class="inputForm"> <span class="categoryWidth">
					ī�װ� ����&nbsp;&nbsp; </span> <select name="pCategory">
					<option value="������"
						<%=dto.getpCategory().equals("������") ? "selected" : ""%>>������</option>
					<option value="��������"
						<%=dto.getpCategory().equals("������ǰ") ? "selected" : ""%>>��������</option>
					<option value="�߱���ǰ"
						<%=dto.getpCategory().equals("�߱���ǰ") ? "selected" : ""%>>�߱���ǰ</option>
					<option value="����ǰ"
						<%=dto.getpCategory().equals("����ǰ") ? "selected" : ""%>>����ǰ</option>
			</select>
			</span>
		</div>

		<div class="textForm">
			<span class="inputForm sameWidth">�ɼ� ����&nbsp;&nbsp;</span> <select
				name="pOption">
				<option value="����"
					<%=dto.getpOption().equals("����") ? "selected" : ""%>>����</option>
				<option value="S"
					<%=dto.getpOption().equals("S") ? "selected" : ""%>>S</option>
				<option value="M"
					<%=dto.getpOption().equals("M") ? "selected" : ""%>>M</option>
				<option value="L"
					<%=dto.getpOption().equals("L") ? "selected" : ""%>>L</option>
			</select>
		</div>

		<div class="textForm">
			<span class="inputForm sameWidth"><b style="color: #0b214e">����</b>&nbsp;&nbsp;</span>
			<input name="pStock" type="number" min="1" value="100"
				style="width: 50px;">
		</div>

		<div class="textForm">
			<span class="inputForm">&#8361;&nbsp;&nbsp;</span> <input
				name="price" type="text" class="inputForm"
				style="width: 100px; color: #0b214e; font-weight: 600;"
				placeholder="���� �Է�" required="required" value="<%=dto.getPrice()%>"
				oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
		</div>

		<div class="textForm">
			<span class="inputForm"><b style="color: #0b214e">��ǰ����</b><br></span>
			<textarea name="pDetail" style="width: 100%; height: 100px;"
				required="required"><%=dto.getpDetail()%></textarea>
		</div>

		<div class="textForm">
			<span class="inputForm">��ǰ�̹��� &nbsp;</span> <input name="pImage"
				type="text" class="inputForm" placeholder="https://"
				readonly="readonly" value="<%=dto.getpImage()%>">
		</div>

		<div style="margin-top: 20px">
			<button type="submit" class="pinsertbtn pinsertbtn1">������</button>
			<button type="button" class="pinsertbtn"
				onclick="location.href='../managementpage/management_stockListPage.jsp'">���</button>
		</div>
	</form>

</body>
</html>