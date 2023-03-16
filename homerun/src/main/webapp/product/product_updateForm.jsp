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
		<h2>재고입력</h2>
		<div class="textForm teamNcategory">
			<div style="width: 400px">
				<input name="pId" type="text" class="inputForm"
					placeholder="상품아이디 입력" readonly="readonly"
					value="<%=dto.getpId()%>">
			</div>
		</div>

		<div class="textForm">
			<input name="pName" type="text" class="inputForm"
				placeholder="상품명 입력" readonly="readonly" value="<%=dto.getpName()%>">
		</div>

		<div class="textForm teamNcategory">
			<span class="inputForm"> <span class="sameWidth"> 팀
					선택&nbsp;&nbsp; </span> <select name="teamName">
					<option value="두산 베어스"
						<%=dto.getTeamName().equals("두산 베어스") ? "selected" : ""%>>두산
						베어스</option>
					<option value="롯데 자이언츠"
						<%=dto.getTeamName().equals("롯데 자이언츠") ? "selected" : ""%>>롯데
						자이언츠</option>
					<option value="삼성 라이온즈"
						<%=dto.getTeamName().equals("삼성 라이온즈") ? "selected" : ""%>>삼성
						라이온즈</option>
					<option value="키움 히어로즈"
						<%=dto.getTeamName().equals("키움 히어로즈") ? "selected" : ""%>>키움
						히어로즈</option>
					<option value="한화 이글스"
						<%=dto.getTeamName().equals("한화 이글스") ? "selected" : ""%>>한화
						이글스</option>
					<option value="KIA 타이거즈"
						<%=dto.getTeamName().equals("KIA 타이거즈") ? "selected" : ""%>>KIA
						타이거즈</option>
					<option value="KT WIZ"
						<%=dto.getTeamName().equals("KT WIZ") ? "selected" : ""%>>KT
						WIZ</option>
					<option value="LG 트윈스"
						<%=dto.getTeamName().equals("LG 트윈스") ? "selected" : ""%>>LG
						트윈스</option>
					<option value="NC 다이노스"
						<%=dto.getTeamName().equals("NC 다이노스") ? "selected" : ""%>>NC
						다이노스</option>
					<option value="SSG 랜더스"
						<%=dto.getTeamName().equals("SSG 랜더스") ? "selected" : ""%>>SSG
						랜더스</option>
			</select>
			</span> <span class="inputForm"> <span class="categoryWidth">
					카테고리 선택&nbsp;&nbsp; </span> <select name="pCategory">
					<option value="팀웨어"
						<%=dto.getpCategory().equals("팀웨어") ? "selected" : ""%>>팀웨어</option>
					<option value="응원용폼"
						<%=dto.getpCategory().equals("응원용품") ? "selected" : ""%>>응원용폼</option>
					<option value="야구용품"
						<%=dto.getpCategory().equals("야구용품") ? "selected" : ""%>>야구용품</option>
					<option value="기념상품"
						<%=dto.getpCategory().equals("기념상품") ? "selected" : ""%>>기념상품</option>
			</select>
			</span>
		</div>

		<div class="textForm">
			<span class="inputForm sameWidth">옵션 선택&nbsp;&nbsp;</span> <select
				name="pOption">
				<option value="없음"
					<%=dto.getpOption().equals("없음") ? "selected" : ""%>>없음</option>
				<option value="S"
					<%=dto.getpOption().equals("S") ? "selected" : ""%>>S</option>
				<option value="M"
					<%=dto.getpOption().equals("M") ? "selected" : ""%>>M</option>
				<option value="L"
					<%=dto.getpOption().equals("L") ? "selected" : ""%>>L</option>
			</select>
		</div>

		<div class="textForm">
			<span class="inputForm sameWidth"><b style="color: #0b214e">재고수</b>&nbsp;&nbsp;</span>
			<input name="pStock" type="number" min="1" value="100"
				style="width: 50px;">
		</div>

		<div class="textForm">
			<span class="inputForm">&#8361;&nbsp;&nbsp;</span> <input
				name="price" type="text" class="inputForm"
				style="width: 100px; color: #0b214e; font-weight: 600;"
				placeholder="가격 입력" required="required" value="<%=dto.getPrice()%>"
				oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
		</div>

		<div class="textForm">
			<span class="inputForm"><b style="color: #0b214e">상품설명</b><br></span>
			<textarea name="pDetail" style="width: 100%; height: 100px;"
				required="required"><%=dto.getpDetail()%></textarea>
		</div>

		<div class="textForm">
			<span class="inputForm">상품이미지 &nbsp;</span> <input name="pImage"
				type="text" class="inputForm" placeholder="https://"
				readonly="readonly" value="<%=dto.getpImage()%>">
		</div>

		<div style="margin-top: 20px">
			<button type="submit" class="pinsertbtn pinsertbtn1">재고수정</button>
			<button type="button" class="pinsertbtn"
				onclick="location.href='../managementpage/management_stockListPage.jsp'">취소</button>
		</div>
	</form>

</body>
</html>