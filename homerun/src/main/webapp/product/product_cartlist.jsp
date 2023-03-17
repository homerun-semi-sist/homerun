<%@page import="data.dao.UserDao"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.HashMap"%>
<%@page import="data.dao.CartDao"%>
<%@ page import="data.dao.ProductDao"%>
<%@ page import="java.util.List"%>
<%@ page import="data.dto.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href="../assets/css/index.css" rel="stylesheet">

<style type="text/css">
div.pName img.photo {
	width: 60px;
	height: 90px;
	border: 2px solid gray;
}

div.pName, span.del {
	cursor: pointer;
}

.btn1 {
	left: 40%;
	transform: translateX(-38%);
	margin-bottom: 20px;
	margin-right: 10px;
	width: 100px;
	height: 30px;
	color: white;
	font-weight: bold;
	border: none;
	cursor: pointer;
	background-color: #0b214e;
	font-size: 0.8em
}

#cartsize {
	height: 50px;
	background-color: #0b214e;
	border: 1px solid black;
	color: white;
	font-weight: bold;
	font-size: 2em;
	line-height: 1.8;
}

#usercart {
	width: 86.5%; height : 50px;
	background-color: #0b214e;
	border: 1px solid black;
	color: white;
	font-weight: bold;
	font-size: 2em;
	line-height: 1.8;
	height: 50px;
}
</style>

<script type="text/javascript">
	$(function() {

		//전체상품 선택,해제
		$("#allcheck").click(function() {

			var chk = $(this).is(":checked");

			$(".cId").prop("checked", chk);
		});

		//상품선택시 디테일페이지 이동
		$("div.pName")
				.click(
						function() {

							var shopnum = $(this).attr("pId");
							location.href = "index.jsp?main=product/product_detailPage.jsp?pId="
									+ pId;

						});

		//휴지통모양 개별삭제
		$("span,del").click(function() {

			var cId = $(this).attr("cId");
			//alert(cId);
			var a = confirm("삭제하려면 [확인]을 눌러주세요");

			if (a) {

				del(cId);
				location.reload(); //
			}
		});

		//선택한 상품 삭제버튼
		$("#btncartdel").click(function() {

			//체크한 갯수
			var cQTY = $(".cId:checked").length;
			//alert(cnt);
			if (cQTY == 0) {

				alert("삭제할 상품을 선택해주세요");
				return;
			}

			$(".cId:checked").each(function(i, element) {

				var cId = $(this).attr("cId");
				//console.log(idx);
				del(cId);
			});
			location.reload();

		});

	});

	function del(cId) {

		$.ajax({

			type : "get",
			dataType : "html",
			url : "product/product_cartdelete.jsp",
			data : {
				"cId" : cId
			},
			success : function() {
			}

		});
	}
</script>
</head>
<%
UserDao udao = new UserDao();
//String uid=(String)session.getAttribute("uid");
String uid = "111";

//String name=udao.getuName(uid);

CartDao cdao = new CartDao();
int cartSize = cdao.getCartList(uid).size();

List<HashMap<String, String>> list = cdao.getCartList(uid);

int total = 0;

NumberFormat nf = NumberFormat.getInstance();
%>

<body style="overflow-x: hidden;">
	<%
	String mainPage = "../layout/main.jsp";

	if (request.getParameter("main") != null) {
		mainPage = request.getParameter("main");
	}
	String root = request.getContextPath();
	%>
	<header class="main_title">
		<jsp:include page="../layout/title.jsp" />
	</header>
	<div class="main_nav">
		<jsp:include page="../layout/nav.jsp" />
	</div>
	<div id="wrap">
		<div id="content-wrap">
			<div class="row">
				<div class="col-sm-2" style="border: 1px solid red;">left</div>
				<div class="col-sm-8" style="border: 1px solid pink;">
					<!-- write here -->
					<body>

						<div style="text-align: center; margin-left: 100px;">

							<div id="usercart">
								<span style="color: yellow;"><%=uid%></span>님의 장바구니
							</div>
							<h4 id="cartsize" style="width: 1000px;">
								총 <span style="color: yellow"><%=cartSize%></span>개의 상품이 담겨져
								있습니다
							</h4>

							<table class="table table-bordered"
								style="width: 1000px; color: black; font-size: 1.2em;">
								<tr>
									<th style="width: 30px;"><input type="checkbox"
										id="allcheck"></th>
									<th style="width: 200px; font-size: 1.2em;">상품정보</th>
									<th style="width: 200px; font-size: 1.2em;">상품금액</th>
								</tr>

								<%
								for (int i = 0; i < cartSize; i++) {//사이즈만큼

									HashMap<String, String> map = list.get(i);
									//사진얻기
									String photo = map.get("pImage");//사진 받아와서

									int cQTY = Integer.parseInt(map.get("cQTY"));
								%>

								<tr>
									<td><input type="checkbox" name="cId" class="cId"
										cId="<%=map.get("cId")%>"></td>

									<td>
										<div pId="<%=map.get("pId")%>" class="pName">
											<img src="<%=photo %>" class="photo" align="left" hspace="20">

											<h5>
												상품명: <%=map.get("pName")%>
											</h5>
											<h5>
												개수: <%=cQTY%>개
												
											</h5>
										</div>
									</td>

									<td align="left" style="padding-right: 400px;">
										<%
										int price = Integer.parseInt(map.get("price"));
										price *= cQTY;
										total = total + price * cQTY;
										%>
										<h4>
											<%=nf.format(price)%>원 <span
												class="glyphicon glyphicon-trash del" style="color: red;"
												cId="<%=map.get("cId")%>"></span>
										</h4>

										<hr>
									</td>
								</tr>

								<%
								}
								%>

								<tr>
									<td colspan="3">
										<button type="button" class="btn1" style="margin-left: 800px;"
											id="btncartdel">선택상품삭제</button>
										<h3 style="font-size: 2em;">
											총 주문금액:
											<%=nf.format(total)%></h3>
									</td>
								</tr>

							</table>
						</div>
						<!-- the end -->
				</div>
				<div class="col-sm-2" style="border: 1px solid blue;">right</div>
			</div>
		</div>
	</div>

	<div class="main_footer">
		<jsp:include page="../layout/footer.jsp" />
	</div>
	<script type="text/javascript">
		alert('<%=cartSize %>' + " : "+ '<%=uid %>' + " : " + );
	</script>
</body>
</html>