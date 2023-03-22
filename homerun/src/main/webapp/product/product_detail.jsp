<%@page import="data.dao.UserDao"%>
<%@page import="data.dto.UserDto"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="data.dto.ProductDto"%>
<%@page import="data.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<title>HOMERUN | ShopDetail</title>
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../assets/css/styles_detail.css" rel="stylesheet" />
</head>

<script  type="text/javascript">

	$(function(){
		
		$("#cartinsert").click(function(){
			
			var uId = $(this).attr("uId");
			var pId = $(this).attr("pId");
			var cQTY=$("#inputQuantity").val();
			
			
			insertCart(uId,pId,cQTY);
		});
		
		
		
		
		function insertCart(uId,pId,cQTY){
			
			$.ajax({

				type : "get",
				dataType : "html",
				url : "product_insertCart.jsp",
				data : {
					"uId" : uId,
					"pId" : pId,
					"cQTY":cQTY
				},
				success : function() {
					location.href="product_cartlist.jsp";
				}
				
			});	
		}
		
	});
</script>

<%
String pId = request.getParameter("pId");
String uid=(String)session.getAttribute("uid");

ProductDao dao = new ProductDao();
ProductDto dto = dao.getProduct(pId);
UserDao udao = new UserDao();
UserDto udto = udao.getData(uid);

NumberFormat nf = NumberFormat.getCurrencyInstance();
%>
<body>
	<section class="py-5">
		<div class="px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
				<div class="col-md-6">
					<img class="card-img-top mb-5 mb-md-0" src="<%=dto.getpImage()%>"
						alt="..." />
				</div>
				<div class="col-md-6">
					<div class="small mb-1"><%=dto.getTeamName()%>
						-
						<%=dto.getpCategory()%></div>
					<h1 class="display-6 fw-bolder">
						<%=dto.getpName()%>
					</h1>
					<div class="fs-5 mb-5">
						<span><%=nf.format(dto.getPrice())%></span>
					</div>
					<p class="lead"><%=dto.getpDetail()%></p>
					<div class="d-flex">
						<input class="form-control text-center me-4" id="inputQuantity"
							type="number" value="1" style="max-width: 4rem" />
						<button class="btn btn-dark flex-shrink-0" type="button"
							id="cartinsert"pId="<%=dto.getpId()%>" uId="<%=udto.getUid()%>">장바구니 담기 <i class="bi-cart-fill me-1"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Related items section-->
	<section class="py-5 bg-light">
		<div class="px-4 px-lg-5 mt-5">
			<h2 class="fw-bolder mb-4">Related products</h2>
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

				<%
				ProductDao dao_related = new ProductDao();
				List<ProductDto> list_related = dao_related.selectRelatedProduct(dto.getTeamName(), dto.getpId());

				List<ProductDto> subListbase_related = new ArrayList<>();
				for (int i = 0; i < list_related.size(); i++) {
					ProductDto dto_related = list_related.get(i);

					subListbase_related.add(dto_related);

				}

				int last_related = subListbase_related.size() < 4 ? subListbase_related.size() : 4;
				List<ProductDto> subList_related = new ArrayList<ProductDto>(subListbase_related.subList(0, last_related));
				for (int j = 0; j < subList_related.size(); j++) {
					ProductDto dto_related = subList_related.get(j);
				
					%>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top" src="<%=dto_related.getpImage()%>"
							alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder"><%=dto_related.getpName()%></h5>
								<!-- Product price-->
								<%=nf.format(dto_related.getPrice())%>
							</div>
						</div>

						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto"
									href="product_detailPage.jsp?pId=<%=dto_related.getpId()%>">상품
									보기</a>
							</div>
						</div>
					</div>
				</div>

				<%
				}
				%>



			</div>
		</div>
	</section>

</body>
</html>