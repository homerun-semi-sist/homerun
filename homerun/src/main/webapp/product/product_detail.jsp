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
<%
String pId = request.getParameter("pId");

ProductDao dao = new ProductDao();
ProductDto dto = dao.getProduct(pId);
%>
<body>
	<section class="py-5">
		<div class="px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
				<div class="col-md-6">
					<img class="card-img-top mb-5 mb-md-0"
						src="<%=dto.getpImage() %>"
						alt="..." />
				</div>
				<div class="col-md-6">
					<div class="small mb-1"><%=dto.getTeamName() %> - <%=dto.getpCategory() %></div>
					<h1 class="display-6 fw-bolder">
						<%=dto.getpName() %>
					</h1>
					<div class="fs-5 mb-5">
						<span><%=dto.getPrice() %></span>
					</div>
					<p class="lead"><%=dto.getpDetail() %></p>
					<div class="d-flex">
						<input class="form-control text-center me-4" id="inputQuantity"
							type="number" value="1" style="max-width: 4rem" />
						<button class="btn btn-dark flex-shrink-0" type="button">
							장바구니 담기 <i class="bi-cart-fill me-1"></i>
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
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top"
							src="https://ktwizstore.co.kr/web/product/big/202204/01cc6e31eb89089880b620519b6073ae.jpg"
							alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">케이티위즈 2022 어센틱 어웨이 유니폼</h5>
								<!-- Product price-->
								<span class="text-muted text-decoration-line-through">109,000원</span>
								89,900원
							</div>
						</div>

						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">장바구니 담기</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top"
							src="https://ktwizstore.co.kr/web/product/big/202209/d87a12d1453f9325029c2cc25b892569.jpg"
							alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">케이티위즈 비트배트</h5>
								<!-- Product price-->
								<span class="text-muted text-decoration-line-through">32,000원</span>
								32,000원
							</div>
						</div>

						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">장바구니 담기</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top"
							src="https://ktwizstore.co.kr/web/product/big/202203/b635aa605dc21f63e911b9ca17fc05a3.png"
							alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">케이티위즈 빅또리 듀오 소프트볼</h5>
								<!-- Product price-->
								<span class="text-muted text-decoration-line-through">7,000원</span>
								7,000원
							</div>
						</div>

						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">장바구니 담기</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top"
							src="https://ktwizstore.co.kr/web/product/big/202210/27b0f97cff5cf9dc0e5d68e0887e6bf3.jpg"
							alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">케이티위즈 2022 포스트시즌 소주잔</h5>
								<!-- Product price-->
								<span class="text-muted text-decoration-line-through">12,900원</span>
								12,900원
							</div>
						</div>

						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">장바구니 담기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>