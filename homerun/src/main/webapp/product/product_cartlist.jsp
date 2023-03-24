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
<title>HOMERUN | PRODUCT_CARTLIST</title>
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
	width: 88.5%;
	margin-right: 85px;
	margin-bottom :300px;
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

#cartsize {
width:88.5%;
	height: 60px;
	background-color: #0b214e;
	border: 1px solid black;
	color: white;
	font-weight: bold;
	font-size: 2em;
	line-height: 2.2;
	margin-left: 25px;
}

#usercart {
	width: 88.5%;
	height: 60px;
	background-color: #0b214e;
	border: 1px solid black;
	color: white;
	font-weight: bold;
	font-size: 2em;
	line-height: 2.2;
	margin-left: 25px;
}

.cQTYup {
	cursor: pointer;
}

.cQTYdown {
	cursor: pointer;
}
</style>

<script type="text/javascript">
	$(function() {

		//전체상품 선택,해제
		$("#allcheck").click(
				function() {

					var chk = $(this).is(":checked");

					$(".cId").prop("checked", chk);

					var cQTY = $("cId:checked").length;
					if (cQTY == 0) {
						$(".selectprice").html("0");
						$(".endprice").html("0");
					}
					var price = 0;

					$(".cId:checked").each(
							function(i, ele) {
								price += parseInt($(this).attr("price"))
										* parseInt($(this).attr("cQTY"));
								$(".selectprice").html(
										price.toLocaleString('ko-KR'));
								$(".endprice").html(
										price.toLocaleString('ko-KR'));
							});
				});

		var cQTY = $(".cId:checked").length;
		if (cQTY == 0) {
			$(".selectprice").html("0");
			$(".endprice").html("0");
		}

		$(".cId").click(
				function() {

					var cnt = $(".cId:checked").length;
					if (cnt == 0) {
						$(".selectprice").html("0");
						$(".endprice").html("0");
					}

					var price = 0;

					$(".cId:checked").each(
							function(i, ele) {
								price += parseInt($(this).attr("price"))
										* parseInt($(this).attr("cQTY"));
								$(".selectprice").html(
										price.toLocaleString('ko-KR'));
								$(".endprice").html(
										price.toLocaleString('ko-KR'));
							});

				});

		//상품선택시 디테일페이지 이동
		$("div.pName").click(
						function() {
							var pId = $(this).attr("pId");
							location.href = "product_detailPage.jsp?pId="+pId;

						});

		//휴지통모양 개별삭제
		$(".del").click(function() {

			var cId = $(this).attr("cId");
			//alert(cId);
			var a = confirm("삭제하려면 [확인]을 눌러주세요");

			if (a) {

				del(cId);
				location.reload(); //
			}
		});

		$(".cId:checked").each(function(i, element) {

			var cId = $(this).attr("cId");
			var price = $(this).attr("price");

		});

		//선택한 상품 삭제버튼
		$("#btncartdel").click(function() {

			//체크한 개수
			var cQTY = $(".cId:checked").length;

			//alert(cQTY);
			if (cQTY == 0) {

				alert("삭제할 상품을 선택해주세요");
				return;
			}

			$(".cId:checked").each(function(i, element) {

				var cId = $(this).attr("cId");
				del(cId);
			location.reload();
			});
			location.reload();

		});

		$(".cQTYup").click(function() {
			var cId = $(this).attr("cId");
			var cQTY = $(this).attr("cQTY");
			var pStock = $(this).attr("pStock");

			if (cQTY <= pStock - 1) {

				$.ajax({

					type : "get",
					dataType : "json",
					url : "product_cQTYup.jsp",
					data : {
						"cId" : cId
					},
					success : function(res) {
						location.reload();
					}
				});
				//  console.log(pStock);  
				// console.log(cQTY);  
			} else {
				alert("재고가 부족합니다. 수량을 확인해 주세요!")
			}

		});

		$(".cQTYdown").click(function() {
			var cId = $(this).attr("cId");
			var cQTY = $(this).attr("cQTY");

			if (cQTY <= 1) {
				alert("1이상의 수량만 선택가능합니다.")

			} else {

				$.ajax({

					type : "get",
					dataType : "json",
					url : "product_cQTYdown.jsp",
					data : {
						"cId" : cId
					},
					success : function(res) {

						location.reload();

					}
				});
				//    console.log(cId);
				//  console.log(cQTY);
			}

		});

		function del(cId) {

			$.ajax({

				type : "get",
				dataType : "html",
				url : "product_cartdelete.jsp",
				data : {
					"cId" : cId
				},
				success : function() {
				}

			});
		}

		$("#buyBtn").click(function() {
			$(".cId:checked").each(function(i, element) {

				var uId = $(this).attr("uid");
				var pId = $(this).attr("pId");
				var cId = $(this).attr("cId");
				var cQTY = $(this).attr("cQTY");
				
				stock(pId,cId);

				orderlist(uId,pId,cQTY);
				setTimeout(function() {
				del(cId);
				},100);
			});
			
		});
		
		
			
		function stock(pId,cId){
			$.ajax({

				type : "get",
				dataType : "html",
				url : "product_updatepStock.jsp",
				data : {
					"pId" : pId,
					"cId" : cId
				},
				success : function() {
					location.href="product_success.jsp";
				}
					

			});
			
			
		} 
		
		function orderlist(uId,pId,cQTY){
			$.ajax({

				type : "get",
				dataType : "html",
				url : "product_insertOrder.jsp",
				data : {
					"uId":uId,
					"pId" : pId,
					"cQTY": cQTY
				},
				success : function() {
					
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
				<div class="col-sm-2" style="border: 0px solid red;"></div>
				<div class="col-sm-8" style="border: 0px solid pink;">
					<!-- write here -->
					<body>

						<div style="text-align: center; margin-left: 100px; ">

							<div id="usercart">
								<span style="color: yellow;"><%=uid%></span>님의 장바구니
							</div>
							<h4 id="cartsize" >
								총 <span style="color: yellow"><%=cartSize%></span>개의 상품이 담겨져
								있습니다
							</h4>
							<%
							if (cartSize > 0) {
							%>
							<table class="table table-bordered"

								style="width: 88.5%; color: black; font-size: 1.2em; margin-left: 25px;">
								<tr>
									<th style="width: 30px;"><input type="checkbox"
										id="allcheck"></th>
									<th style="width: 700px; font-size: 1.2em; text-align: center;">상품정보</th>
									<th style="width: 140px; font-size: 1.2em; text-align: center;">상품옵션</th>
									<th style="width: 140px; font-size: 1.2em; text-align: center;">상품금액</th>
									<th style="width: 140px; font-size: 1.2em; text-align: center;">총금액</th>
								</tr>

								<%
								for (int i = 0; i < cartSize; i++) {//사이즈만큼

									HashMap<String, String> map = list.get(i);
									//사진얻기
									String photo = map.get("pImage");//사진 받아와서
								%>

								<tr>
									<td style="line-height: 100px;"><input type="checkbox"
										name="cId" class="cId moneycheck" cId="<%=map.get("cId")%>"
										price="<%=map.get("price")%>" cQTY="<%=map.get("cQTY")%>" uId="<%=uid%>"pId="<%=map.get("pId")%>"pStock=<%=map.get("pStock") %>></td>

									<td style="line-height: 100px;">
										<div pId="<%=map.get("pId")%>" class="pName" >
											<img src="<%=photo%>" class="photo" align="left"  style="width:90px;" hspace="20" pId="<%=map.get("pId")%>">

											<h4 style="line-height: 80px;">
												<b> <%=map.get("pName")%> &nbsp;&nbsp;&nbsp;&nbsp;
												</b>
												<sapn style="font-size:0.8em">
												</sapn>
											</h4>
											<td><span style="line-height: 35px"
												class="glyphicon glyphicon-triangle-top cQTYup"
												cId="<%=map.get("cId")%>" cQTY="<%=map.get("cQTY")%>"
												pStock="<%=map.get("pStock")%>"></span><br> <span><b>
														수량: <%=map.get("cQTY")%>개
												</b></span> <br>
											<span class="glyphicon glyphicon-triangle-bottom cQTYdown"
												cId="<%=map.get("cId")%>" cQTY="<%=map.get("cQTY")%>"
												pStock="<%=map.get("pStock")%>"></span></td>
											<td><br>
												<h4 style="line-height: 30px">
													<b> <%=nf.getCurrencyInstance(Locale.KOREA).format(Integer.parseInt(map.get("price")))%></b>
												</h4></td>

											<td>
												<%
												int price = Integer.parseInt(map.get("price"));
												int cQTY = Integer.parseInt(map.get("cQTY"));
												int pStock = Integer.parseInt(map.get("pStock"));
												price *= cQTY;
												total = total + price;
												%>
												<h4 style="line-height: 80px;">
													<b> <%=nf.getCurrencyInstance(Locale.KOREA).format(price)%>
														<%-- <span class="glyphicon glyphicon-trash del"
                                    style="color: red;" cId="<%=map.get("cId")%>"></span> --%>
													</b>
												</h4>
											</td>
									</td>
								</tr>
								</div>
								<%
								}
								%>



							</table>
							
							<table class="table table-bordered"
								style="width: 88.5%; color: black; margin-left: 25px;margin-bottom:300px;">
								<tr>
								</tr>
								<tr>
								</tr>
								<tr>
									<td colspan="5" style="font-size: 2em"><b>총 주문금액:
											&\#8361; <span class="endprice" style=""><br></span>
									</b><br> <span style="margin-left: 90px"><button
												type="button" class="btn1" style="" id="btncartdel">상품삭제</button>
											<button type="button" class="btn2" id="buyBtn">구매하기</button></span>
									</td>
								</tr>
							</table>
							<%
							} else {
							%>

							<img src="../assets/img/빈장바구니.png" id="noCart">

							<%
							}
							%>
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