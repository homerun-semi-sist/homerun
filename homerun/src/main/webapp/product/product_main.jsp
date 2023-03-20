<%@page import="java.util.ArrayList"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="data.dto.ProductDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>HOMERUN | ShopList</title>
<link href="../assets/css/theme.css" rel="stylesheet" />

<style>
#navv-doosan, #navv-kiwoom, #navv-samsung, #navv-lg, #navv-kt, #navv-ssg,
	#navv-nc, #navv-lotte, #navv-kia, #navv-hanhwa, #pills-doosan_teamwear,
	#pills-doosan_cheering, #pills-doosan_baseball, #pills-doosan_memory,
	#pills-lotte_teamwear, #pills-lotte_cheering, #pills-lotte_baseball,
	#pills-lotte_memory, #pills-samsung_teamwear, #pills-samsung_cheering,
	#pills-samsung_baseball, #pills-samsung_memory, #pills-kiwoom_teamwear,
	#pills-kiwoom_cheering, #pills-kiwoom_baseball, #pills-kiwoom_memory,
	#pills-lg_teamwear, #pills-lg_cheering, #pills-lg_baseball,
	#pills-lg_memory, #pills-nc_teamwear, #pills-nc_cheering,
	#pills-nc_baseball, #pills-nc_memory, #pills-hanhwa_teamwear,
	#pills-hanhwa_cheering, #pills-hanhwa_baseball, #pills-hanhwa_memory,
	#pills-kia_teamwear, #pills-kia_cheering, #pills-kia_baseball,
	#pills-kia_memory, #pills-kt_teamwear, #pills-kt_cheering,
	#pills-kt_baseball, #pills-kt_memory, #pills-ssg_teamwear,
	#pills-ssg_cheering, #pills-ssg_baseball, #pills-ssg_memory {
	opacity: 1;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>

<%
ProductDao dao = new ProductDao();
List<ProductDto> list = dao.selectAllProduct_pDay();

NumberFormat nf = NumberFormat.getCurrencyInstance();
%>

<body>
	<!-- <main class="main" id="top"> -->
	<section style="margin-bottom: 20px;">
		<div class="row h-30 g-0">
			<div class="h-30">
				<div
					class="bg-300 p-4 h-30 d-flex flex-column justify-content-center">
					<h4 class="text-800">KBO Online Store</h4>
					<h1 class="fw-semi-bold lh-sm fs-4 fs-lg-5 fs-xl-6">23시즌
						온라인스토어</h1>
					<p class="mb-5 fs-1">23시즌 전 구단의 팀 스토어 상품을 구매할 수 있습니다.</p>
					<div class="d-grid gap-2 d-md-block">
						<a style="background-color: #0b214e; color: white"
							class="btn btn-lg" href="product_listPage.jsp" role="button">Explore</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="py-0">
		<div class="row h-100">
			<div class="col-lg-7 mx-auto text-center mb-5">
				<h5 class="fw-bold fs-3 fs-lg-5 lh-sm">Best Sellers</h5>
			</div>
			<div class="col-12">
				<div class="row h-100 align-items-center g-2">
					<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
						<div class="card card-span text-white">
							<img class="img-fluid h-100"
								src="https://www.ktwizstore.co.kr/web/product/big/202204/05feabbf22d3ba44b5ae41ea7f6089e4.jpg"
								alt="..." />
							<div class="card-img-overlay ps-0"></div>
							<div class="card-body ps-0 bg-200">
								<h5 class="fw-bold text-1000 text-truncate">케이티위즈 2022 어센틱
									홈 유니폼</h5>
								<div class="fw-bold">
									<span class="text-600 me-2 text-decoration-line-through">109,900원</span><span
										class="text-primary">89,900원</span>
								</div>
							</div>
							<a class="stretched-link" href="product_detailPage.jsp"></a>
						</div>
					</div>
					<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
						<div class="card card-span text-white">
							<img class="img-fluid h-100"
								src="https://cdn-pro-web-251-119.cdn-nhncommerce.com/wyverntr9322_godomall_com/data/goods/23/02/07/1000001258/register_detail_069.jpg"
								alt="..." />
							<div class="card-img-overlay ps-0"></div>
							<div class="card-body ps-0 bg-200">
								<h5 class="fw-bold text-1000 text-truncate">랜더스 23 스프링캠프 모자</h5>
								<div class="fw-bold">
									<span class="text-600 me-2 text-decoration-line-through">39,000원</span><span
										class="text-primary">35,000원</span>
								</div>
							</div>
							<a class="stretched-link" href="#"></a>
						</div>
					</div>
					<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
						<div class="card card-span text-white">
							<img class="img-fluid h-100"
								src="http://openimage.interpark.com/goods_image/0/9/7/6/9803880976s.jpg"
								alt="..." />
							<div class="card-img-overlay ps-0"></div>
							<div class="card-body ps-0 bg-200">
								<h5 class="fw-bold text-1000 text-truncate">오리지널 모자</h5>
								<div class="fw-bold">
									<span class="text-600 me-2 text-decoration-line-through">30,000원</span><span
										class="text-primary">29,000원</span>
								</div>
							</div>
							<a class="stretched-link" href="#"></a>
						</div>
					</div>
					<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
						<div class="card card-span text-white">
							<img class="img-fluid h-100"
								src="http://openimage.interpark.com/goods_image/0/9/3/5/9598780935s.jpg"
								alt="..." />
							<div class="card-img-overlay ps-0"></div>
							<div class="card-body ps-0 bg-200">
								<h5 class="fw-bold text-1000 text-truncate">응원배트</h5>
								<div class="fw-bold">
									<span class="text-600 me-2 text-decoration-line-through">10,000원</span><span
										class="text-primary">8,000원</span>
								</div>
							</div>
							<a class="stretched-link" href="#"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end of .container-->
	</section>

	<section class="py-0">

		<div class="row h-100">
			<div class="col-lg-7 mx-auto text-center mt-8 mb-5">
				<h5 class="fw-bold fs-3 fs-lg-5 lh-sm">New Arrivals</h5>
			</div>
			<div class="col-12">
				<div class="row h-100 align-items-center g-2">
					<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
						<div class="card card-span text-white">
							<img class="img-fluid h-100"
								src="http://openimage.interpark.com/goods_image/4/5/9/3/10098314593s.jpg"
								alt="..." />
							<div class="card-img-overlay ps-0"></div>
							<div class="card-body ps-0 bg-200">
								<h5 class="fw-bold text-1000 text-truncate">심볼 바람막이 (블랙)</h5>
								<div class="fw-bold">
									<span class="text-600 me-2 text-decoration-line-through">55000원</span><span
										class="text-primary">45000원</span>
								</div>
							</div>
							<a class="stretched-link" href="#"></a>
						</div>
					</div>
					<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
						<div class="card card-span text-white">
							<img class="img-fluid h-100"
								src="http://openimage.interpark.com/goods_image/0/5/9/8/9134140598s.jpg"
								alt="..." />
							<div class="card-img-overlay ps-0"></div>
							<div class="card-body ps-0 bg-200">
								<h5 class="fw-bold text-1000 text-truncate">유광 점퍼 (동계)</h5>
								<div class="fw-bold">
									<span class="text-600 me-2 text-decoration-line-through">135,000원</span><span
										class="text-primary">120,000원</span>
								</div>
							</div>
							<a class="stretched-link" href="#"></a>
						</div>
					</div>
					<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
						<div class="card card-span text-white">
							<img class="img-fluid h-100"
								src="http://openimage.interpark.com/goods_image/0/9/7/6/9803880976s.jpg"
								alt="..." />
							<div class="card-img-overlay ps-0"></div>
							<div class="card-body ps-0 bg-200">
								<h5 class="fw-bold text-1000 text-truncate">오리지널 모자</h5>
								<div class="fw-bold">
									<span class="text-600 me-2 text-decoration-line-through">30,000원</span><span
										class="text-primary">29,000원</span>
								</div>
							</div>
							<a class="stretched-link" href="#"></a>
						</div>
					</div>
					<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
						<div class="card card-span text-white">
							<img class="img-fluid h-100"
								src="http://openimage.interpark.com/goods_image/0/9/3/5/9598780935s.jpg"
								alt="..." />
							<div class="card-img-overlay ps-0"></div>
							<div class="card-body ps-0 bg-200">
								<h5 class="fw-bold text-1000 text-truncate">응원배트</h5>
								<div class="fw-bold">
									<span class="text-600 me-2 text-decoration-line-through">10,000원</span><span
										class="text-primary">8,000원</span>
								</div>
							</div>
							<a class="stretched-link" href="#"></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- end of .container-->
	</section>

	<section id="categoryWomen" style="margin-top: 20px;">

		<div class="row h-100">
			<div class="col-lg-7 mx-auto text-center mt-6 mb-6">
				<h5 class="fw-bold fs-3 fs-lg-5 lh-sm mb-3">Shop By Category</h5>
			</div>
			<div class="col-12">
				<navv>
				<div
					class="navv navv-tabs majestic-tabs mb-4 justify-content-center"
					id="navv-tab" role="tablist">
					<button class="navv-link active" id="navv-doosan-tab"
						data-bs-toggle="tab" data-bs-target="#navv-doosan" type="button"
						role="tab" aria-controls="navv-doosan" aria-selected="true">
						두산 베어스</button>
					<button class="navv-link" id="navv-lotte-tab" data-bs-toggle="tab"
						data-bs-target="#navv-lotte" type="button" role="tab"
						aria-controls="navv-lotte" aria-selected="false">롯데 자이언츠</button>
					<button class="navv-link" id="navv-samsung-tab"
						data-bs-toggle="tab" data-bs-target="#navv-samsung" type="button"
						role="tab" aria-controls="navv-samsung" aria-selected="false">삼성
						라이온즈</button>
					<button class="navv-link" id="navv-kiwoom-tab" data-bs-toggle="tab"
						data-bs-target="#navv-kiwoom" type="button" role="tab"
						aria-controls="navv-kiwoom" aria-selected="false">키움 히어로즈</button>
					<button class="navv-link" id="navv-hanhwa-tab" data-bs-toggle="tab"
						data-bs-target="#navv-hanhwa" type="button" role="tab"
						aria-controls="navv-hanhwa" aria-selected="false">한화 이글스</button>
					<button class="navv-link" id="navv-kia-tab" data-bs-toggle="tab"
						data-bs-target="#navv-kia" type="button" role="tab"
						aria-controls="navv-kia" aria-selected="false">KIA 타이거즈</button>
					<button class="navv-link" id="navv-kt-tab" data-bs-toggle="tab"
						data-bs-target="#navv-kt" type="button" role="tab"
						aria-controls="navv-kt" aria-selected="false">KT WIZ</button>
					<button class="navv-link" id="navv-lg-tab" data-bs-toggle="tab"
						data-bs-target="#navv-lg" type="button" role="tab"
						aria-controls="navv-lg" aria-selected="false">LG 트윈스</button>
					<button class="navv-link" id="navv-nc-tab" data-bs-toggle="tab"
						data-bs-target="#navv-nc" type="button" role="tab"
						aria-controls="navv-nc" aria-selected="false">NC 다이노스</button>
					<button class="navv-link" id="navv-ssg-tab" data-bs-toggle="tab"
						data-bs-target="#navv-ssg" type="button" role="tab"
						aria-controls="navv-ssg" aria-selected="false">SSG 랜더스</button>
				</div>

				<div class="tab-content" id="navv-tabContent">
					<!-- 두산 -->
					<div class="tab-pane fade show active" id="navv-doosan"
						style="opacity: 1" role="tabpanel"
						aria-labelledby="navv-doosan-tab">
						<ul class="navv navv-pills justify-content-center mb-5"
							id="pills-tab-all" role="tablist">
							<li class="navv-item" role="presentation">
								<button class="navv-link active" id="pills-doosan_teamwear-tab"
									data-bs-toggle="pill" data-bs-target="#pills-doosan_teamwear"
									type="button" role="tab" aria-controls="pills-doosan_teamwear"
									aria-selected="true">팀웨어</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-doosan_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-doosan_cheering"
									type="button" role="tab" aria-controls="pills-doosan_cheering"
									aria-selected="false">응원용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-doosan_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-doosan_baseball"
									type="button" role="tab" aria-controls="pills-doosan_baseball"
									aria-selected="false">야구용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-doosan_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-doosan_memory"
									type="button" role="tab" aria-controls="pills-doosan_memory"
									aria-selected="false">기념상품</button>
							</li>
						</ul>
						<div class="tab-content" id="pills-tabContentDoosan">
							<!-- 두산 팀웨어 -->
							<div class="tab-pane fade show active" id="pills-doosan_teamwear"
								role="tabpanel" aria-labelledby="pills-doosan_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryDoosanTeamwear"
									data-bs-touch="false" data-bs-interval="false">

									<!-- 두산 팀웨어 시작 -->
									<div class="carousel-inner">
										<!-- 두산 팀웨어 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_dooT = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("두산 베어스")) {
														if (dto.getpCategory().equals("팀웨어")) {

													subListbase_dooT.add(dto);
														}
													}
												}
												%>
												<%
												int last_dooT_1 = subListbase_dooT.size() < 4 ? subListbase_dooT.size() : 4;
												List<ProductDto> subList_1_dooT = new ArrayList<ProductDto>(subListbase_dooT.subList(0, last_dooT_1));
												for (int j = 0; j < subList_1_dooT.size(); j++) {
													ProductDto dto = subList_1_dooT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<%
										if (subListbase_dooT.size() > 4) {
										%>
										<!-- 두산 팀웨어 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_dooT_2 = subListbase_dooT.size() > 8 ? 8 : subListbase_dooT.size();
												List<ProductDto> subList_2_dooT = new ArrayList<ProductDto>(subListbase_dooT.subList(4, last_dooT_2));
												for (int j = 0; j < subList_2_dooT.size(); j++) {
													ProductDto dto = subList_2_dooT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- 두산 팀웨어 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryDoosanTeamwear"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryDoosanTeamwear"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>

										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- 두산 응원용품 -->
							<div class="tab-pane fade" id="pills-doosan_cheering"
								role="tabpanel" aria-labelledby="pills-doosan_cheering-tab">
								<div class="carousel slide" id="carouselCategoryDoosanCheering"
									data-bs-touch="false" data-bs-interval="false">

									<!-- 두산 응원용품 시작 -->
									<div class="carousel-inner">
										<!-- 두산 응원용품 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_dooC = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("두산 베어스")) {
														if (dto.getpCategory().equals("응원용품")) {

													subListbase_dooC.add(dto);
														}
													}
												}
												%>
												<%
												int last_dooC_1 = subListbase_dooC.size() < 4 ? subListbase_dooC.size() : 4;
												List<ProductDto> subList_1_dooC = new ArrayList<ProductDto>(subListbase_dooC.subList(0, last_dooC_1));
												for (int j = 0; j < subList_1_dooC.size(); j++) {
													ProductDto dto = subList_1_dooC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>



											</div>
										</div>

										<%
										if (subListbase_dooC.size() > 4) {
										%>
										<!-- 두산 응원용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_dooC_2 = subListbase_dooC.size() > 8 ? 8 : subListbase_dooC.size();
												List<ProductDto> subList_2_dooC = new ArrayList<ProductDto>(subListbase_dooC.subList(4, last_dooC_2));
												for (int j = 0; j < subList_2_dooC.size(); j++) {
													ProductDto dto = subList_2_dooC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- 두산 응원용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryDoosanCheering"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryDoosanCheering"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- 두산 야구용품 -->
							<div class="tab-pane fade" id="pills-doosan_baseball"
								role="tabpanel" aria-labelledby="pills-doosan_baseball-tab">
								<div class="carousel slide" id="carouselCategoryDoosanBaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- 두산 야구용품 시작-->
									<div class="carousel-inner">
										<!-- 두산 야구용품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_dooB = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("두산 베어스")) {
														if (dto.getpCategory().equals("야구용품")) {

													subListbase_dooB.add(dto);
														}
													}
												}
												%>
												<%
												int last_dooB_1 = subListbase_dooB.size() < 4 ? subListbase_dooB.size() : 4;
												List<ProductDto> subList_1_dooB = new ArrayList<ProductDto>(subListbase_dooB.subList(0, last_dooB_1));
												for (int j = 0; j < subList_1_dooB.size(); j++) {
													ProductDto dto = subList_1_dooB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_dooB.size() > 4) {
										%>
										<!-- 두산 응원용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_dooB_2 = subListbase_dooB.size() > 8 ? 8 : subListbase_dooB.size();
												List<ProductDto> subList_2_dooB = new ArrayList<ProductDto>(subListbase_dooB.subList(4, last_dooB_2));
												for (int j = 0; j < subList_2_dooB.size(); j++) {
													ProductDto dto = subList_2_dooB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<!-- 두산 야구용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryDoosanBaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryDoosanBaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>

							<!-- 두산 기념상품-->
							<div class="tab-pane fade" id="pills-doosan_memory"
								role="tabpanel" aria-labelledby="pills-doosan_memory-tab">
								<div class="carousel slide" id="carouselCategoryDoosanMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- 두산 기념상품 시작-->
									<div class="carousel-inner">
										<!-- 두산 기념상품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_dooM = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("두산 베어스")) {
														if (dto.getpCategory().equals("기념상품")) {

													subListbase_dooM.add(dto);
														}
													}
												}
												%>
												<%
												int last_dooM_1 = subListbase_dooM.size() < 4 ? subListbase_dooM.size() : 4;
												List<ProductDto> subList_1_dooM = new ArrayList<ProductDto>(subListbase_dooM.subList(0, last_dooM_1));
												for (int j = 0; j < subList_1_dooM.size(); j++) {
													ProductDto dto = subList_1_dooM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_dooM.size() > 4) {
										%>
										<!-- 두산 기념상품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_dooM_2 = subListbase_dooM.size() > 8 ? 8 : subListbase_dooM.size();
												List<ProductDto> subList_2_dooM = new ArrayList<ProductDto>(subListbase_dooM.subList(4, last_dooM_2));
												for (int j = 0; j < subList_2_dooM.size(); j++) {
													ProductDto dto = subList_2_dooM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<!-- 두산 기념상품 좌우이동-->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryDoosanMemory"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryDoosanMemory"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>
						</div>
					</div>

					<!-- 롯데 -->
					<div class="tab-pane fade" id="navv-lotte" role="tabpanel"
						style="opacity: 1" aria-labelledby="navv-lotte-tab">
						<ul class="navv navv-pills mb-5 justify-content-center"
							id="pills-tab-lotte" role="tablist">
							<li class="navv-item" role="presentation">
								<button class="navv-link active" id="pills-lotte_teamwear-tab"
									data-bs-toggle="pill" data-bs-target="#pills-lotte_teamwear"
									type="button" role="tab" aria-controls="pills-lotte_teamwear"
									aria-selected="true">팀웨어</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-lotte_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-lotte_cheering"
									type="button" role="tab" aria-controls="pills-lotte_cheering"
									aria-selected="false">응원용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-lotte_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-lotte_baseball"
									type="button" role="tab" aria-controls="pills-lotte_baseball"
									aria-selected="false">야구용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-lotte_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-lotte_memory"
									type="button" role="tab" aria-controls="pills-lotte_memory"
									aria-selected="false">기념상품</button>
							</li>
						</ul>
						<div class="tab-content" id="pills-tabContentLotte">
							<!-- 롯데 팀웨어 -->
							<div class="tab-pane fade show active" id="pills-lotte_teamwear"
								role="tabpanel" aria-labelledby="pills-lotte_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryLotteTeamwear"
									data-bs-touch="false" data-bs-interval="false">

									<!-- 롯데 팀웨어 시작 -->
									<div class="carousel-inner">
										<!-- 롯데 팀웨어 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_ltT = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("롯데 자이언츠")) {
														if (dto.getpCategory().equals("팀웨어")) {

													subListbase_ltT.add(dto);
														}
													}
												}
												%>
												<%
												int last_ltT_1 = subListbase_ltT.size() < 4 ? subListbase_ltT.size() : 4;
												List<ProductDto> subList_1_ltT = new ArrayList<ProductDto>(subListbase_ltT.subList(0, last_ltT_1));
												for (int j = 0; j < subList_1_ltT.size(); j++) {
													ProductDto dto = subList_1_ltT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<%
										if (subListbase_ltT.size() > 4) {
										%>
										<!-- 롯데 팀웨어 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_ltT_2 = subListbase_ltT.size() > 8 ? 8 : subListbase_ltT.size();
												List<ProductDto> subList_2_ltT = new ArrayList<ProductDto>(subListbase_ltT.subList(4, last_ltT_2));
												for (int j = 0; j < subList_2_ltT.size(); j++) {
													ProductDto dto = subList_2_ltT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- 롯데 팀웨어 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryLotteTeamwear"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryLotteTeamwear"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>

										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- 롯데 응원용품 -->
							<div class="tab-pane fade" id="pills-lotte_cheering"
								role="tabpanel" aria-labelledby="pills-lotte_cheering-tab">
								<div class="carousel slide" id="carouselCategoryLotteCheering"
									data-bs-touch="false" data-bs-interval="false">

									<!-- 롯데 응원용품 시작 -->
									<div class="carousel-inner">
										<!-- 롯데 응원용품 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_ltC = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("롯데 자이언츠")) {
														if (dto.getpCategory().equals("응원용품")) {

													subListbase_ltC.add(dto);
														}
													}
												}
												%>
												<%
												int last_ltC_1 = subListbase_ltC.size() < 4 ? subListbase_ltC.size() : 4;
												List<ProductDto> subList_1_ltC = new ArrayList<ProductDto>(subListbase_ltC.subList(0, last_ltC_1));
												for (int j = 0; j < subList_1_ltC.size(); j++) {
													ProductDto dto = subList_1_ltC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>



											</div>
										</div>

										<%
										if (subListbase_ltC.size() > 4) {
										%>
										<!-- 롯데 응원용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_ltC_2 = subListbase_ltC.size() > 8 ? 8 : subListbase_ltC.size();
												List<ProductDto> subList_2_ltC = new ArrayList<ProductDto>(subListbase_ltC.subList(4, last_ltC_2));
												for (int j = 0; j < subList_2_ltC.size(); j++) {
													ProductDto dto = subList_2_ltC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- 롯데 응원용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryLotteCheering"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryLotteCheering"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- 롯데 야구용품 -->
							<div class="tab-pane fade" id="pills-lotte_baseball"
								role="tabpanel" aria-labelledby="pills-lotte_baseball-tab">
								<div class="carousel slide" id="carouselCategoryLotteBaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- 롯데 야구용품 시작-->
									<div class="carousel-inner">
										<!-- 롯데 야구용품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_ltB = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("롯데 자이언츠")) {
														if (dto.getpCategory().equals("야구용품")) {

													subListbase_ltB.add(dto);
														}
													}
												}
												%>
												<%
												int last_ltB_1 = subListbase_ltB.size() < 4 ? subListbase_ltB.size() : 4;
												List<ProductDto> subList_1_ltB = new ArrayList<ProductDto>(subListbase_ltB.subList(0, last_ltB_1));
												for (int j = 0; j < subList_1_ltB.size(); j++) {
													ProductDto dto = subList_1_ltB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_ltB.size() > 4) {
										%>
										<!-- 롯데 야구용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_ltB_2 = subListbase_ltB.size() > 8 ? 8 : subListbase_ltB.size();
												List<ProductDto> subList_2_ltB = new ArrayList<ProductDto>(subListbase_ltB.subList(4, last_ltB_2));
												for (int j = 0; j < subList_2_ltB.size(); j++) {
													ProductDto dto = subList_2_ltB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<!-- 롯데 야구용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryLotteBaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryLotteBaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>

							<!-- 롯데 기념상품-->
							<div class="tab-pane fade" id="pills-lotte_memory"
								role="tabpanel" aria-labelledby="pills-lotte_memory-tab">
								<div class="carousel slide" id="carouselCategoryLotteMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- 롯데 기념상품 시작-->
									<div class="carousel-inner">
										<!-- 롯데 기념상품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_ltM = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("롯데 자이언츠")) {
														if (dto.getpCategory().equals("기념상품")) {

													subListbase_ltM.add(dto);
														}
													}
												}
												%>
												<%
												int last_ltM_1 = subListbase_ltM.size() < 4 ? subListbase_ltM.size() : 4;
												List<ProductDto> subList_1_ltM = new ArrayList<ProductDto>(subListbase_ltM.subList(0, last_ltM_1));
												for (int j = 0; j < subList_1_ltM.size(); j++) {
													ProductDto dto = subList_1_ltM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_ltM.size() > 4) {
										%>
										<!-- 롯데 기념상품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_ltM_2 = subListbase_ltM.size() > 8 ? 8 : subListbase_ltM.size();
												List<ProductDto> subList_2_ltM = new ArrayList<ProductDto>(subListbase_ltM.subList(4, last_ltM_2));
												for (int j = 0; j < subList_2_ltM.size(); j++) {
													ProductDto dto = subList_2_ltM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<!-- 롯데 기념상품 좌우이동-->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryLotteMemory"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryLotteMemory"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>
						</div>
					</div>

					<!-- 삼성 -->
					<div class="tab-pane fade" id="navv-samsung" role="tabpanel"
						style="opacity: 1" aria-labelledby="navv-samsung-tab">
						<ul class="navv navv-pills mb-5 justify-content-center"
							id="pills-tab-samsung" role="tablist">
							<li class="navv-item" role="presentation">
								<button class="navv-link active" id="pills-samsung_teamwear-tab"
									data-bs-toggle="pill" data-bs-target="#pills-samsung_teamwear"
									type="button" role="tab" aria-controls="pills-samsung_teamwear"
									aria-selected="true">팀웨어</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-samsung_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-samsung_cheering"
									type="button" role="tab" aria-controls="pills-samsung_cheering"
									aria-selected="false">응원용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-samsung_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-samsung_baseball"
									type="button" role="tab" aria-controls="pills-samsung_baseball"
									aria-selected="false">야구용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-samsung_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-samsung_memory"
									type="button" role="tab" aria-controls="pills-samsung_memory"
									aria-selected="false">기념상품</button>
							</li>
						</ul>
						<div class="tab-content" id="pills-tabContentSamsung">
							<!-- 삼성 팀웨어 -->
							<div class="tab-pane fade show active"
								id="pills-samsung_teamwear" role="tabpanel"
								aria-labelledby="pills-samsung_teamwear-tab">
								<div class="carousel slide" id="carouselCategorySamsungTeamwear"
									data-bs-touch="false" data-bs-interval="false">

									<!-- 삼성 팀웨어 시작 -->
									<div class="carousel-inner">
										<!-- 삼성 팀웨어 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_samT = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("삼성 라이온즈")) {
														if (dto.getpCategory().equals("팀웨어")) {

													subListbase_samT.add(dto);
														}
													}
												}
												%>
												<%
												int last_samT_1 = subListbase_samT.size() < 4 ? subListbase_samT.size() : 4;
												List<ProductDto> subList_1_samT = new ArrayList<ProductDto>(subListbase_samT.subList(0, last_samT_1));
												for (int j = 0; j < subList_1_samT.size(); j++) {
													ProductDto dto = subList_1_samT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<%
										if (subListbase_samT.size() > 4) {
										%>
										<!-- 삼성 팀웨어 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_samT_2 = subListbase_samT.size() > 8 ? 8 : subListbase_samT.size();
												List<ProductDto> subList_2_samT = new ArrayList<ProductDto>(subListbase_samT.subList(4, last_samT_2));
												for (int j = 0; j < subList_2_samT.size(); j++) {
													ProductDto dto = subList_2_samT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- 삼성 팀웨어 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategorySamsungTeamwear"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategorySamsungTeamwear"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>

										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- 삼성 응원용품 -->
							<div class="tab-pane fade" id="pills-samsung_cheering"
								role="tabpanel" aria-labelledby="pills-samsung_cheering-tab">
								<div class="carousel slide" id="carouselCategorySamsungCheering"
									data-bs-touch="false" data-bs-interval="false">

									<!-- 삼성 응원용품 시작 -->
									<div class="carousel-inner">
										<!-- 삼성 응원용품 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_samC = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("삼성 라이온즈")) {
														if (dto.getpCategory().equals("응원용품")) {

													subListbase_samC.add(dto);
														}
													}
												}
												%>
												<%
												int last_samC_1 = subListbase_samC.size() < 4 ? subListbase_samC.size() : 4;
												List<ProductDto> subList_1_samC = new ArrayList<ProductDto>(subListbase_samC.subList(0, last_samC_1));
												for (int j = 0; j < subList_1_samC.size(); j++) {
													ProductDto dto = subList_1_samC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>



											</div>
										</div>

										<%
										if (subListbase_samC.size() > 4) {
										%>
										<!-- 삼성 응원용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_samC_2 = subListbase_samC.size() > 8 ? 8 : subListbase_samC.size();
												List<ProductDto> subList_2_samC = new ArrayList<ProductDto>(subListbase_samC.subList(4, last_samC_2));
												for (int j = 0; j < subList_2_samC.size(); j++) {
													ProductDto dto = subList_2_samC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- 삼성 응원용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategorySamsungCheering"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategorySamsungCheering"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- 삼성 야구용품 -->
							<div class="tab-pane fade" id="pills-samsung_baseball"
								role="tabpanel" aria-labelledby="pills-samsung_baseball-tab">
								<div class="carousel slide" id="carouselCategorySamsungBaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- 삼성 야구용품 시작-->
									<div class="carousel-inner">
										<!-- 삼성 야구용품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_samB = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("삼성 라이온즈")) {
														if (dto.getpCategory().equals("야구용품")) {

													subListbase_samB.add(dto);
														}
													}
												}
												%>
												<%
												int last_samB_1 = subListbase_samB.size() < 4 ? subListbase_samB.size() : 4;
												List<ProductDto> subList_1_samB = new ArrayList<ProductDto>(subListbase_samB.subList(0, last_samB_1));
												for (int j = 0; j < subList_1_samB.size(); j++) {
													ProductDto dto = subList_1_samB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_samB.size() > 4) {
										%>
										<!-- 삼성 야구용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_samB_2 = subListbase_samB.size() > 8 ? 8 : subListbase_samB.size();
												List<ProductDto> subList_2_samB = new ArrayList<ProductDto>(subListbase_samB.subList(4, last_samB_2));
												for (int j = 0; j < subList_2_samB.size(); j++) {
													ProductDto dto = subList_2_samB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<!-- 삼성 야구용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategorySamsungBaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategorySamsungBaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>

							<!-- 삼성 기념상품-->
							<div class="tab-pane fade" id="pills-samsung_memory"
								role="tabpanel" aria-labelledby="pills-samsung_memory-tab">
								<div class="carousel slide" id="carouselCategorySamsungMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- 삼성 기념상품 시작-->
									<div class="carousel-inner">
										<!-- 삼성 기념상품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_samM = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("삼성 라이온즈")) {
														if (dto.getpCategory().equals("기념상품")) {

													subListbase_samM.add(dto);
														}
													}
												}
												%>
												<%
												int last_samM_1 = subListbase_samM.size() < 4 ? subListbase_samM.size() : 4;
												List<ProductDto> subList_1_samM = new ArrayList<ProductDto>(subListbase_samM.subList(0, last_samM_1));
												for (int j = 0; j < subList_1_samM.size(); j++) {
													ProductDto dto = subList_1_samM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_samM.size() > 4) {
										%>
										<!-- 삼성 기념상품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_samM_2 = subListbase_samM.size() > 8 ? 8 : subListbase_samM.size();
												List<ProductDto> subList_2_samM = new ArrayList<ProductDto>(subListbase_samM.subList(4, last_samM_2));
												for (int j = 0; j < subList_2_samM.size(); j++) {
													ProductDto dto = subList_2_samM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<!-- 삼성 기념상품 좌우이동-->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategorySamsungMemory"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategorySamsungMemory"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>
						</div>
					</div>

					<!-- 키움 -->
					<div class="tab-pane fade" id="navv-kiwoom" role="tabpanel"
						style="opacity: 1" aria-labelledby="navv-kiwoom-tab">
						<ul class="navv navv-pills mb-5 justify-content-center"
							id="pills-tab-kiwoom" role="tablist">
							<li class="navv-item" role="presentation">
								<button class="navv-link active" id="pills-kiwoom_teamwear-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kiwoom_teamwear"
									type="button" role="tab" aria-controls="pills-kiwoom_teamwear"
									aria-selected="true">팀웨어</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kiwoom_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kiwoom_cheering"
									type="button" role="tab" aria-controls="pills-kiwoom_cheering"
									aria-selected="false">응원용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kiwoom_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kiwoom_baseball"
									type="button" role="tab" aria-controls="pills-kiwoom_baseball"
									aria-selected="false">야구용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kiwoom_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kiwoom_memory"
									type="button" role="tab" aria-controls="pills-kiwoom_memory"
									aria-selected="false">기념상품</button>
							</li>
						</ul>
						<div class="tab-content" id="pills-tabContentKiwoom">
							<!-- 키움 팀웨어 -->
							<div class="tab-pane fade show active" id="pills-kiwoom_teamwear"
								role="tabpanel" aria-labelledby="pills-kiwoom_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryKiwoomTeamwear"
									data-bs-touch="false" data-bs-interval="false">

									<!-- 키움 팀웨어 시작 -->
									<div class="carousel-inner">
										<!-- 키움 팀웨어 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_kwT = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("키움 히어로즈")) {
														if (dto.getpCategory().equals("팀웨어")) {

													subListbase_kwT.add(dto);
														}
													}
												}
												%>
												<%
												int last_kwT_1 = subListbase_kwT.size() < 4 ? subListbase_kwT.size() : 4;
												List<ProductDto> subList_1_kwT = new ArrayList<ProductDto>(subListbase_kwT.subList(0, last_kwT_1));
												for (int j = 0; j < subList_1_kwT.size(); j++) {
													ProductDto dto = subList_1_kwT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<%
										if (subListbase_kwT.size() > 4) {
										%>
										<!-- 키움 팀웨어 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_kwT_2 = subListbase_kwT.size() > 8 ? 8 : subListbase_kwT.size();
												List<ProductDto> subList_2_kwT = new ArrayList<ProductDto>(subListbase_kwT.subList(4, last_kwT_2));
												for (int j = 0; j < subList_2_kwT.size(); j++) {
													ProductDto dto = subList_2_kwT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- 키움 팀웨어 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKiwoomTeamwear"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKiwoomTeamwear"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>

										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- 키움 응원용품 -->
							<div class="tab-pane fade" id="pills-kiwoom_cheering"
								role="tabpanel" aria-labelledby="pills-kiwoom_cheering-tab">
								<div class="carousel slide" id="carouselCategoryKiwoomCheering"
									data-bs-touch="false" data-bs-interval="false">

									<!-- 키움 응원용품 시작 -->
									<div class="carousel-inner">
										<!-- 키움 응원용품 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_kwC = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("키움 히어로즈")) {
														if (dto.getpCategory().equals("응원용품")) {

													subListbase_kwC.add(dto);
														}
													}
												}
												%>
												<%
												int last_kwC_1 = subListbase_kwC.size() < 4 ? subListbase_kwC.size() : 4;
												List<ProductDto> subList_1_kwC = new ArrayList<ProductDto>(subListbase_kwC.subList(0, last_kwC_1));
												for (int j = 0; j < subList_1_kwC.size(); j++) {
													ProductDto dto = subList_1_kwC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>



											</div>
										</div>

										<%
										if (subListbase_kwC.size() > 4) {
										%>
										<!-- 키움 응원용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_kwC_2 = subListbase_kwC.size() > 8 ? 8 : subListbase_kwC.size();
												List<ProductDto> subList_2_kwC = new ArrayList<ProductDto>(subListbase_kwC.subList(4, last_kwC_2));
												for (int j = 0; j < subList_2_kwC.size(); j++) {
													ProductDto dto = subList_2_kwC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- 키움 응원용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKiwoomCheering"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKiwoomCheering"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- 키움 야구용품 -->
							<div class="tab-pane fade" id="pills-kiwoom_baseball"
								role="tabpanel" aria-labelledby="pills-kiwoom_baseball-tab">
								<div class="carousel slide" id="carouselCategoryKiwoomBaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- 키움 야구용품 시작-->
									<div class="carousel-inner">
										<!-- 키움 야구용품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_kwB = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("키움 히어로즈")) {
														if (dto.getpCategory().equals("야구용품")) {

													subListbase_kwB.add(dto);
														}
													}
												}
												%>
												<%
												int last_kwB_1 = subListbase_kwB.size() < 4 ? subListbase_kwB.size() : 4;
												List<ProductDto> subList_1_kwB = new ArrayList<ProductDto>(subListbase_kwB.subList(0, last_kwB_1));
												for (int j = 0; j < subList_1_kwB.size(); j++) {
													ProductDto dto = subList_1_kwB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_kwB.size() > 4) {
										%>
										<!-- 키움 야구용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_kwB_2 = subListbase_kwB.size() > 8 ? 8 : subListbase_kwB.size();
												List<ProductDto> subList_2_kwB = new ArrayList<ProductDto>(subListbase_kwB.subList(4, last_kwB_2));
												for (int j = 0; j < subList_2_kwB.size(); j++) {
													ProductDto dto = subList_2_kwB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<!-- 키움 야구용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKiwoomBaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKiwoomBaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>

							<!-- 키움 기념상품-->
							<div class="tab-pane fade" id="pills-kiwoom_memory"
								role="tabpanel" aria-labelledby="pills-kiwoom_memory-tab">
								<div class="carousel slide" id="carouselCategoryKiwoomMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- 키움 기념상품 시작-->
									<div class="carousel-inner">
										<!-- 키움 기념상품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_kwM = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("키움 히어로즈")) {
														if (dto.getpCategory().equals("기념상품")) {

													subListbase_kwM.add(dto);
														}
													}
												}
												%>
												<%
												int last_kwM_1 = subListbase_kwM.size() < 4 ? subListbase_kwM.size() : 4;
												List<ProductDto> subList_1_kwM = new ArrayList<ProductDto>(subListbase_kwM.subList(0, last_kwM_1));
												for (int j = 0; j < subList_1_kwM.size(); j++) {
													ProductDto dto = subList_1_kwM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_kwM.size() > 4) {
										%>
										<!-- 키움 기념상품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_kwM_2 = subListbase_kwM.size() > 8 ? 8 : subListbase_kwM.size();
												List<ProductDto> subList_2_kwM = new ArrayList<ProductDto>(subListbase_kwM.subList(4, last_kwM_2));
												for (int j = 0; j < subList_2_kwM.size(); j++) {
													ProductDto dto = subList_2_kwM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<!-- 키움 기념상품 좌우이동-->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKiwoomMemory"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKiwoomMemory"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>
						</div>
					</div>

					<!-- 한화 -->
					<div class="tab-pane fade" id="navv-hanhwa" role="tabpanel"
						style="opacity: 1" aria-labelledby="navv-hanhwa-tab">
						<ul class="navv navv-pills mb-5 justify-content-center"
							id="pills-tab-hanhwa" role="tablist">
							<li class="navv-item" role="presentation">
								<button class="navv-link active" id="pills-hanhwa_teamwear-tab"
									data-bs-toggle="pill" data-bs-target="#pills-hanhwa_teamwear"
									type="button" role="tab" aria-controls="pills-hanhwa_teamwear"
									aria-selected="true">팀웨어</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-hanhwa_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-hanhwa_cheering"
									type="button" role="tab" aria-controls="pills-hanhwa_cheering"
									aria-selected="false">응원용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-hanhwa_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-hanhwa_baseball"
									type="button" role="tab" aria-controls="pills-hanhwa_baseball"
									aria-selected="false">야구용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-hanhwa_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-hanhwa_memory"
									type="button" role="tab" aria-controls="pills-hanhwa_memory"
									aria-selected="false">기념상품</button>
							</li>
						</ul>
						<div class="tab-content" id="pills-tabContentHanhwa">
							<!-- 한화 팀웨어 -->
							<div class="tab-pane fade show active" id="pills-hanhwa_teamwear"
								role="tabpanel" aria-labelledby="pills-hanhwa_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryHanhwaTeamwear"
									data-bs-touch="false" data-bs-interval="false">

									<!-- 한화 팀웨어 시작 -->
									<div class="carousel-inner">
										<!-- 한화 팀웨어 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_hanT = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("한화 이글스")) {
														if (dto.getpCategory().equals("팀웨어")) {

													subListbase_hanT.add(dto);
														}
													}
												}
												%>
												<%
												int last_hanT_1 = subListbase_hanT.size() < 4 ? subListbase_hanT.size() : 4;
												List<ProductDto> subList_1_hanT = new ArrayList<ProductDto>(subListbase_hanT.subList(0, last_hanT_1));
												for (int j = 0; j < subList_1_hanT.size(); j++) {
													ProductDto dto = subList_1_hanT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<%
										if (subListbase_hanT.size() > 4) {
										%>
										<!-- 한화 팀웨어 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_hanT_2 = subListbase_hanT.size() > 8 ? 8 : subListbase_hanT.size();
												List<ProductDto> subList_2_hanT = new ArrayList<ProductDto>(subListbase_hanT.subList(4, last_hanT_2));
												for (int j = 0; j < subList_2_hanT.size(); j++) {
													ProductDto dto = subList_2_hanT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- 한화 팀웨어 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryHanhwaTeamwear"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryHanhwaTeamwear"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>

										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- 한화 응원용품 -->
							<div class="tab-pane fade" id="pills-hanhwa_cheering"
								role="tabpanel" aria-labelledby="pills-hanhwa_cheering-tab">
								<div class="carousel slide" id="carouselCategoryHanhwaCheering"
									data-bs-touch="false" data-bs-interval="false">

									<!-- 한화 응원용품 시작 -->
									<div class="carousel-inner">
										<!-- 한화 응원용품 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_hanC = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("한화 이글스")) {
														if (dto.getpCategory().equals("응원용품")) {

													subListbase_hanC.add(dto);
														}
													}
												}
												%>
												<%
												int last_hanC_1 = subListbase_hanC.size() < 4 ? subListbase_hanC.size() : 4;
												List<ProductDto> subList_1_hanC = new ArrayList<ProductDto>(subListbase_hanC.subList(0, last_hanC_1));
												for (int j = 0; j < subList_1_hanC.size(); j++) {
													ProductDto dto = subList_1_hanC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>



											</div>
										</div>

										<%
										if (subListbase_hanC.size() > 4) {
										%>
										<!-- 한화 응원용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_hanC_2 = subListbase_hanC.size() > 8 ? 8 : subListbase_hanC.size();
												List<ProductDto> subList_2_hanC = new ArrayList<ProductDto>(subListbase_hanC.subList(4, last_hanC_2));
												for (int j = 0; j < subList_2_hanC.size(); j++) {
													ProductDto dto = subList_2_hanC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- 한화 응원용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryHanhwaCheering"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryHanhwaCheering"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- 한화 야구용품 -->
							<div class="tab-pane fade" id="pills-hanhwa_baseball"
								role="tabpanel" aria-labelledby="pills-hanhwa_baseball-tab">
								<div class="carousel slide" id="carouselCategoryHanhwaBaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- 한화 야구용품 시작-->
									<div class="carousel-inner">
										<!-- 한화 야구용품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_hanB = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("한화 이글스")) {
														if (dto.getpCategory().equals("야구용품")) {

													subListbase_hanB.add(dto);
														}
													}
												}
												%>
												<%
												int last_hanB_1 = subListbase_hanB.size() < 4 ? subListbase_hanB.size() : 4;
												List<ProductDto> subList_1_hanB = new ArrayList<ProductDto>(subListbase_hanB.subList(0, last_hanB_1));
												for (int j = 0; j < subList_1_hanB.size(); j++) {
													ProductDto dto = subList_1_hanB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_hanB.size() > 4) {
										%>
										<!-- 한화 야구용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_hanB_2 = subListbase_hanB.size() > 8 ? 8 : subListbase_hanB.size();
												List<ProductDto> subList_2_hanB = new ArrayList<ProductDto>(subListbase_hanB.subList(4, last_hanB_2));
												for (int j = 0; j < subList_2_hanB.size(); j++) {
													ProductDto dto = subList_2_hanB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<!-- 한화 야구용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryHanhwaBaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryHanhwaBaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>

							<!-- 한화 기념상품-->
							<div class="tab-pane fade" id="pills-hanhwa_memory"
								role="tabpanel" aria-labelledby="pills-hanhwa_memory-tab">
								<div class="carousel slide" id="carouselCategoryHanhwaMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- 한화 기념상품 시작-->
									<div class="carousel-inner">
										<!-- 한화 기념상품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_hanM = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("한화 이글스")) {
														if (dto.getpCategory().equals("기념상품")) {

													subListbase_hanM.add(dto);
														}
													}
												}
												%>
												<%
												int last_hanM_1 = subListbase_hanM.size() < 4 ? subListbase_hanM.size() : 4;
												List<ProductDto> subList_1_hanM = new ArrayList<ProductDto>(subListbase_hanM.subList(0, last_hanM_1));
												for (int j = 0; j < subList_1_hanM.size(); j++) {
													ProductDto dto = subList_1_hanM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_hanM.size() > 4) {
										%>
										<!-- 한화 기념상품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_hanM_2 = subListbase_hanM.size() > 8 ? 8 : subListbase_hanM.size();
												List<ProductDto> subList_2_hanM = new ArrayList<ProductDto>(subListbase_hanM.subList(4, last_hanM_2));
												for (int j = 0; j < subList_2_hanM.size(); j++) {
													ProductDto dto = subList_2_hanM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<!-- 한화 기념상품 좌우이동-->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryHanhwaMemory"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryHanhwaMemory"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>
						</div>
					</div>

					<!-- KIA -->
					<div class="tab-pane fade" id="navv-kia" role="tabpanel"
						style="opacity: 1" aria-labelledby="navv-kia-tab">
						<ul class="navv navv-pills mb-5 justify-content-center"
							id="pills-tab-kia" role="tablist">
							<li class="navv-item" role="presentation">
								<button class="navv-link active" id="pills-kia_teamwear-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kia_teamwear"
									type="button" role="tab" aria-controls="pills-kia_teamwear"
									aria-selected="true">팀웨어</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kia_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kia_cheering"
									type="button" role="tab" aria-controls="pills-kia_cheering"
									aria-selected="false">응원용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kia_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kia_baseball"
									type="button" role="tab" aria-controls="pills-kia_baseball"
									aria-selected="false">야구용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kia_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kia_memory"
									type="button" role="tab" aria-controls="pills-kia_memory"
									aria-selected="false">기념상품</button>
							</li>
						</ul>
						<div class="tab-content" id="pills-tabContentKia">
							<!-- KIA 팀웨어 -->
							<div class="tab-pane fade show active" id="pills-kia_teamwear"
								role="tabpanel" aria-labelledby="pills-kia_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryKiaTeamwear"
									data-bs-touch="false" data-bs-interval="false">

									<!-- KIA 팀웨어 시작 -->
									<div class="carousel-inner">
										<!-- KIA 팀웨어 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_kiaT = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("KIA 타이거즈")) {
														if (dto.getpCategory().equals("팀웨어")) {

													subListbase_kiaT.add(dto);
														}
													}
												}
												%>
												<%
												int last_kiaT_1 = subListbase_kiaT.size() < 4 ? subListbase_kiaT.size() : 4;
												List<ProductDto> subList_1_kiaT = new ArrayList<ProductDto>(subListbase_kiaT.subList(0, last_kiaT_1));
												for (int j = 0; j < subList_1_kiaT.size(); j++) {
													ProductDto dto = subList_1_kiaT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<%
										if (subListbase_kiaT.size() > 4) {
										%>
										<!-- KIA 팀웨어 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_kiaT_2 = subListbase_kiaT.size() > 8 ? 8 : subListbase_kiaT.size();
												List<ProductDto> subList_2_kiaT = new ArrayList<ProductDto>(subListbase_kiaT.subList(4, last_kiaT_2));
												for (int j = 0; j < subList_2_kiaT.size(); j++) {
													ProductDto dto = subList_2_kiaT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- KIA 팀웨어 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKiaTeamwear"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKiaTeamwear"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>

										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- KIA 응원용품 -->
							<div class="tab-pane fade" id="pills-kia_cheering"
								role="tabpanel" aria-labelledby="pills-kia_cheering-tab">
								<div class="carousel slide" id="carouselCategoryKiaCheering"
									data-bs-touch="false" data-bs-interval="false">

									<!-- KIA 응원용품 시작 -->
									<div class="carousel-inner">
										<!-- KIA 응원용품 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_kiaC = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("KIA 타이거즈")) {
														if (dto.getpCategory().equals("응원용품")) {

													subListbase_kiaC.add(dto);
														}
													}
												}
												%>
												<%
												int last_kiaC_1 = subListbase_kiaC.size() < 4 ? subListbase_kiaC.size() : 4;
												List<ProductDto> subList_1_kiaC = new ArrayList<ProductDto>(subListbase_kiaC.subList(0, last_kiaC_1));
												for (int j = 0; j < subList_1_kiaC.size(); j++) {
													ProductDto dto = subList_1_kiaC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>



											</div>
										</div>

										<%
										if (subListbase_kiaC.size() > 4) {
										%>
										<!-- KIA 응원용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_kiaC_2 = subListbase_kiaC.size() > 8 ? 8 : subListbase_kiaC.size();
												List<ProductDto> subList_2_kiaC = new ArrayList<ProductDto>(subListbase_kiaC.subList(4, last_kiaC_2));
												for (int j = 0; j < subList_2_kiaC.size(); j++) {
													ProductDto dto = subList_2_kiaC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- KIA 응원용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKiaCheering"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKiaCheering"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- KIA 야구용품 -->
							<div class="tab-pane fade" id="pills-kia_baseball"
								role="tabpanel" aria-labelledby="pills-kia_baseball-tab">
								<div class="carousel slide" id="carouselCategoryKiaBaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- KIA 야구용품 시작-->
									<div class="carousel-inner">
										<!-- KIA 야구용품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_kiaB = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("KIA 타이거즈")) {
														if (dto.getpCategory().equals("야구용품")) {

													subListbase_kiaB.add(dto);
														}
													}
												}
												%>
												<%
												int last_kiaB_1 = subListbase_kiaB.size() < 4 ? subListbase_kiaB.size() : 4;
												List<ProductDto> subList_1_kiaB = new ArrayList<ProductDto>(subListbase_kiaB.subList(0, last_kiaB_1));
												for (int j = 0; j < subList_1_kiaB.size(); j++) {
													ProductDto dto = subList_1_kiaB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_kiaB.size() > 4) {
										%>
										<!-- KIA 야구용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_kiaB_2 = subListbase_kiaB.size() > 8 ? 8 : subListbase_kiaB.size();
												List<ProductDto> subList_2_kiaB = new ArrayList<ProductDto>(subListbase_kiaB.subList(4, last_kiaB_2));
												for (int j = 0; j < subList_2_kiaB.size(); j++) {
													ProductDto dto = subList_2_kiaB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<!-- KIA 야구용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKiaBaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKiaBaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>

							<!-- KIA 기념상품-->
							<div class="tab-pane fade" id="pills-kia_memory" role="tabpanel"
								aria-labelledby="pills-kia_memory-tab">
								<div class="carousel slide" id="carouselCategoryKiaMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- KIA 기념상품 시작-->
									<div class="carousel-inner">
										<!-- KIA 기념상품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_kiaM = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("KIA 타이거즈")) {
														if (dto.getpCategory().equals("기념상품")) {

													subListbase_kiaM.add(dto);
														}
													}
												}
												%>
												<%
												int last_kiaM_1 = subListbase_kiaM.size() < 4 ? subListbase_kiaM.size() : 4;
												List<ProductDto> subList_1_kiaM = new ArrayList<ProductDto>(subListbase_kiaM.subList(0, last_kiaM_1));
												for (int j = 0; j < subList_1_kiaM.size(); j++) {
													ProductDto dto = subList_1_kiaM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_kiaM.size() > 4) {
										%>
										<!-- KIA 기념상품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_kiaM_2 = subListbase_kiaM.size() > 8 ? 8 : subListbase_kiaM.size();
												List<ProductDto> subList_2_kiaM = new ArrayList<ProductDto>(subListbase_kiaM.subList(4, last_kiaM_2));
												for (int j = 0; j < subList_2_kiaM.size(); j++) {
													ProductDto dto = subList_2_kiaM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<!-- KIA 기념상품 좌우이동-->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKiaMemory"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKiaMemory"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>
						</div>
					</div>

					<!-- KT -->
					<div class="tab-pane fade" id="navv-kt" role="tabpanel"
						style="opacity: 1" aria-labelledby="navv-kt-tab">
						<ul class="navv navv-pills mb-5 justify-content-center"
							id="pills-tab-kt" role="tablist">
							<li class="navv-item" role="presentation">
								<button class="navv-link active" id="pills-kt_teamwear-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kt_teamwear"
									type="button" role="tab" aria-controls="pills-kt_teamwear"
									aria-selected="true">팀웨어</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kt_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kt_cheering"
									type="button" role="tab" aria-controls="pills-kt_cheering"
									aria-selected="false">응원용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kt_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kt_baseball"
									type="button" role="tab" aria-controls="pills-kt_baseball"
									aria-selected="false">야구용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kt_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kt_memory"
									type="button" role="tab" aria-controls="pills-kt_memory"
									aria-selected="false">기념상품</button>
							</li>
						</ul>
						<div class="tab-content" id="pills-tabContentKt">
							<!-- KT 팀웨어 -->
							<div class="tab-pane fade show active" id="pills-kt_teamwear"
								role="tabpanel" aria-labelledby="pills-kt_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryKtTeamwear"
									data-bs-touch="false" data-bs-interval="false">

									<!-- KT 팀웨어 시작 -->
									<div class="carousel-inner">
										<!-- KT 팀웨어 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_ktT = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("KT WIZ")) {
														if (dto.getpCategory().equals("팀웨어")) {

													subListbase_ktT.add(dto);
														}
													}
												}
												%>
												<%
												int last_ktT_1 = subListbase_ktT.size() < 4 ? subListbase_ktT.size() : 4;
												List<ProductDto> subList_1_ktT = new ArrayList<ProductDto>(subListbase_ktT.subList(0, last_ktT_1));
												for (int j = 0; j < subList_1_ktT.size(); j++) {
													ProductDto dto = subList_1_ktT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<%
										if (subListbase_ktT.size() > 4) {
										%>
										<!-- KT 팀웨어 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_ktT_2 = subListbase_ktT.size() > 8 ? 8 : subListbase_ktT.size();
												List<ProductDto> subList_2_ktT = new ArrayList<ProductDto>(subListbase_ktT.subList(4, last_ktT_2));
												for (int j = 0; j < subList_2_ktT.size(); j++) {
													ProductDto dto = subList_2_ktT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- KT 팀웨어 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKtTeamwear"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKtTeamwear"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>

										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- KT 응원용품 -->
							<div class="tab-pane fade" id="pills-kt_cheering" role="tabpanel"
								aria-labelledby="pills-kt_cheering-tab">
								<div class="carousel slide" id="carouselCategoryKtCheering"
									data-bs-touch="false" data-bs-interval="false">

									<!-- KT 응원용품 시작 -->
									<div class="carousel-inner">
										<!-- KT 응원용품 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_ktC = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("KT WIZ")) {
														if (dto.getpCategory().equals("응원용품")) {

													subListbase_ktC.add(dto);
														}
													}
												}
												%>
												<%
												int last_ktC_1 = subListbase_ktC.size() < 4 ? subListbase_ktC.size() : 4;
												List<ProductDto> subList_1_ktC = new ArrayList<ProductDto>(subListbase_ktC.subList(0, last_ktC_1));
												for (int j = 0; j < subList_1_ktC.size(); j++) {
													ProductDto dto = subList_1_ktC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>



											</div>
										</div>

										<%
										if (subListbase_ktC.size() > 4) {
										%>
										<!-- KT 응원용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_ktC_2 = subListbase_ktC.size() > 8 ? 8 : subListbase_ktC.size();
												List<ProductDto> subList_2_ktC = new ArrayList<ProductDto>(subListbase_ktC.subList(4, last_ktC_2));
												for (int j = 0; j < subList_2_ktC.size(); j++) {
													ProductDto dto = subList_2_ktC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- KT 응원용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKtCheering"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKtCheering"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- KT 야구용품 -->
							<div class="tab-pane fade" id="pills-kt_baseball" role="tabpanel"
								aria-labelledby="pills-kt_baseball-tab">
								<div class="carousel slide" id="carouselCategoryKtBaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- KT 야구용품 시작-->
									<div class="carousel-inner">
										<!-- KT 야구용품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_ktB = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("KT WIZ")) {
														if (dto.getpCategory().equals("야구용품")) {

													subListbase_ktB.add(dto);
														}
													}
												}
												%>
												<%
												int last_ktB_1 = subListbase_ktB.size() < 4 ? subListbase_ktB.size() : 4;
												List<ProductDto> subList_1_ktB = new ArrayList<ProductDto>(subListbase_ktB.subList(0, last_ktB_1));
												for (int j = 0; j < subList_1_ktB.size(); j++) {
													ProductDto dto = subList_1_ktB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_ktB.size() > 4) {
										%>
										<!-- KT 야구용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_ktB_2 = subListbase_ktB.size() > 8 ? 8 : subListbase_ktB.size();
												List<ProductDto> subList_2_ktB = new ArrayList<ProductDto>(subListbase_ktB.subList(4, last_ktB_2));
												for (int j = 0; j < subList_2_ktB.size(); j++) {
													ProductDto dto = subList_2_ktB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<!-- KT 야구용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKtBaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKtBaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>

							<!-- KT 기념상품-->
							<div class="tab-pane fade" id="pills-kt_memory" role="tabpanel"
								aria-labelledby="pills-kt_memory-tab">
								<div class="carousel slide" id="carouselCategoryKtMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- KT 기념상품 시작-->
									<div class="carousel-inner">
										<!-- KT 기념상품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_ktM = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("KT WIZ")) {
														if (dto.getpCategory().equals("기념상품")) {

													subListbase_ktM.add(dto);
														}
													}
												}
												%>
												<%
												int last_ktM_1 = subListbase_ktM.size() < 4 ? subListbase_ktM.size() : 4;
												List<ProductDto> subList_1_ktM = new ArrayList<ProductDto>(subListbase_ktM.subList(0, last_ktM_1));
												for (int j = 0; j < subList_1_ktM.size(); j++) {
													ProductDto dto = subList_1_ktM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_ktM.size() > 4) {
										%>
										<!-- KT 기념상품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_ktM_2 = subListbase_ktM.size() > 8 ? 8 : subListbase_ktM.size();
												List<ProductDto> subList_2_ktM = new ArrayList<ProductDto>(subListbase_ktM.subList(4, last_ktM_2));
												for (int j = 0; j < subList_2_ktM.size(); j++) {
													ProductDto dto = subList_2_ktM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<!-- KT 기념상품 좌우이동-->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKtMemory"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKtMemory"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>
						</div>
					</div>

					<!-- LG -->
					<div class="tab-pane fade" id="navv-lg" role="tabpanel"
						style="opacity: 1" aria-labelledby="navv-lg-tab">
						<ul class="navv navv-pills mb-5 justify-content-center"
							id="pills-tab-lg" role="tablist">
							<li class="navv-item" role="presentation">
								<button class="navv-link active" id="pills-lg_teamwear-tab"
									data-bs-toggle="pill" data-bs-target="#pills-lg_teamwear"
									type="button" role="tab" aria-controls="pills-lg_teamwear"
									aria-selected="true">팀웨어</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-lg_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-lg_cheering"
									type="button" role="tab" aria-controls="pills-lg_cheering"
									aria-selected="false">응원용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-lg_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-lg_baseball"
									type="button" role="tab" aria-controls="pills-lg_baseball"
									aria-selected="false">야구용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-lg_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-lg_memory"
									type="button" role="tab" aria-controls="pills-lg_memory"
									aria-selected="false">기념상품</button>
							</li>
						</ul>
						<div class="tab-content" id="pills-tabContentLg">
							<!-- LG 팀웨어 -->
							<div class="tab-pane fade show active" id="pills-lg_teamwear"
								role="tabpanel" aria-labelledby="pills-lg_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryLgTeamwear"
									data-bs-touch="false" data-bs-interval="false">

									<!-- LG 팀웨어 시작 -->
									<div class="carousel-inner">
										<!-- LG 팀웨어 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_lgT = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("LG 트윈스")) {
														if (dto.getpCategory().equals("팀웨어")) {

													subListbase_lgT.add(dto);
														}
													}
												}
												%>
												<%
												int last_lgT_1 = subListbase_lgT.size() < 4 ? subListbase_lgT.size() : 4;
												List<ProductDto> subList_1_lgT = new ArrayList<ProductDto>(subListbase_lgT.subList(0, last_lgT_1));
												for (int j = 0; j < subList_1_lgT.size(); j++) {
													ProductDto dto = subList_1_lgT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<%
										if (subListbase_lgT.size() > 4) {
										%>
										<!-- LG 팀웨어 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_lgT_2 = subListbase_lgT.size() > 8 ? 8 : subListbase_lgT.size();
												List<ProductDto> subList_2_lgT = new ArrayList<ProductDto>(subListbase_lgT.subList(4, last_lgT_2));
												for (int j = 0; j < subList_2_lgT.size(); j++) {
													ProductDto dto = subList_2_lgT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- LG 팀웨어 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryLgTeamwear"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryLgTeamwear"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>

										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- LG 응원용품 -->
							<div class="tab-pane fade" id="pills-lg_cheering" role="tabpanel"
								aria-labelledby="pills-lg_cheering-tab">
								<div class="carousel slide" id="carouselCategoryLgCheering"
									data-bs-touch="false" data-bs-interval="false">

									<!-- LG 응원용품 시작 -->
									<div class="carousel-inner">
										<!-- LG 응원용품 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_lgC = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("LG 트윈스")) {
														if (dto.getpCategory().equals("응원용품")) {

													subListbase_lgC.add(dto);
														}
													}
												}
												%>
												<%
												int last_lgC_1 = subListbase_lgC.size() < 4 ? subListbase_lgC.size() : 4;
												List<ProductDto> subList_1_lgC = new ArrayList<ProductDto>(subListbase_lgC.subList(0, last_lgC_1));
												for (int j = 0; j < subList_1_lgC.size(); j++) {
													ProductDto dto = subList_1_lgC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>



											</div>
										</div>

										<%
										if (subListbase_lgC.size() > 4) {
										%>
										<!-- LG 응원용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_lgC_2 = subListbase_lgC.size() > 8 ? 8 : subListbase_lgC.size();
												List<ProductDto> subList_2_lgC = new ArrayList<ProductDto>(subListbase_lgC.subList(4, last_lgC_2));
												for (int j = 0; j < subList_2_lgC.size(); j++) {
													ProductDto dto = subList_2_lgC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- LG 응원용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryLgCheering"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryLgCheering"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- LG 야구용품 -->
							<div class="tab-pane fade" id="pills-lg_baseball" role="tabpanel"
								aria-labelledby="pills-lg_baseball-tab">
								<div class="carousel slide" id="carouselCategoryLgBaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- LG 야구용품 시작-->
									<div class="carousel-inner">
										<!-- LG 야구용품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_lgB = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("LG 트윈스")) {
														if (dto.getpCategory().equals("야구용품")) {

													subListbase_lgB.add(dto);
														}
													}
												}
												%>
												<%
												int last_lgB_1 = subListbase_lgB.size() < 4 ? subListbase_lgB.size() : 4;
												List<ProductDto> subList_1_lgB = new ArrayList<ProductDto>(subListbase_lgB.subList(0, last_lgB_1));
												for (int j = 0; j < subList_1_lgB.size(); j++) {
													ProductDto dto = subList_1_lgB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_lgB.size() > 4) {
										%>
										<!-- LG 야구용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_lgB_2 = subListbase_lgB.size() > 8 ? 8 : subListbase_lgB.size();
												List<ProductDto> subList_2_lgB = new ArrayList<ProductDto>(subListbase_lgB.subList(4, last_lgB_2));
												for (int j = 0; j < subList_2_lgB.size(); j++) {
													ProductDto dto = subList_2_lgB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<!-- LG 야구용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryLgBaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryLgBaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>

							<!-- LG 기념상품-->
							<div class="tab-pane fade" id="pills-lg_memory" role="tabpanel"
								aria-labelledby="pills-lg_memory-tab">
								<div class="carousel slide" id="carouselCategoryLgMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- LG 기념상품 시작-->
									<div class="carousel-inner">
										<!-- LG 기념상품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_lgM = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("LG 트윈스")) {
														if (dto.getpCategory().equals("기념상품")) {

													subListbase_lgM.add(dto);
														}
													}
												}
												%>
												<%
												int last_lgM_1 = subListbase_lgM.size() < 4 ? subListbase_lgM.size() : 4;
												List<ProductDto> subList_1_lgM = new ArrayList<ProductDto>(subListbase_lgM.subList(0, last_lgM_1));
												for (int j = 0; j < subList_1_lgM.size(); j++) {
													ProductDto dto = subList_1_lgM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_lgM.size() > 4) {
										%>
										<!-- LG 기념상품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_lgM_2 = subListbase_lgM.size() > 8 ? 8 : subListbase_lgM.size();
												List<ProductDto> subList_2_lgM = new ArrayList<ProductDto>(subListbase_lgM.subList(4, last_lgM_2));
												for (int j = 0; j < subList_2_lgM.size(); j++) {
													ProductDto dto = subList_2_lgM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<!-- LG 기념상품 좌우이동-->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryLgMemory"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryLgMemory"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>
						</div>
					</div>

					<!-- NC -->
					<div class="tab-pane fade" id="navv-nc" role="tabpanel"
						style="opacity: 1" aria-labelledby="navv-nc-tab">
						<ul class="navv navv-pills mb-5 justify-content-center"
							id="pills-tab-nc" role="tablist">
							<li class="navv-item" role="presentation">
								<button class="navv-link active" id="pills-nc_teamwear-tab"
									data-bs-toggle="pill" data-bs-target="#pills-nc_teamwear"
									type="button" role="tab" aria-controls="pills-nc_teamwear"
									aria-selected="true">팀웨어</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-nc_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-nc_cheering"
									type="button" role="tab" aria-controls="pills-nc_cheering"
									aria-selected="false">응원용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-nc_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-nc_baseball"
									type="button" role="tab" aria-controls="pills-nc_baseball"
									aria-selected="false">야구용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-nc_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-nc_memory"
									type="button" role="tab" aria-controls="pills-nc_memory"
									aria-selected="false">기념상품</button>
							</li>
						</ul>
						<div class="tab-content" id="pills-tabContentNc">
							<!-- NC 팀웨어 -->
							<div class="tab-pane fade show active" id="pills-nc_teamwear"
								role="tabpanel" aria-labelledby="pills-nc_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryNcTeamwear"
									data-bs-touch="false" data-bs-interval="false">

									<!-- NC 팀웨어 시작 -->
									<div class="carousel-inner">
										<!-- NC 팀웨어 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_ncT = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("NC 다이노스")) {
														if (dto.getpCategory().equals("팀웨어")) {

													subListbase_ncT.add(dto);
														}
													}
												}
												%>
												<%
												int last_ncT_1 = subListbase_ncT.size() < 4 ? subListbase_ncT.size() : 4;
												List<ProductDto> subList_1_ncT = new ArrayList<ProductDto>(subListbase_ncT.subList(0, last_ncT_1));
												for (int j = 0; j < subList_1_ncT.size(); j++) {
													ProductDto dto = subList_1_ncT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<%
										if (subListbase_ncT.size() > 4) {
										%>
										<!-- NC 팀웨어 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_ncT_2 = subListbase_ncT.size() > 8 ? 8 : subListbase_ncT.size();
												List<ProductDto> subList_2_ncT = new ArrayList<ProductDto>(subListbase_ncT.subList(4, last_ncT_2));
												for (int j = 0; j < subList_2_ncT.size(); j++) {
													ProductDto dto = subList_2_ncT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- NC 팀웨어 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryNcTeamwear"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryNcTeamwear"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>

										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- NC 응원용품 -->
							<div class="tab-pane fade" id="pills-nc_cheering" role="tabpanel"
								aria-labelledby="pills-nc_cheering-tab">
								<div class="carousel slide" id="carouselCategoryNcCheering"
									data-bs-touch="false" data-bs-interval="false">

									<!-- NC 응원용품 시작 -->
									<div class="carousel-inner">
										<!-- NC 응원용품 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_ncC = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("NC 다이노스")) {
														if (dto.getpCategory().equals("응원용품")) {

													subListbase_ncC.add(dto);
														}
													}
												}
												%>
												<%
												int last_ncC_1 = subListbase_ncC.size() < 4 ? subListbase_ncC.size() : 4;
												List<ProductDto> subList_1_ncC = new ArrayList<ProductDto>(subListbase_ncC.subList(0, last_ncC_1));
												for (int j = 0; j < subList_1_ncC.size(); j++) {
													ProductDto dto = subList_1_ncC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>



											</div>
										</div>

										<%
										if (subListbase_ncC.size() > 4) {
										%>
										<!-- NC 응원용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_ncC_2 = subListbase_ncC.size() > 8 ? 8 : subListbase_ncC.size();
												List<ProductDto> subList_2_ncC = new ArrayList<ProductDto>(subListbase_ncC.subList(4, last_ncC_2));
												for (int j = 0; j < subList_2_ncC.size(); j++) {
													ProductDto dto = subList_2_ncC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- NC 응원용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryNcCheering"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryNcCheering"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- NC 야구용품 -->
							<div class="tab-pane fade" id="pills-nc_baseball" role="tabpanel"
								aria-labelledby="pills-nc_baseball-tab">
								<div class="carousel slide" id="carouselCategoryNcBaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- NC 야구용품 시작-->
									<div class="carousel-inner">
										<!-- NC 야구용품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_ncB = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("NC 다이노스")) {
														if (dto.getpCategory().equals("야구용품")) {

													subListbase_ncB.add(dto);
														}
													}
												}
												%>
												<%
												int last_ncB_1 = subListbase_ncB.size() < 4 ? subListbase_ncB.size() : 4;
												List<ProductDto> subList_1_ncB = new ArrayList<ProductDto>(subListbase_ncB.subList(0, last_ncB_1));
												for (int j = 0; j < subList_1_ncB.size(); j++) {
													ProductDto dto = subList_1_ncB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_ncB.size() > 4) {
										%>
										<!-- NC 야구용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_ncB_2 = subListbase_ncB.size() > 8 ? 8 : subListbase_ncB.size();
												List<ProductDto> subList_2_ncB = new ArrayList<ProductDto>(subListbase_ncB.subList(4, last_ncB_2));
												for (int j = 0; j < subList_2_ncB.size(); j++) {
													ProductDto dto = subList_2_ncB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<!-- NC 야구용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryNcBaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryNcBaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>

							<!-- NC 기념상품-->
							<div class="tab-pane fade" id="pills-nc_memory" role="tabpanel"
								aria-labelledby="pills-nc_memory-tab">
								<div class="carousel slide" id="carouselCategoryNcMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- NC 기념상품 시작-->
									<div class="carousel-inner">
										<!-- NC 기념상품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_ncM = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("NC 다이노스")) {
														if (dto.getpCategory().equals("기념상품")) {

													subListbase_ncM.add(dto);
														}
													}
												}
												%>
												<%
												int last_ncM_1 = subListbase_ncM.size() < 4 ? subListbase_ncM.size() : 4;
												List<ProductDto> subList_1_ncM = new ArrayList<ProductDto>(subListbase_ncM.subList(0, last_ncM_1));
												for (int j = 0; j < subList_1_ncM.size(); j++) {
													ProductDto dto = subList_1_ncM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_ncM.size() > 4) {
										%>
										<!-- NC 기념상품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_ncM_2 = subListbase_ncM.size() > 8 ? 8 : subListbase_ncM.size();
												List<ProductDto> subList_2_ncM = new ArrayList<ProductDto>(subListbase_ncM.subList(4, last_ncM_2));
												for (int j = 0; j < subList_2_ncM.size(); j++) {
													ProductDto dto = subList_2_ncM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<!-- NC 기념상품 좌우이동-->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryNcMemory"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryNcMemory"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>
						</div>
					</div>

					<!-- SSG -->
					<div class="tab-pane fade" id="navv-ssg" role="tabpanel"
						style="opacity: 1" aria-labelledby="navv-ssg-tab">
						<ul class="navv navv-pills mb-5 justify-content-center"
							id="pills-tab-ssg" role="tablist">
							<li class="navv-item" role="presentation">
								<button class="navv-link active" id="pills-ssg_teamwear-tab"
									data-bs-toggle="pill" data-bs-target="#pills-ssg_teamwear"
									type="button" role="tab" aria-controls="pills-ssg_teamwear"
									aria-selected="true">팀웨어</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-ssg_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-ssg_cheering"
									type="button" role="tab" aria-controls="pills-ssg_cheering"
									aria-selected="false">응원용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-ssg_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-ssg_baseball"
									type="button" role="tab" aria-controls="pills-ssg_baseball"
									aria-selected="false">야구용품</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-ssg_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-ssg_memory"
									type="button" role="tab" aria-controls="pills-ssg_memory"
									aria-selected="false">기념상품</button>
							</li>
						</ul>
						<div class="tab-content" id="pills-tabContentSsg">
							<!-- SSG 팀웨어 -->
							<div class="tab-pane fade show active" id="pills-ssg_teamwear"
								role="tabpanel" aria-labelledby="pills-ssg_teamwear-tab">
								<div class="carousel slide" id="carouselCategorySsgTeamwear"
									data-bs-touch="false" data-bs-interval="false">

									<!-- SSG 팀웨어 시작 -->
									<div class="carousel-inner">
										<!-- SSG 팀웨어 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_ssgT = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("SSG 랜더스")) {
														if (dto.getpCategory().equals("팀웨어")) {

													subListbase_ssgT.add(dto);
														}
													}
												}
												%>
												<%
												int last_ssgT_1 = subListbase_ssgT.size() < 4 ? subListbase_ssgT.size() : 4;
												List<ProductDto> subList_1_ssgT = new ArrayList<ProductDto>(subListbase_ssgT.subList(0, last_ssgT_1));
												for (int j = 0; j < subList_1_ssgT.size(); j++) {
													ProductDto dto = subList_1_ssgT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<%
										if (subListbase_ssgT.size() > 4) {
										%>
										<!-- SSG 팀웨어 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_ssgT_2 = subListbase_ssgT.size() > 8 ? 8 : subListbase_ssgT.size();
												List<ProductDto> subList_2_ssgT = new ArrayList<ProductDto>(subListbase_ssgT.subList(4, last_ssgT_2));
												for (int j = 0; j < subList_2_ssgT.size(); j++) {
													ProductDto dto = subList_2_ssgT.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- SSG 팀웨어 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategorySsgTeamwear"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategorySsgTeamwear"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>

										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- SSG 응원용품 -->
							<div class="tab-pane fade" id="pills-ssg_cheering"
								role="tabpanel" aria-labelledby="pills-ssg_cheering-tab">
								<div class="carousel slide" id="carouselCategorySsgCheering"
									data-bs-touch="false" data-bs-interval="false">

									<!-- SSG 응원용품 시작 -->
									<div class="carousel-inner">
										<!-- SSG 응원용품 첫번째 페이지 -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_ssgC = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("SSG 랜더스")) {
														if (dto.getpCategory().equals("응원용품")) {

													subListbase_ssgC.add(dto);
														}
													}
												}
												%>
												<%
												int last_ssgC_1 = subListbase_ssgC.size() < 4 ? subListbase_ssgC.size() : 4;
												List<ProductDto> subList_1_ssgC = new ArrayList<ProductDto>(subListbase_ssgC.subList(0, last_ssgC_1));
												for (int j = 0; j < subList_1_ssgC.size(); j++) {
													ProductDto dto = subList_1_ssgC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>



											</div>
										</div>

										<%
										if (subListbase_ssgC.size() > 4) {
										%>
										<!-- SSG 응원용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_ssgC_2 = subListbase_ssgC.size() > 8 ? 8 : subListbase_ssgC.size();
												List<ProductDto> subList_2_ssgC = new ArrayList<ProductDto>(subListbase_ssgC.subList(4, last_ssgC_2));
												for (int j = 0; j < subList_2_ssgC.size(); j++) {
													ProductDto dto = subList_2_ssgC.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>


										<!-- SSG 응원용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategorySsgCheering"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategorySsgCheering"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>

									</div>
								</div>

							</div>

							<!-- SSG 야구용품 -->
							<div class="tab-pane fade" id="pills-ssg_baseball"
								role="tabpanel" aria-labelledby="pills-ssg_baseball-tab">
								<div class="carousel slide" id="carouselCategorySsgBaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- SSG 야구용품 시작-->
									<div class="carousel-inner">
										<!-- SSG 야구용품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_ssgB = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("SSG 랜더스")) {
														if (dto.getpCategory().equals("야구용품")) {

													subListbase_ssgB.add(dto);
														}
													}
												}
												%>
												<%
												int last_ssgB_1 = subListbase_ssgB.size() < 4 ? subListbase_ssgB.size() : 4;
												List<ProductDto> subList_1_ssgB = new ArrayList<ProductDto>(subListbase_ssgB.subList(0, last_ssgB_1));
												for (int j = 0; j < subList_1_ssgB.size(); j++) {
													ProductDto dto = subList_1_ssgB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_ssgB.size() > 4) {
										%>
										<!-- SSG 야구용품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_ssgB_2 = subListbase_ssgB.size() > 8 ? 8 : subListbase_ssgB.size();
												List<ProductDto> subList_2_ssgB = new ArrayList<ProductDto>(subListbase_ssgB.subList(4, last_ssgB_2));
												for (int j = 0; j < subList_2_ssgB.size(); j++) {
													ProductDto dto = subList_2_ssgB.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<!-- SSG 야구용품 좌우이동 -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategorySsgBaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategorySsgBaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>

							<!-- SSG 기념상품-->
							<div class="tab-pane fade" id="pills-ssg_memory" role="tabpanel"
								aria-labelledby="pills-ssg_memory-tab">
								<div class="carousel slide" id="carouselCategorySsgMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- SSG 기념상품 시작-->
									<div class="carousel-inner">
										<!-- SSG 기념상품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_ssgM = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("SSG 랜더스")) {
														if (dto.getpCategory().equals("기념상품")) {

													subListbase_ssgM.add(dto);
														}
													}
												}
												%>
												<%
												int last_ssgM_1 = subListbase_ssgM.size() < 4 ? subListbase_ssgM.size() : 4;
												List<ProductDto> subList_1_ssgM = new ArrayList<ProductDto>(subListbase_ssgM.subList(0, last_ssgM_1));
												for (int j = 0; j < subList_1_ssgM.size(); j++) {
													ProductDto dto = subList_1_ssgM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>

											</div>
										</div>

										<%
										if (subListbase_ssgM.size() > 4) {
										%>
										<!-- SSG 기념상품 두번째 페이지 -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_ssgM_2 = subListbase_ssgM.size() > 8 ? 8 : subListbase_ssgM.size();
												List<ProductDto> subList_2_ssgM = new ArrayList<ProductDto>(subListbase_ssgM.subList(4, last_ssgM_2));
												for (int j = 0; j < subList_2_ssgM.size(); j++) {
													ProductDto dto = subList_2_ssgM.get(j);
												%>
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100" src="<%=dto.getpImage()%>"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate"><%=dto.getpName()%></h5>
															<div class="fw-bold">
																<span class="text-primary"><%=nf.format(dto.getPrice())%></span>
															</div>
														</div>
														<a class="stretched-link"
															href="product_detailPage.jsp?pId=<%=dto.getpId()%>"></a>
													</div>
												</div>
												<%
												}
												%>


											</div>
										</div>

										<!-- SSG 기념상품 좌우이동-->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategorySsgMemory"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategorySsgMemory"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
										<%
										}
										%>
									</div>
								</div>


							</div>
						</div>
					</div>
				</div>

				</navv>

				<div class="col-12 d-flex justify-content-center mt-4">
					<a class="btn btn-lg btn-dark" href="product_listPage.jsp">View
						All </a>
				</div>

			</div>
		</div>

	</section>
	<!-- 	</main> -->

	<script src="../assets/vendors/bootstrap/bootstrap.min_pnav.js"></script>
	<link
		href="https://fonts.googleapis.com/css2?family=Jost:wght@200;300;400;500;600;700;800;900&amp;display=swap"
		rel="stylesheet" />
</body>
</html>