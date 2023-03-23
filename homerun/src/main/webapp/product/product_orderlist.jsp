<%@page import="java.util.Locale"%>
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

#noCart {
	border: 4px solid rgba(0, 0, 0, 0.2);
	width: 95.2%;
	margin-left: 19px;
	margin-bottom:200px;
}

.btn1 {
	left: 40%;
	transform: translateX(-38%);
	margin-right: 10px;
	margin-top: 10px;
	width: 100px;
	height: 30px;
	color: white;
	font-weight: bold;
	border: none;
	cursor: pointer;
	background-color: #0b214e;
	font-size: 0.6em
}

.btn2 {
	left: 40%;
	transform: translateX(-38%);
	margin-right: 10px;
	margin-bottom: 10px;
	width: 100px;
	height: 30px;
	color: white;
	font-weight: bold;
	border: none;
	cursor: pointer;
	background-color: #0b214e;
	font-size: 0.6em
}

#ordersize {
width:95%;
	height: 60px;
	background-color: #0b214e;
	border: 1px solid black;
	color: white;
	font-weight: bold;
	font-size: 2em;
	line-height: 2.2;
	margin-left: 40px;
}

#userorder {
	width: 95%;
	height: 50px;
	background-color: #0b214e;
	border: 1px solid black;
	color: white;
	font-weight: bold;
	font-size: 2em;
	line-height: 2.2;
	height: 60px;
	margin-left: 40px;
}

</style>

<script type="text/javascript">
	$(function() {

		//전체상품 선택,해제
		$("#allcheck").click(
				function() {

					var chk = $(this).is(":checked");

					$(".oId").prop("checked", chk);


				});

	
		//상품선택시 디테일페이지 이동
		$("div.pName").click(
						function() {

							var pId = $(this).attr("pId");
							location.href = "product_detailPage.jsp?pId="+ pId;

						});


		//선택한 상품 삭제버튼
		$("#btncartdel").click(function() {

			//체크한 개수
			var cQTY = $(".oId:checked").length;

			//alert(cQTY);
			if (cQTY == 0) {

				alert("삭제할 상품을 선택해주세요");
				return;
			}

			$(".oId:checked").each(function(i, element) {

				var oId = $(this).attr("oId");
				del(oId);
			location.reload();
			});
			location.reload();

		});


		function del(oId) {

			$.ajax({

				type : "get",
				dataType : "html",
				url : "product_orderdelete.jsp",
				data : {
					"oId" : oId
				},
				success : function() {
					location.reload();
				}

			});
		}

	});
</script>
</head>
<%
UserDao udao = new UserDao();
String uid = (String) session.getAttribute("uid");

ProductDao pdao = new ProductDao();

String pId = (String) session.getAttribute("pId");

//String name=udao.getuName(uid);

CartDao cdao = new CartDao();
int OrderSize = cdao.getOrderList(uid).size();

List<HashMap<String, String>> list = cdao.getOrderList(uid);

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
				<div class="col-sm-2" style="border: 0px solid red;"></div>
				<div class="col-sm-8" style="border: 0px solid pink;">
					<!-- write here -->
					<body>

						<div style="text-align: center; margin-right: 25px;">

							<div id="userorder">
								<span style="color: yellow;"><%=uid%></span>님의 주문목록
							</div>
							<h4 id="ordersize" style="">
								총 <span style="color: yellow"><%=OrderSize%></span>개의 주문이 있습니다
							</h4>
							<%
							if (OrderSize > 0) {
							%>
							<table class="table table-bordered"
								style="width: 95%; color: black; font-size: 1.2em; margin-left: 40px; margin-bottom:300px;">
								<tr>
									<th style="width: 30px;"><input type="checkbox"
										id="allcheck"></th>
									<th style="width: 650px; font-size: 1.2em; text-align: center;">상품정보</th>
									<th style="width: 150px; font-size: 1.2em; text-align: center;">상품옵션</th>
									<th style="width: 150px; font-size: 1.2em; text-align: center;">상품금액</th>
									<th style="width: 150px; font-size: 1.2em; text-align: center;">총금액</th>
									<th style="width: 180px; font-size: 1.2em; text-align: center;">주문 날짜</th>
								</tr>

								<%
								for (int i = 0; i < OrderSize; i++) {//사이즈만큼

									HashMap<String, String> map = list.get(i);
									//사진얻기
									String photo = map.get("pImage");//사진 받아와서
								%>

								<tr>
									<td style="line-height: 100px;"><input type="checkbox"
										name="oId" class="oId moneycheck" "
									oId="<%=map.get("oId")%>"	price="<%=map.get("price")%>" cQTY="<%=map.get("oQTY")%>" pId="<%=map.get("pId")%>"></td>

									<td style="line-height: 100px;">
										<div pId="<%=map.get("pId")%>" class="pName" >
											<img src="<%=photo%>" class="photo" style="width:90px;" align="left" hspace="20" pId="<%=map.get("pId")%>">

											<h4 style="line-height: 80px;">
												<b> <%=map.get("pName")%> &nbsp;&nbsp;&nbsp;&nbsp;
												</b>
											</h4>
											<td><span style="line-height: 35px"
												></span><br> <span><b>
														수량: <%=map.get("oQTY")%>개
												</b></span> <br>
												</td>
											<td><br>
												<h4 style="line-height: 30px">
													<b> <%=nf.getCurrencyInstance(Locale.KOREA).format(Integer.parseInt(map.get("price")))%></b>
												</h4></td>

											<td>
												<%
												int price = Integer.parseInt(map.get("price"));
												int oQTY = Integer.parseInt(map.get("oQTY"));
												price *= oQTY;
												%>
												<h4 style="line-height: 80px;">
													<b> <%=nf.getCurrencyInstance(Locale.KOREA).format(price)%>
														<%-- <span class="glyphicon glyphicon-trash del"
                                    style="color: red;" cId="<%=map.get("cId")%>"></span> --%>
													</b>
												</h4>
											</td>
												<td><br>
												<h4 style="line-height: 30px">
													<b> <%=map.get("oDay")%></b>
												</h4></td>
								</tr>
								
								
								</div>
								
								<%
								}
								%>

<tr>
									<td colspan="6" style="font-size: 2em"><b>
									</b><span style="margin-left: 90px"><button
												type="button" class="btn1" style="" id="btncartdel">목록삭제</button>
											<button type="button" class="btn2" onclick="location.href='../index.jsp'">메인으로</button></span>
									</td>
								</tr>

							</table>
							<%
							} else {	
							%>

							<img src="../assets/img/빈주문리스트.png" id="noCart">

							<%
							}
							%>
							<table class="table table-bordered"
									style="width: 1000px; color: black; margin-left: 25px;">
								
							</table>
						</div>
						<!-- the end -->
				</div>
				<div class="col-sm-2" style="border: 0px solid blue;"></div>
			</div>
		</div>
	</div>

	<div class="main_footer">
		<jsp:include page="../layout/footer.jsp" />
	</div>

</body>


</html>