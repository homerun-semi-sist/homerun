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
				data : {"pId" : pId},
				success : function(res) {
					if (res.count == 1) {
						alert("��� �Ұ�");
						$("#pId").val("");
						$("#check").val("");
					} else if (res.count == 0 && res.pattern=="x") {
						alert("��ǰ���̵� ������ 'p + ���� 4�ڸ�'�Դϴ�.");
						$("#pId").val("");
						$("#check").val("");
					} else {
						alert("��� ����");
						$("#check").val("checked");
						
					}
				}
			});
		});
	})
	
	function duplicate_click(){

		if(document.getElementById("check").value==''){
		alert("���̵� �ߺ�Ȯ���� ���ּ���.");
		return false;
		}
	}	
</script>
</head>
<body>
	<form action="product_insertAction.jsp" method="post"
		class="insertForm" onsubmit ="return duplicate_click()">
		
		<h2>����Է�</h2>
		<div class="textForm teamNcategory">
			<div style="width: 400px">
				<input name="pId" id="pId" type="text" class="inputForm"
					placeholder="��ǰ���̵� �Է�" required="required">
			</div>
			<div>
				<button type="button" class="pinsertbtn btnDuplicate">�ߺ�Ȯ��</button>
			</div>
			<input type="hidden" id="check" value="" required="required">
		</div>

		<div class="textForm">
			<input name="pName" type="text" class="inputForm"
				placeholder="��ǰ�� �Է�" required="required">
		</div>

		<div class="textForm teamNcategory">
			<span class="inputForm"> <span class="sameWidth"> ��
					����&nbsp;&nbsp; </span> <select name="teamName">
					<option value="�λ� ���" selected="selected">�λ� ���</option>
					<option value="�Ե� ���̾���">�Ե� ���̾���</option>
					<option value="�Ｚ ���̿���">�Ｚ ���̿���</option>
					<option value="Ű�� �������">Ű�� �������</option>
					<option value="��ȭ �̱۽�">��ȭ �̱۽�</option>
					<option value="KIA Ÿ�̰���">KIA Ÿ�̰���</option>
					<option value="KT WIZ">KT WIZ</option>
					<option value="LG Ʈ����">LG Ʈ����</option>
					<option value="NC ���̳뽺">NC ���̳뽺</option>
					<option value="SSG ������">SSG ������</option>
			</select>
			</span> <span class="inputForm"> <span class="categoryWidth">
					ī�װ� ����&nbsp;&nbsp; </span> <select name="pCategory">
					<option value="������" selected="selected">������</option>
					<option value="������ǰ">������ǰ</option>
					<option value="�߱���ǰ">�߱���ǰ</option>
					<option value="����ǰ">����ǰ</option>
			</select>
			</span>
		</div>

		<div class="textForm">
			<span class="inputForm sameWidth">����&nbsp;&nbsp;</span> <input
				name="pStock" type="number" min="1" value="100" style="width: 50px">
		</div>

		<div class="textForm">
			<span class="inputForm">&#8361;&nbsp;&nbsp;</span> <input
				name="price" type="text" class="inputForm" style="width: 100px"
				placeholder="���� �Է�" required="required"
				oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
		</div>

		<div class="textForm">
			<span class="inputForm">��ǰ����<br></span>
			<textarea name="pDetail" style="width: 100%; height: 100px;"
				required="required"></textarea>
		</div>

		<div class="textForm">
			<span class="inputForm">��ǰ�̹��� &nbsp;</span> <input name="pImage"
				type="text" class="inputForm" placeholder="https://"
				required="required">
		</div>

		<div style="margin-top: 50px">
			<button type="submit" class="pinsertbtn pinsertbtn1">����Է�</button>
			<button type="button" class="pinsertbtn"
				onclick="location.href='../product/product_listPage.jsp'">���</button>
		</div>
	</form>

</body>
</html>