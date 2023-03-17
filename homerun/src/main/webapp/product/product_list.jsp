<%@page import="java.text.NumberFormat"%>
<%@page import="data.dto.ProductDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>HOMERUN | ShopList</title>
<link href="../assets/css/theme.css" rel="stylesheet" />

<link href="../assets/css/styles_footer.css" rel="stylesheet" />

<style>
#navv-doosan, #navv-kiwoom, #navv-samsung, #navv-lg, #navv-kt, #navv-ssg,
	#navv-nc, #navv-lotte, #navv-kia, #navv-hanhwa, #pills-doosan_teamwear,
	#pills-doosan_cheering, #pills-doosan_baseball,
	#pills-doosan_commemoration, #pills-lotte_teamwear,
	#pills-lotte_cheering, #pills-lotte_baseball,
	#pills-lotte_commemoration, #pills-samsung_teamwear,
	#pills-samsung_cheering, #pills-samsung_baseball,
	#pills-samsung_commemoration, #pills-kiwoom_teamwear,
	#pills-kiwoom_cheering, #pills-kiwoom_baseball,
	#pills-kiwoom_commemoration, #pills-lg_teamwear, #pills-lg_cheering,
	#pills-lg_baseball, #pills-lg_commemoration, #pills-nc_teamwear,
	#pills-nc_cheering, #pills-nc_baseball, #pills-nc_commemoration,
	#pills-hanhwa_teamwear, #pills-hanhwa_cheering, #pills-hanhwa_baseball,
	#pills-hanhwa_commemoration, #pills-kia_teamwear, #pills-kia_cheering,
	#pills-kia_baseball, #pills-kia_commemoration, #pills-kt_teamwear,
	#pills-kt_cheering, #pills-kt_baseball, #pills-kt_commemoration,
	#pills-ssg_teamwear, #pills-ssg_cheering, #pills-ssg_baseball,
	#pills-ssg_commemoration {
	opacity: 1;
}
</style>

</head>
<%
ProductDao dao = new ProductDao();
List<ProductDto> list = dao.selectAllProduct();

NumberFormat nf = NumberFormat.getCurrencyInstance();
%>
<body>
	<section id="categoryWomen">

		<div class="row h-100">
			<div class="col-lg-7 mx-auto text-center mt-5 mb-6">
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
								<button class="navv-link" id="pills-doosan_commemoration-tab"
									data-bs-toggle="pill"
									data-bs-target="#pills-doosan_commemoration" type="button"
									role="tab" aria-controls="pills-doosan_commemoration"
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
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("두산 베어스")) {
														if (dto.getpCategory().equals("팀웨어")) {
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
												}
												}
												%>

											</div>
										</div>
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
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("두산 베어스")) {
														if (dto.getpCategory().equals("응원용품")) {
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
												}
												}
												%>


											</div>
										</div>


									</div>
								</div>
							</div>

							<!-- 두산 야구용품 -->
							<div class="tab-pane fade" id="pills-doosan_baseball"
								role="tabpanel" aria-labelledby="pills-doosan_baseball-tab">
								<div class="carousel slide" id="carouselCategoryDoosanbaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- 두산 야구용품 시작-->
									<div class="carousel-inner">
										<!-- 두산 야구용품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("두산 베어스")) {
														if (dto.getpCategory().equals("야구용품")) {
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
												}
												}
												%>

											</div>
										</div>


									</div>
								</div>
							</div>

							<!-- 두산 기념상품-->
							<div class="tab-pane fade" id="pills-doosan_commemoration"
								role="tabpanel" aria-labelledby="pills-doosan_commemoration-tab">
								<div class="carousel slide"
									id="carouselCategoryDoosanCommemoration" data-bs-touch="false"
									data-bs-interval="false">
									<!-- 두산 기념상품 시작-->
									<div class="carousel-inner">
										<!-- 두산 기념상품 첫번째 페이지-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("두산 베어스")) {
														if (dto.getpCategory().equals("기념상품")) {
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
												}
												}
												%>
											</div>
										</div>


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
										<button class="navv-link" id="pills-lotte_commemoration-tab"
											data-bs-toggle="pill"
											data-bs-target="#pills-lotte_commemoration" type="button"
											role="tab" aria-controls="pills-lotte_commemoration"
											aria-selected="false">기념상품</button>
									</li>
								</ul>
								<div class="tab-content" id="pills-tabContentLotte">
									<!-- 롯데 팀웨어 -->
									<div class="tab-pane fade show active"
										id="pills-lotte_teamwear" style="opacity: 1" role="tabpanel"
										aria-labelledby="pills-lotte_teamwear-tab">
										<div class="carousel slide" id="carouselCategoryLotteTeamwear"
											data-bs-touch="false" data-bs-interval="false">
											<!-- 롯데 팀웨어 시작 -->
											<div class="carousel-inner">

												<!-- 롯데 팀웨어 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
														for (ProductDto dto : list) {
															if (dto.getTeamName().equals("롯데 자이언츠")) {
																if (dto.getpCategory().equals("팀웨어")) {
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
														}
														}
														%>


													</div>
												</div>





											</div>
										</div>

									</div>

									<!-- 롯데 응원용품 -->
									<div class="tab-pane fade" id="pills-lotte_cheering"
										style="opacity: 1" role="tabpanel"
										aria-labelledby="pills-lotte_cheering-tab">
										<div class="carousel slide" id="carouselCategoryLotteCheering"
											data-bs-touch="false" data-bs-interval="false">
											<!-- 롯데 응원용품 시작 -->
											<div class="carousel-inner">
												<!-- 롯데 응원용품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("롯데 자이언츠")) {
														if (dto.getpCategory().equals("응원용품")) {
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
												}
												}
												%>
													
														
														
													</div>
												</div>

												

												
											</div>
										</div>

									</div>

									<!-- 롯데 야구용품 -->
									<div class="tab-pane fade" id="pills-lotte_baseball"
										style="opacity: 1" role="tabpanel"
										aria-labelledby="pills-lotte_baseball-tab">
										<div class="carousel slide" id="carouselCategoryLottebaseball"
											data-bs-touch="false" data-bs-interval="false">
											<!-- 롯데 야구용품 시작 -->
											<div class="carousel-inner">
												<!-- 롯데 야구용품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("롯데 자이언츠")) {
														if (dto.getpCategory().equals("야구용품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

												

												
											</div>
										</div>
									</div>

									<!-- 롯데 기념상품 -->
									<div class="tab-pane fade" id="pills-lotte_commemoration"
										style="opacity: 1" role="tabpanel"
										aria-labelledby="pills-lotte_commemoration-tab">
										<div class="carousel slide"
											id="carouselCategoryLotteCommemoration" data-bs-touch="false"
											data-bs-interval="false">
											<!-- 롯데 기념상품 시작 -->
											<div class="carousel-inner">
												<!-- 롯데 기념상품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("롯데 자이언츠")) {
														if (dto.getpCategory().equals("기념상품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

											

												
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
										<button class="navv-link active"
											id="pills-samsung_teamwear-tab" data-bs-toggle="pill"
											data-bs-target="#pills-samsung_teamwear" type="button"
											role="tab" aria-controls="pills-samsung_teamwear"
											aria-selected="true">팀웨어</button>
									</li>
									<li class="navv-item" role="presentation">
										<button class="navv-link" id="pills-samsung_cheering-tab"
											data-bs-toggle="pill"
											data-bs-target="#pills-samsung_cheering" type="button"
											role="tab" aria-controls="pills-samsung_cheering"
											aria-selected="false">응원용품</button>
									</li>
									<li class="navv-item" role="presentation">
										<button class="navv-link" id="pills-samsung_baseball-tab"
											data-bs-toggle="pill"
											data-bs-target="#pills-samsung_baseball" type="button"
											role="tab" aria-controls="pills-samsung_baseball"
											aria-selected="false">야구용품</button>
									</li>
									<li class="navv-item" role="presentation">
										<button class="navv-link" id="pills-samsung_commemoration-tab"
											data-bs-toggle="pill"
											data-bs-target="#pills-samsung_commemoration" type="button"
											role="tab" aria-controls="pills-samsung_commemoration"
											aria-selected="false">기념상품</button>
									</li>
								</ul>

								<div class="tab-content" id="pills-tabContentSamsung">
									<!-- 삼성 팀웨어 -->
									<div class="tab-pane fade show active"
										id="pills-samsung_teamwear" role="tabpanel"
										aria-labelledby="pills-samsung_teamwear-tab">
										<div class="carousel slide"
											id="carouselCategorySamsungTeamwear" data-bs-touch="false"
											data-bs-interval="false">
											<!-- 삼성 팀웨어 시작 -->
											<div class="carousel-inner">
												<!-- 삼성 팀웨어 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("삼성 라이온즈")) {
														if (dto.getpCategory().equals("팀웨어")) {
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
												}
												}
												%>
														
														
														
													</div>
												</div>

												
						
											</div>
										</div>
									</div>

									<!-- 삼성 응원용품 -->
									<div class="tab-pane fade" id="pills-samsung_cheering"
										role="tabpanel" aria-labelledby="pills-samsung_cheering-tab">
										<div class="carousel slide"
											id="carouselCategorySamsungCheering" data-bs-touch="false"
											data-bs-interval="false">
											<!-- 삼성 응원용품 시작 -->
											<div class="carousel-inner">
												<!-- 삼성 응원용품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("삼성 라이온즈")) {
														if (dto.getpCategory().equals("응원용품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

												
											</div>
										</div>
									</div>

									<!-- 삼성 야구용품 -->
									<div class="tab-pane fade" id="pills-samsung_baseball"
										role="tabpanel" aria-labelledby="pills-samsung_baseball-tab">
										<div class="carousel slide"
											id="carouselCategorySamsungbaseball" data-bs-touch="false"
											data-bs-interval="false">
											<!-- 삼성 야구용품 시작 -->
											<div class="carousel-inner">
												<!-- 삼성 야구용품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("삼성 라이온즈")) {
														if (dto.getpCategory().equals("야구용품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

												
											</div>
										</div>
									</div>

									<!-- 삼성 기념상품 -->
									<div class="tab-pane fade" id="pills-samsung_commemoration"
										role="tabpanel"
										aria-labelledby="pills-samsung_commemoration-tab">
										<div class="carousel slide"
											id="carouselCategorySamsungCommemoration"
											data-bs-touch="false" data-bs-interval="false">
											<!-- 삼성 기념상품 시작 -->
											<div class="carousel-inner">
												<!-- 삼성 기념상품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("삼성 라이온즈")) {
														if (dto.getpCategory().equals("기념상품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

												
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- 키움 -->
							<div class="tab-pane fade" id="navv-kiwoom" role="tabpanel"
								aria-labelledby="navv-kiwoom-tab">
								<ul class="navv navv-pills mb-5 justify-content-center"
									id="pills-tab-kiwoom" role="tablist">
									<li class="navv-item" role="presentation">
										<button class="navv-link active"
											id="pills-kiwoom_teamwear-tab" data-bs-toggle="pill"
											data-bs-target="#pills-kiwoom_teamwear" type="button"
											role="tab" aria-controls="pills-kiwoom_teamwear"
											aria-selected="true">팀웨어</button>
									</li>
									<li class="navv-item" role="presentation">
										<button class="navv-link" id="pills-kiwoom_cheering-tab"
											data-bs-toggle="pill" data-bs-target="#pills-kiwoom_cheering"
											type="button" role="tab"
											aria-controls="pills-kiwoom_cheering" aria-selected="false">응원용품</button>
									</li>
									<li class="navv-item" role="presentation">
										<button class="navv-link" id="pills-kiwoom_baseball-tab"
											data-bs-toggle="pill" data-bs-target="#pills-kiwoom_baseball"
											type="button" role="tab"
											aria-controls="pills-kiwoom_baseball" aria-selected="false">야구용품</button>
									</li>
									<li class="navv-item" role="presentation">
										<button class="navv-link" id="pills-kiwoom_commemoration-tab"
											data-bs-toggle="pill"
											data-bs-target="#pills-kiwoom_commemoration" type="button"
											role="tab" aria-controls="pills-kiwoom_commemoration"
											aria-selected="false">기념상품</button>
									</li>
								</ul>

								<div class="tab-content" id="pills-tabContentKiwoom">
									<!-- 키움 팀웨어 -->
									<div class="tab-pane fade show active"
										id="pills-kiwoom_teamwear" role="tabpanel"
										aria-labelledby="pills-kiwoom_teamwear-tab">
										<div class="carousel slide"
											id="carouselCategoryKiwoomTeamwear" data-bs-touch="false"
											data-bs-interval="false">
											<!-- 키움 팀웨어 시작 -->
											<div class="carousel-inner">
												<!-- 키움 팀웨어 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("키움 히어로즈")) {
														if (dto.getpCategory().equals("팀웨어")) {
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
												}
												}
												%>
														
													
													</div>
												</div>

												
											</div>
										</div>
									</div>

									<!-- 키움 응원용품 -->
									<div class="tab-pane fade" id="pills-kiwoom_cheering"
										role="tabpanel" aria-labelledby="pills-kiwoom_cheering-tab">
										<div class="carousel slide"
											id="carouselCategoryKiwoomCheering" data-bs-touch="false"
											data-bs-interval="false">
											<!-- 키움 응원용품 시작 -->
											<div class="carousel-inner">
												<!-- 키움 응원용품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("키움 히어로즈")) {
														if (dto.getpCategory().equals("응원용품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

												
											</div>
										</div>
									</div>

									<!-- 키움 야구용품 -->
									<div class="tab-pane fade" id="pills-kiwoom_baseball"
										role="tabpanel" aria-labelledby="pills-kiwoom_baseball-tab">
										<div class="carousel slide"
											id="carouselCategoryKiwoombaseball" data-bs-touch="false"
											data-bs-interval="false">
											<!-- 키움 야구용품 시작 -->
											<div class="carousel-inner">
												<!-- 키움 야구용품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("키움 히어로즈")) {
														if (dto.getpCategory().equals("야구용품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

												
											</div>
										</div>

									</div>

									<!-- 키움 기념상품 -->
									<div class="tab-pane fade" id="pills-kiwoom_commemoration"
										role="tabpanel"
										aria-labelledby="pills-kiwoom_commemoration-tab">
										<div class="carousel slide"
											id="carouselCategoryKiwoomCommemoration"
											data-bs-touch="false" data-bs-interval="false">
											<!-- 키움 기념상품 시작 -->
											<div class="carousel-inner">
												<!-- 키움 기념상품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("키움 히어로즈")) {
														if (dto.getpCategory().equals("기념상품")) {
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
												}
												}
												%>
													
														
													</div>
												</div>

												
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
										<button class="navv-link active"
											id="pills-hanhwa_teamwear-tab" data-bs-toggle="pill"
											data-bs-target="#pills-hanhwa_teamwear" type="button"
											role="tab" aria-controls="pills-hanhwa_teamwear"
											aria-selected="true">팀웨어</button>
									</li>
									<li class="navv-item" role="presentation">
										<button class="navv-link" id="pills-hanhwa_cheering-tab"
											data-bs-toggle="pill" data-bs-target="#pills-hanhwa_cheering"
											type="button" role="tab"
											aria-controls="pills-hanhwa_cheering" aria-selected="false">응원용품</button>
									</li>
									<li class="navv-item" role="presentation">
										<button class="navv-link" id="pills-hanhwa_baseball-tab"
											data-bs-toggle="pill" data-bs-target="#pills-hanhwa_baseball"
											type="button" role="tab"
											aria-controls="pills-hanhwa_baseball" aria-selected="false">야구용품</button>
									</li>
									<li class="navv-item" role="presentation">
										<button class="navv-link" id="pills-hanhwa_commemoration-tab"
											data-bs-toggle="pill"
											data-bs-target="#pills-hanhwa_commemoration" type="button"
											role="tab" aria-controls="pills-hanhwa_commemoration"
											aria-selected="false">기념상품</button>
									</li>
								</ul>

								<div class="tab-content" id="pills-tabContentHanhwa">
									<!-- 한화 팀웨어 -->
									<div class="tab-pane fade show active"
										id="pills-hanhwa_teamwear" role="tabpanel"
										aria-labelledby="pills-hanhwa_teamwear-tab">
										<div class="carousel slide"
											id="carouselCategoryHanhwaTeamwear" data-bs-touch="false"
											data-bs-interval="false">
											<!-- 한화 팀웨어 시작 -->
											<div class="carousel-inner">
												<!-- 한화 팀웨어 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("한화 이글스")) {
														if (dto.getpCategory().equals("팀웨어")) {
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
												}
												}
												%>
													
														
													</div>
												</div>

												
											</div>
										</div>
									</div>

									<!-- 한화 응원용품 -->
									<div class="tab-pane fade" id="pills-hanhwa_cheering"
										role="tabpanel" aria-labelledby="pills-hanhwa_cheering-tab">
										<div class="carousel slide"
											id="carouselCategoryHanhwaCheering" data-bs-touch="false"
											data-bs-interval="false">
											<!-- 한화 응원용품 시작 -->
											<div class="carousel-inner">
												<!-- 한화 응원용품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("한화 이글스")) {
														if (dto.getpCategory().equals("응원용품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

							</div>
										</div>
									</div>

									<!-- 한화 야구용품 -->
									<div class="tab-pane fade" id="pills-hanhwa_baseball"
										role="tabpanel" aria-labelledby="pills-hanhwa_baseball-tab">
										<div class="carousel slide"
											id="carouselCategoryHanhwabaseball" data-bs-touch="false"
											data-bs-interval="false">
											<!-- 한화 야구용품 시작 -->
											<div class="carousel-inner">
												<!-- 한화 야구용품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("한화 이글스")) {
														if (dto.getpCategory().equals("야구용품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

											
											</div>
										</div>
									</div>

									<!-- 한화 기념상품 -->
									<div class="tab-pane fade" id="pills-hanhwa_commemoration"
										role="tabpanel"
										aria-labelledby="pills-hanhwa_commemoration-tab">
										<div class="carousel slide"
											id="carouselCategoryHanhwaCommemoration"
											data-bs-touch="false" data-bs-interval="false">
											<!-- 한화 기념상품 시작 -->
											<div class="carousel-inner">
												<!-- 한화 기념상품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("한화 이글스")) {
														if (dto.getpCategory().equals("기념상품")) {
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
												}
												}
												%>
													
														
													</div>
												</div>

											
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
										<button class="navv-link" id="pills-kia_commemoration-tab"
											data-bs-toggle="pill"
											data-bs-target="#pills-kia_commemoration" type="button"
											role="tab" aria-controls="pills-kia_commemoration"
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
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("KIA 타이거즈")) {
														if (dto.getpCategory().equals("팀웨어")) {
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
												}
												}
												%>
											
														
													</div>
												</div>

											
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
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("KIA 타이거즈")) {
														if (dto.getpCategory().equals("응원용품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

											
											</div>
										</div>
									</div>

									<!-- KIA 야구용품 -->
									<div class="tab-pane fade" id="pills-kia_baseball"
										role="tabpanel" aria-labelledby="pills-kia_baseball-tab">
										<div class="carousel slide" id="carouselCategoryKiabaseball"
											data-bs-touch="false" data-bs-interval="false">
											<!-- KIA 야구용품 시작 -->
											<div class="carousel-inner">
												<!-- KIA 야구용품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("KIA 타이거즈")) {
														if (dto.getpCategory().equals("야구용품")) {
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
												}
												}
												%>
													
														
													</div>
												</div>

											
											</div>
										</div>
									</div>

									<!-- KIA 기념상품 -->
									<div class="tab-pane fade" id="pills-kia_commemoration"
										role="tabpanel" aria-labelledby="pills-kia_commemoration-tab">
										<div class="carousel slide"
											id="carouselCategoryKiaCommemoration" data-bs-touch="false"
											data-bs-interval="false">
											<!-- KIA 기념상품 시작 -->
											<div class="carousel-inner">
												<!-- KIA 기념상품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("KIA 타이거즈")) {
														if (dto.getpCategory().equals("기념상품")) {
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
												}
												}
												%>
														
													</div>
												</div>

												
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
										<button class="navv-link" id="pills-kt_commemoration-tab"
											data-bs-toggle="pill"
											data-bs-target="#pills-kt_commemoration" type="button"
											role="tab" aria-controls="pills-kt_commemoration"
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
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("KT WIZ")) {
														if (dto.getpCategory().equals("팀웨어")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

												
											</div>
										</div>
									</div>

									<!-- KT 응원용품 -->
									<div class="tab-pane fade" id="pills-kt_cheering"
										role="tabpanel" aria-labelledby="pills-kt_cheering-tab">
										<div class="carousel slide" id="carouselCategoryKtCheering"
											data-bs-touch="false" data-bs-interval="false">
											<!-- KT 응원용품 시작 -->
											<div class="carousel-inner">
												<!-- KT 응원용품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("KT WIZ")) {
														if (dto.getpCategory().equals("응원용품")) {
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
												}
												}
												%>
													
														
													</div>
												</div>

											
											</div>
										</div>
									</div>

									<!-- KT 야구용품 -->
									<div class="tab-pane fade" id="pills-kt_baseball"
										role="tabpanel" aria-labelledby="pills-kt_baseball-tab">
										<div class="carousel slide" id="carouselCategoryKtbaseball"
											data-bs-touch="false" data-bs-interval="false">
											<!-- KT 야구용품 시작 -->
											<div class="carousel-inner">
												<!-- KT 야구용품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("KT WIZ")) {
														if (dto.getpCategory().equals("야구용품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

											
											</div>
										</div>
									</div>

									<!-- KT 기념상품 -->
									<div class="tab-pane fade" id="pills-kt_commemoration"
										role="tabpanel" aria-labelledby="pills-kt_commemoration-tab">
										<div class="carousel slide"
											id="carouselCategoryKtCommemoration" data-bs-touch="false"
											data-bs-interval="false">
											<!-- KT 기념상품 시작 -->
											<div class="carousel-inner">
												<!-- KT 기념상품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("KT WIZ")) {
														if (dto.getpCategory().equals("기념상품")) {
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
												}
												}
												%>
													
														
													</div>
												</div>

											
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
										<button class="navv-link" id="pills-lg_commemoration-tab"
											data-bs-toggle="pill"
											data-bs-target="#pills-lg_commemoration" type="button"
											role="tab" aria-controls="pills-lg_commemoration"
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
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("LG 트윈스")) {
														if (dto.getpCategory().equals("팀웨어")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

											
											</div>
										</div>
									</div>

									<!-- LG 응원용품 -->
									<div class="tab-pane fade" id="pills-lg_cheering"
										role="tabpanel" aria-labelledby="pills-lg_cheering-tab">
										<div class="carousel slide" id="carouselCategoryLgCheering"
											data-bs-touch="false" data-bs-interval="false">
											<!-- LG 응원용품 시작 -->
											<div class="carousel-inner">
												<!-- LG 응원용품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
															<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("LG 트윈스")) {
														if (dto.getpCategory().equals("응원용품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

												
											</div>
										</div>
									</div>

									<!-- LG 야구용품 -->
									<div class="tab-pane fade" id="pills-lg_baseball"
										role="tabpanel" aria-labelledby="pills-lg_baseball-tab">
										<div class="carousel slide" id="carouselCategoryLgbaseball"
											data-bs-touch="false" data-bs-interval="false">
											<!-- LG 야구용품 시작 -->
											<div class="carousel-inner">
												<!-- LG 야구용품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
															<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("LG 트윈스")) {
														if (dto.getpCategory().equals("야구용품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

											
											</div>
										</div>

									</div>

									<!-- LG 기념상품 -->
									<div class="tab-pane fade" id="pills-lg_commemoration"
										role="tabpanel" aria-labelledby="pills-lg_commemoration-tab">
										<div class="carousel slide"
											id="carouselCategoryLgCommemoration" data-bs-touch="false"
											data-bs-interval="false">
											<!-- LG 기념상품 시작 -->
											<div class="carousel-inner">
												<!-- LG 기념상품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
															<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("LG 트윈스")) {
														if (dto.getpCategory().equals("기념상품")) {
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
												}
												}
												%>
														
													</div>
												</div>

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
										<button class="navv-link" id="pills-nc_commemoration-tab"
											data-bs-toggle="pill"
											data-bs-target="#pills-nc_commemoration" type="button"
											role="tab" aria-controls="pills-nc_commemoration"
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
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("NC 다이노스")) {
														if (dto.getpCategory().equals("팀웨어")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

												
											</div>
										</div>
									</div>

									<!-- NC 응원용품 -->
									<div class="tab-pane fade" id="pills-nc_cheering"
										role="tabpanel" aria-labelledby="pills-nc_cheering-tab">
										<div class="carousel slide" id="carouselCategoryNcCheering"
											data-bs-touch="false" data-bs-interval="false">
											<!-- NC 응원용품 시작 -->
											<div class="carousel-inner">
												<!-- NC 응원용품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
															<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("NC 다이노스")) {
														if (dto.getpCategory().equals("응원용품")) {
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
												}
												}
												%>
													
														
													</div>
												</div>

												
											</div>
										</div>
									</div>

									<!-- NC 야구용품 -->
									<div class="tab-pane fade" id="pills-nc_baseball"
										role="tabpanel" aria-labelledby="pills-nc_baseball-tab">
										<div class="carousel slide" id="carouselCategoryNcbaseball"
											data-bs-touch="false" data-bs-interval="false">
											<!-- NC 야구용품 시작 -->
											<div class="carousel-inner">
												<!-- NC 야구용품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("NC 다이노스")) {
														if (dto.getpCategory().equals("야구용품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

												
											</div>
										</div>
									</div>

									<!-- NC 기념상품 -->
									<div class="tab-pane fade" id="pills-nc_commemoration"
										role="tabpanel" aria-labelledby="pills-nc_commemoration-tab">
										<div class="carousel slide"
											id="carouselCategoryNcCommemoration" data-bs-touch="false"
											data-bs-interval="false">
											<!-- NC 기념상품 시작 -->
											<div class="carousel-inner">
												<!-- NC 기념상품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("NC 다이노스")) {
														if (dto.getpCategory().equals("기념상품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

												
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
										<button class="navv-link" id="pills-ssg_commemoration-tab"
											data-bs-toggle="pill"
											data-bs-target="#pills-ssg_commemoration" type="button"
											role="tab" aria-controls="pills-ssg_commemoration"
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
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("SSG 랜더스")) {
														if (dto.getpCategory().equals("팀웨어")) {
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
												}
												}
												%>
														
														
														
													</div>
												</div>

												
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
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("SSG 랜더스")) {
														if (dto.getpCategory().equals("응원용품")) {
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
												}
												}
												%>
													
														
													</div>
												</div>

												
											</div>
										</div>
									</div>

									<!-- SSG 야구용품 -->
									<div class="tab-pane fade" id="pills-ssg_baseball"
										role="tabpanel" aria-labelledby="pills-ssg_baseball-tab">
										<div class="carousel slide" id="carouselCategorySsgbaseball"
											data-bs-touch="false" data-bs-interval="false">
											<!-- SSG 야구용품 시작 -->
											<div class="carousel-inner">
												<!-- SSG 야구용품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("SSG 랜더스")) {
														if (dto.getpCategory().equals("야구용품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

												
											</div>
										</div>
									</div>

									<!-- SSG 기념상품 -->
									<div class="tab-pane fade" id="pills-ssg_commemoration"
										role="tabpanel" aria-labelledby="pills-ssg_commemoration-tab">
										<div class="carousel slide"
											id="carouselCategorySsgCommemoration" data-bs-touch="false"
											data-bs-interval="false">
											<!-- SSG 기념상품 시작 -->
											<div class="carousel-inner">
												<!-- SSG 기념상품 첫번째 페이지 -->
												<div class="carousel-item active" data-bs-interval="10000">
													<div class="row h-100 align-items-center g-2">
														<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("SSG 랜더스")) {
														if (dto.getpCategory().equals("기념상품")) {
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
												}
												}
												%>
														
														
													</div>
												</div>

												
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
				</navv>
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