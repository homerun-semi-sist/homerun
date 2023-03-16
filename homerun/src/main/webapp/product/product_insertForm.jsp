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
<script type="text/javascript">
	$(function() {

		$(".btnDuplicate").click(function() {

			var pId = $("#pId").val();

			$.ajax({

				type : "get",
				url : "pIdSearch.jsp",
				dataType : "json",
				data : {
					"pId" : pId
				},
				success : function(res) {

					if (res.count == 1) {
						alert("사용불가");
						$("#pId").val("");

					} else {
						alert("사용가능");
					}
				}
			});
		});
	})
</script>
</head>
<body>
	<form action="product_insertAction.jsp" method="post"
		class="insertForm">

		<h2>재고입력</h2>
		<div class="textForm teamNcategory">
			<div style="width: 400px">
				<input name="pId" id="pId" type="text" class="inputForm"
					placeholder="상품아이디 입력" required="required">
			</div>
			<div>
				<button type="button" class="pinsertbtn btnDuplicate">중복확인</button>
			</div>
		</div>

		<div class="textForm">
			<input name="pName" type="text" class="inputForm"
				placeholder="상품명 입력" required="required">
		</div>

		<div class="textForm teamNcategory">
			<span class="inputForm"> <span class="sameWidth"> 팀
					선택&nbsp;&nbsp; </span> <select name="teamName">
					<option value="두산 베어스" selected="selected">두산 베어스</option>
					<option value="롯데 자이언츠">롯데 자이언츠</option>
					<option value="삼성 라이온즈">삼성 라이온즈</option>
					<option value="키움 히어로즈">키움 히어로즈</option>
					<option value="한화 이글스">한화 이글스</option>
					<option value="KIA 타이거즈">KIA 타이거즈</option>
					<option value="KT WIZ">KT WIZ</option>
					<option value="LG 트윈스">LG 트윈스</option>
					<option value="NC 다이노스">NC 다이노스</option>
					<option value="SSG 랜더스">SSG 랜더스</option>
			</select>
			</span> <span class="inputForm"> <span class="categoryWidth">
					카테고리 선택&nbsp;&nbsp; </span> <select name="pCategory">
					<option value="팀웨어" selected="selected">팀웨어</option>
					<option value="응원용폼">응원용폼</option>
					<option value="야구용품">야구용품</option>
					<option value="기념상품">기념상품</option>
			</select>
			</span>
		</div>

		<div class="textForm">
			<span class="inputForm sameWidth">옵션 선택&nbsp;&nbsp;</span> <select
				name="pOption">
				<option value="없음" selected="selected">없음</option>
				<option value="S">S</option>
				<option value="M">M</option>
				<option value="L">L</option>
			</select>
		</div>

		<div class="textForm">
			<span class="inputForm sameWidth">재고수&nbsp;&nbsp;</span> <input
				name="pStock" type="number" min="1" value="100" style="width: 50px">
		</div>

		<div class="textForm">
			<span class="inputForm">&#8361;&nbsp;&nbsp;</span> <input
				name="price" type="text" class="inputForm" style="width: 100px"
				placeholder="가격 입력" required="required"
				oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
		</div>

		<div class="textForm">
			<span class="inputForm">상품설명<br></span>
			<textarea name="pDetail" style="width: 100%; height: 100px;"
				required="required"></textarea>
		</div>

		<div class="textForm">
			<span class="inputForm">상품이미지 &nbsp;</span> <input name="pImage"
				type="text" class="inputForm" placeholder="https://"
				required="required">
		</div>

		<div style="margin-top: 20px">
			<button type="submit" class="pinsertbtn pinsertbtn1">재고입력</button>
			<button type="button" class="pinsertbtn"
				onclick="location.href='../product/product_listPage.jsp'">취소</button>
		</div>
	</form>

</body>
</html>