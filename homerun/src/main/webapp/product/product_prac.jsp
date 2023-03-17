<%@page import="java.util.ArrayList"%>
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
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>

<%
ProductDao dao = new ProductDao();
List<ProductDto> list = dao.selectAllProduct();

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
					<h1 class="fw-semi-bold lh-sm fs-4 fs-lg-5 fs-xl-6">23����
						�¶��ν����</h1>
					<p class="mb-5 fs-1">23���� �� ������ �� ����� ��ǰ�� ������ �� �ֽ��ϴ�.</p>
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
								<h5 class="fw-bold text-1000 text-truncate">����Ƽ���� 2022 �ƽ
									Ȩ ������</h5>
								<div class="fw-bold">
									<span class="text-600 me-2 text-decoration-line-through">109,900��</span><span
										class="text-primary">89,900��</span>
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
								<h5 class="fw-bold text-1000 text-truncate">������ 23 ������ķ�� ����</h5>
								<div class="fw-bold">
									<span class="text-600 me-2 text-decoration-line-through">39,000��</span><span
										class="text-primary">35,000��</span>
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
								<h5 class="fw-bold text-1000 text-truncate">�������� ����</h5>
								<div class="fw-bold">
									<span class="text-600 me-2 text-decoration-line-through">30,000��</span><span
										class="text-primary">29,000��</span>
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
								<h5 class="fw-bold text-1000 text-truncate">������Ʈ</h5>
								<div class="fw-bold">
									<span class="text-600 me-2 text-decoration-line-through">10,000��</span><span
										class="text-primary">8,000��</span>
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
								<h5 class="fw-bold text-1000 text-truncate">�ɺ� �ٶ����� (��)</h5>
								<div class="fw-bold">
									<span class="text-600 me-2 text-decoration-line-through">55000��</span><span
										class="text-primary">45000��</span>
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
								<h5 class="fw-bold text-1000 text-truncate">���� ���� (����)</h5>
								<div class="fw-bold">
									<span class="text-600 me-2 text-decoration-line-through">135,000��</span><span
										class="text-primary">120,000��</span>
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
								<h5 class="fw-bold text-1000 text-truncate">�������� ����</h5>
								<div class="fw-bold">
									<span class="text-600 me-2 text-decoration-line-through">30,000��</span><span
										class="text-primary">29,000��</span>
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
								<h5 class="fw-bold text-1000 text-truncate">������Ʈ</h5>
								<div class="fw-bold">
									<span class="text-600 me-2 text-decoration-line-through">10,000��</span><span
										class="text-primary">8,000��</span>
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
						�λ� ���</button>
					<button class="navv-link" id="navv-lotte-tab" data-bs-toggle="tab"
						data-bs-target="#navv-lotte" type="button" role="tab"
						aria-controls="navv-lotte" aria-selected="false">�Ե� ���̾���</button>
					<button class="navv-link" id="navv-samsung-tab"
						data-bs-toggle="tab" data-bs-target="#navv-samsung" type="button"
						role="tab" aria-controls="navv-samsung" aria-selected="false">�Ｚ
						���̿���</button>
					<button class="navv-link" id="navv-kiwoom-tab" data-bs-toggle="tab"
						data-bs-target="#navv-kiwoom" type="button" role="tab"
						aria-controls="navv-kiwoom" aria-selected="false">Ű�� �������</button>
					<button class="navv-link" id="navv-hanhwa-tab" data-bs-toggle="tab"
						data-bs-target="#navv-hanhwa" type="button" role="tab"
						aria-controls="navv-hanhwa" aria-selected="false">��ȭ �̱۽�</button>
					<button class="navv-link" id="navv-kia-tab" data-bs-toggle="tab"
						data-bs-target="#navv-kia" type="button" role="tab"
						aria-controls="navv-kia" aria-selected="false">KIA Ÿ�̰���</button>
					<button class="navv-link" id="navv-kt-tab" data-bs-toggle="tab"
						data-bs-target="#navv-kt" type="button" role="tab"
						aria-controls="navv-kt" aria-selected="false">KT WIZ</button>
					<button class="navv-link" id="navv-lg-tab" data-bs-toggle="tab"
						data-bs-target="#navv-lg" type="button" role="tab"
						aria-controls="navv-lg" aria-selected="false">LG Ʈ����</button>
					<button class="navv-link" id="navv-nc-tab" data-bs-toggle="tab"
						data-bs-target="#navv-nc" type="button" role="tab"
						aria-controls="navv-nc" aria-selected="false">NC ���̳뽺</button>
					<button class="navv-link" id="navv-ssg-tab" data-bs-toggle="tab"
						data-bs-target="#navv-ssg" type="button" role="tab"
						aria-controls="navv-ssg" aria-selected="false">SSG ������</button>
				</div>

				<div class="tab-content" id="navv-tabContent">
					<!-- �λ� -->
					<div class="tab-pane fade show active" id="navv-doosan"
						style="opacity: 1" role="tabpanel"
						aria-labelledby="navv-doosan-tab">
						<ul class="navv navv-pills justify-content-center mb-5"
							id="pills-tab-all" role="tablist">
							<li class="navv-item" role="presentation">
								<button class="navv-link active" id="pills-doosan_teamwear-tab"
									data-bs-toggle="pill" data-bs-target="#pills-doosan_teamwear"
									type="button" role="tab" aria-controls="pills-doosan_teamwear"
									aria-selected="true">������</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-doosan_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-doosan_cheering"
									type="button" role="tab" aria-controls="pills-doosan_cheering"
									aria-selected="false">������ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-doosan_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-doosan_baseball"
									type="button" role="tab" aria-controls="pills-doosan_baseball"
									aria-selected="false">�߱���ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-doosan_commemoration-tab"
									data-bs-toggle="pill"
									data-bs-target="#pills-doosan_commemoration" type="button"
									role="tab" aria-controls="pills-doosan_commemoration"
									aria-selected="false">����ǰ</button>
							</li>
						</ul>
						<div class="tab-content" id="pills-tabContentDoosan">
							<!-- �λ� ������ -->
							<div class="tab-pane fade show active" id="pills-doosan_teamwear"
								role="tabpanel" aria-labelledby="pills-doosan_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryDoosanTeamwear"
									data-bs-touch="false" data-bs-interval="false">

									<!-- �λ� ������ ���� -->
									<div class="carousel-inner">
										<!-- �λ� ������ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_dt = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("�λ� ���")) {
														if (dto.getpCategory().equals("������")) {

															subListbase_dt.add(dto);
														}
													}
												}
												%>
												<%
												int last_dt_1 = subListbase_dt.size() <= 4 ? subListbase_dt.size() : 4;
												List<ProductDto> subList_1_dt = new ArrayList<ProductDto>(subListbase_dt.subList(0, last_dt_1));
												for (int j = 0; j < subList_1_dt.size(); j++) {
													ProductDto dto = subList_1_dt.get(j);
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
										if(subListbase_dt.size()>=5){
										%>
										<!-- �λ� ������ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_dt = subListbase_dt.size() >= 8 ? 9 : subListbase_dt.size();
												List<ProductDto> subList_2_dt = new ArrayList<ProductDto>(subListbase_dt.subList(5, last_dt));
												for (int j = 0; j < subList_2_dt.size(); j++) {
													ProductDto dto = subList_2_dt.get(j);
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


										<!-- �λ� ������ �¿��̵� -->
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
										
										<%} %>

									</div>
								</div>

							</div>

							<!-- �λ� ������ǰ -->
							<div class="tab-pane fade" id="pills-doosan_cheering"
								role="tabpanel" aria-labelledby="pills-doosan_cheering-tab">
								<div class="carousel slide" id="carouselCategoryDoosanCheering"
									data-bs-touch="false" data-bs-interval="false">

									<!-- �λ� ������ǰ ���� -->
									<div class="carousel-inner">
										<!-- �λ� ������ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												List<ProductDto> subListbase_dc = new ArrayList<>();
												for (int i = 0; i < list.size(); i++) {
													ProductDto dto = list.get(i);
													if (dto.getTeamName().equals("�λ� ���")) {
														if (dto.getpCategory().equals("������ǰ")) {

															subListbase_dc.add(dto);
														}
													}
												}
												%>
												<%
												int last_dc_1 = subListbase_dc.size() <= 4 ? subListbase_dc.size() : 4;
												List<ProductDto> subList_1_dc = new ArrayList<ProductDto>(subListbase_dc.subList(0, last_dc_1));
												for (int j = 0; j < subList_1_dc.size(); j++) {
													ProductDto dto = subList_1_dc.get(j);
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
										if(subListbase_dc.size()>=5){
										%>
										<!-- �λ� ������ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<%
												int last_dc_2 = subListbase_dc.size() >= 8 ? 9 : subListbase_dc.size();
												List<ProductDto> subList_2_dc = new ArrayList<ProductDto>(subListbase_dc.subList(5, last_dc_2));
												for (int j = 0; j < subList_2_dc.size(); j++) {
													ProductDto dto = subList_2_dc.get(j);
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


										<!-- �λ� ������ǰ �¿��̵� -->
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
										<%} %>

									</div>
								</div>

							</div>

							<!-- �λ� �߱���ǰ -->
							<div class="tab-pane fade" id="pills-doosan_baseball"
								role="tabpanel" aria-labelledby="pills-doosan_baseball-tab">
								<div class="carousel slide" id="carouselCategoryDoosanbaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- �λ� �߱���ǰ ����-->
									<div class="carousel-inner">
										<!-- �λ� �߱���ǰ ù��° ������-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="https://www.doosanbearswefan.shop/shop/data/goods/1527557404826m0.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">�ƽ ��Ʈ����</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �λ� �߱���ǰ �ι�° ������-->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shoe-1.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shoe</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �λ� �߱���ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryDoosanbaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryDoosanbaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
									</div>
								</div>

								
							</div>

							<!-- �λ� ����ǰ-->
							<div class="tab-pane fade" id="pills-doosan_commemoration"
								role="tabpanel" aria-labelledby="pills-doosan_commemoration-tab">
								<div class="carousel slide"
									id="carouselCategoryDoosanCommemoration" data-bs-touch="false"
									data-bs-interval="false">
									<!-- �λ� ����ǰ ����-->
									<div class="carousel-inner">
										<!-- �λ� ����ǰ ù��° ������-->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="https://www.doosanbearswefan.shop/shop/data/goods/1474879985163s0.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">2016
																���Խ��� ��� ��� ����</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �λ� ����ǰ �ι�° ������-->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/watch-1.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Watch</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											
											</div>
										</div>

										<!-- �λ� ����ǰ �¿��̵�-->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryDoosanCommemoration"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryDoosanCommemoration"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
									</div>
								</div>

								
							</div>
						</div>
					</div>

					<!-- �Ե� -->
					<div class="tab-pane fade" id="navv-lotte" role="tabpanel"
						style="opacity: 1" aria-labelledby="navv-lotte-tab">
						<ul class="navv navv-pills mb-5 justify-content-center"
							id="pills-tab-lotte" role="tablist">
							<li class="navv-item" role="presentation">
								<button class="navv-link active" id="pills-lotte_teamwear-tab"
									data-bs-toggle="pill" data-bs-target="#pills-lotte_teamwear"
									type="button" role="tab" aria-controls="pills-lotte_teamwear"
									aria-selected="true">������</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-lotte_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-lotte_cheering"
									type="button" role="tab" aria-controls="pills-lotte_cheering"
									aria-selected="false">������ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-lotte_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-lotte_baseball"
									type="button" role="tab" aria-controls="pills-lotte_baseball"
									aria-selected="false">�߱���ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-lotte_commemoration-tab"
									data-bs-toggle="pill"
									data-bs-target="#pills-lotte_commemoration" type="button"
									role="tab" aria-controls="pills-lotte_commemoration"
									aria-selected="false">����ǰ</button>
							</li>
						</ul>
						<div class="tab-content" id="pills-tabContentLotte">
							<!-- �Ե� ������ -->
							<div class="tab-pane fade show active" id="pills-lotte_teamwear"
								style="opacity: 1" role="tabpanel"
								aria-labelledby="pills-lotte_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryLotteTeamwear"
									data-bs-touch="false" data-bs-interval="false">
									<!-- �Ե� ������ ���� -->
									<div class="carousel-inner">
										<!-- �Ե� ������ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://www.lottegiantsshop.com/shopimages/giant00/0020040001533.jpg?1659488197"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">G�ΰ� ������
																��Ŷ��</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �Ե� ������ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/white-tshirt.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">White
																T-Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �Ե� ������ �¿��̵� -->
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
									</div>
								</div>

								
							</div>

							<!-- �Ե� ������ǰ -->
							<div class="tab-pane fade" id="pills-lotte_cheering"
								style="opacity: 1" role="tabpanel"
								aria-labelledby="pills-lotte_cheering-tab">
								<div class="carousel slide" id="carouselCategoryLotteCheering"
									data-bs-touch="false" data-bs-interval="false">
									<!-- �Ե� ������ǰ ���� -->
									<div class="carousel-inner">
										<!-- �Ե� ������ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://www.lottegiantsshop.com/shopimages/giant00/013008000002.jpg?1677205437"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">��.��.��.��
																��ġ</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �Ե� ������ǰ �ι�° ������-->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shirt-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �Ե� ������ǰ �¿��̵�-->
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
									</div>
								</div>

								
							</div>

							<!-- �Ե� �߱���ǰ -->
							<div class="tab-pane fade" id="pills-lotte_baseball"
								style="opacity: 1" role="tabpanel"
								aria-labelledby="pills-lotte_baseball-tab">
								<div class="carousel slide" id="carouselCategoryLottebaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- �Ե� �߱���ǰ ���� -->
									<div class="carousel-inner">
										<!-- �Ե� �߱���ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://www.lottegiantsshop.com/shopimages/giant00/0070010000753.jpg?1619500346"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">�⺻ �ΰ�</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �Ե� �߱���ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shoe-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shoe</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �Ե� �߱���ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryLottebaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryLottebaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
									</div>
								</div>

								
							</div>

							<!-- �Ե� ����ǰ -->
							<div class="tab-pane fade" id="pills-lotte_commemoration"
								style="opacity: 1" role="tabpanel"
								aria-labelledby="pills-lotte_commemoration-tab">
								<div class="carousel slide"
									id="carouselCategoryLotteCommemoration" data-bs-touch="false"
									data-bs-interval="false">
									<!-- �Ե� ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- �Ե� ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://www.lottegiantsshop.com/shopimages/giant00/0130030000173.jpg?1663327629"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">���� ��Ű���ڽ�</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �Ե� ����ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/watch-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Watch</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �Ե� ����ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryLotteCommemoration"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryLotteCommemoration"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
									</div>
								</div>

								
							</div>
						</div>
					</div>

					<!-- �Ｚ -->
					<div class="tab-pane fade" id="navv-samsung" role="tabpanel"
						style="opacity: 1" aria-labelledby="navv-samsung-tab">
						<ul class="navv navv-pills mb-5 justify-content-center"
							id="pills-tab-samsung" role="tablist">
							<li class="navv-item" role="presentation">
								<button class="navv-link active" id="pills-samsung_teamwear-tab"
									data-bs-toggle="pill" data-bs-target="#pills-samsung_teamwear"
									type="button" role="tab" aria-controls="pills-samsung_teamwear"
									aria-selected="true">������</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-samsung_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-samsung_cheering"
									type="button" role="tab" aria-controls="pills-samsung_cheering"
									aria-selected="false">������ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-samsung_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-samsung_baseball"
									type="button" role="tab" aria-controls="pills-samsung_baseball"
									aria-selected="false">�߱���ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-samsung_commemoration-tab"
									data-bs-toggle="pill"
									data-bs-target="#pills-samsung_commemoration" type="button"
									role="tab" aria-controls="pills-samsung_commemoration"
									aria-selected="false">����ǰ</button>
							</li>
						</ul>

						<div class="tab-content" id="pills-tabContentSamsung">
							<!-- �Ｚ ������ -->
							<div class="tab-pane fade show active"
								id="pills-samsung_teamwear" role="tabpanel"
								aria-labelledby="pills-samsung_teamwear-tab">
								<div class="carousel slide" id="carouselCategorySamsungTeamwear"
									data-bs-touch="false" data-bs-interval="false">
									<!-- �Ｚ ������ ���� -->
									<div class="carousel-inner">
										<!-- �Ｚ ������ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="https://samsunglionsmall.com/web/product/big/202302/2073128f4a3079a02c1aa52d5a6032d0.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">�Ｚ���̿���
																2023 ������ų� ����� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �Ｚ ������ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/white-tshirt.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">White
																T-Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �Ｚ ������ �¿��̵� -->
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
									</div>
								</div>

								
							</div>

							<!-- �Ｚ ������ǰ -->
							<div class="tab-pane fade" id="pills-samsung_cheering"
								role="tabpanel" aria-labelledby="pills-samsung_cheering-tab">
								<div class="carousel slide" id="carouselCategorySamsungCheering"
									data-bs-touch="false" data-bs-interval="false">
									<!-- �Ｚ ������ǰ ���� -->
									<div class="carousel-inner">
										<!-- �Ｚ ������ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="https://samsunglionsmall.com/web/product/big/202303/0cef71d9b7e745c89b3841f0c0710912.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">�Ｚ���̿���
																SL ��ΰ� �����</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �Ｚ ������ǰ �ι�° ������-->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shirt-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �Ｚ ������ǰ �¿��̵�-->
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
									</div>
								</div>

								
							</div>

							<!-- �Ｚ �߱���ǰ -->
							<div class="tab-pane fade" id="pills-samsung_baseball"
								role="tabpanel" aria-labelledby="pills-samsung_baseball-tab">
								<div class="carousel slide" id="carouselCategorySamsungbaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- �Ｚ �߱���ǰ ���� -->
									<div class="carousel-inner">
										<!-- �Ｚ �߱���ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="https://samsunglionsmall.com/web/product/big/202204/ec17fa5af199e1b0d6cda2a250ae8386.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">�Ｚ ���̿���
																2022 �߱��۷���</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
											
												
											</div>
										</div>

										<!-- �Ｚ �߱���ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shoe-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shoe</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �Ｚ �߱���ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategorySamsungbaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategorySamsungbaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
									</div>
								</div>

								
							</div>

							<!-- �Ｚ ����ǰ -->
							<div class="tab-pane fade" id="pills-samsung_commemoration"
								role="tabpanel"
								aria-labelledby="pills-samsung_commemoration-tab">
								<div class="carousel slide"
									id="carouselCategorySamsungCommemoration" data-bs-touch="false"
									data-bs-interval="false">
									<!-- �Ｚ ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- �Ｚ ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="https://samsunglionsmall.com/web/product/big/20191211/dfa7691b09d4cad6f6f6ede886b2505f.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">�Ｚ ���̿���
																��â�� ��ġ</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �Ｚ ����ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/watch-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Watch</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- �Ｚ ����ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategorySamsungCommemoration"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategorySamsungCommemoration"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
									</div>
								</div>

								
							</div>
						</div>
					</div>

					<!-- Ű�� -->
					<div class="tab-pane fade" id="navv-kiwoom" role="tabpanel"
						aria-labelledby="navv-kiwoom-tab">
						<ul class="navv navv-pills mb-5 justify-content-center"
							id="pills-tab-kiwoom" role="tablist">
							<li class="navv-item" role="presentation">
								<button class="navv-link active" id="pills-kiwoom_teamwear-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kiwoom_teamwear"
									type="button" role="tab" aria-controls="pills-kiwoom_teamwear"
									aria-selected="true">������</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kiwoom_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kiwoom_cheering"
									type="button" role="tab" aria-controls="pills-kiwoom_cheering"
									aria-selected="false">������ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kiwoom_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kiwoom_baseball"
									type="button" role="tab" aria-controls="pills-kiwoom_baseball"
									aria-selected="false">�߱���ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kiwoom_commemoration-tab"
									data-bs-toggle="pill"
									data-bs-target="#pills-kiwoom_commemoration" type="button"
									role="tab" aria-controls="pills-kiwoom_commemoration"
									aria-selected="false">����ǰ</button>
							</li>
						</ul>

						<div class="tab-content" id="pills-tabContentKiwoom">
							<!-- Ű�� ������ -->
							<div class="tab-pane fade show active" id="pills-kiwoom_teamwear"
								role="tabpanel" aria-labelledby="pills-kiwoom_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryKiwoomTeamwear"
									data-bs-touch="false" data-bs-interval="false">
									<!-- Ű�� ������ ���� -->
									<div class="carousel-inner">
										<!-- Ű�� ������ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="https://samsunglionsmall.com/web/product/big/202302/2073128f4a3079a02c1aa52d5a6032d0.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">�Ｚ���̿���
																2023 ������ų� ����� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- Ű�� ������ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/white-tshirt.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">White
																T-Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- Ű�� ������ �¿��̵� -->
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
									</div>
								</div>

								
							</div>

							<!-- Ű�� ������ǰ -->
							<div class="tab-pane fade" id="pills-kiwoom_cheering"
								role="tabpanel" aria-labelledby="pills-kiwoom_cheering-tab">
								<div class="carousel slide" id="carouselCategoryKiwoomCheering"
									data-bs-touch="false" data-bs-interval="false">
									<!-- Ű�� ������ǰ ���� -->
									<div class="carousel-inner">
										<!-- Ű�� ������ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- Ű�� ������ǰ �ι�° ������-->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shirt-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- Ű�� ������ǰ �¿��̵�-->
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
									</div>
								</div>

								
							</div>

							<!-- Ű�� �߱���ǰ -->
							<div class="tab-pane fade" id="pills-kiwoom_baseball"
								role="tabpanel" aria-labelledby="pills-kiwoom_baseball-tab">
								<div class="carousel slide" id="carouselCategoryKiwoombaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- Ű�� �߱���ǰ ���� -->
									<div class="carousel-inner">
										<!-- Ű�� �߱���ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- Ű�� �߱���ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shoe-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shoe</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- Ű�� �߱���ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKiwoombaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKiwoombaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
									</div>
								</div>

								
							</div>

							<!-- Ű�� ����ǰ -->
							<div class="tab-pane fade" id="pills-kiwoom_commemoration"
								role="tabpanel" aria-labelledby="pills-kiwoom_commemoration-tab">
								<div class="carousel slide"
									id="carouselCategoryKiwoomCommemoration" data-bs-touch="false"
									data-bs-interval="false">
									<!-- Ű�� ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- Ű�� ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- Ű�� ����ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/watch-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Watch</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- Ű�� ����ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKiwoomCommemoration"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKiwoomCommemoration"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
									</div>
								</div>

								
							</div>
						</div>
					</div>

					<!-- ��ȭ -->
					<div class="tab-pane fade" id="navv-hanhwa" role="tabpanel"
						style="opacity: 1" aria-labelledby="navv-hanhwa-tab">
						<ul class="navv navv-pills mb-5 justify-content-center"
							id="pills-tab-hanhwa" role="tablist">
							<li class="navv-item" role="presentation">
								<button class="navv-link active" id="pills-hanhwa_teamwear-tab"
									data-bs-toggle="pill" data-bs-target="#pills-hanhwa_teamwear"
									type="button" role="tab" aria-controls="pills-hanhwa_teamwear"
									aria-selected="true">������</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-hanhwa_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-hanhwa_cheering"
									type="button" role="tab" aria-controls="pills-hanhwa_cheering"
									aria-selected="false">������ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-hanhwa_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-hanhwa_baseball"
									type="button" role="tab" aria-controls="pills-hanhwa_baseball"
									aria-selected="false">�߱���ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-hanhwa_commemoration-tab"
									data-bs-toggle="pill"
									data-bs-target="#pills-hanhwa_commemoration" type="button"
									role="tab" aria-controls="pills-hanhwa_commemoration"
									aria-selected="false">����ǰ</button>
							</li>
						</ul>

						<div class="tab-content" id="pills-tabContentHanhwa">
							<!-- ��ȭ ������ -->
							<div class="tab-pane fade show active" id="pills-hanhwa_teamwear"
								role="tabpanel" aria-labelledby="pills-hanhwa_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryHanhwaTeamwear"
									data-bs-touch="false" data-bs-interval="false">
									<!-- ��ȭ ������ ���� -->
									<div class="carousel-inner">
										<!-- ��ȭ ������ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="https://cdn-pro-web-210-60.cdn-nhncommerce.com/wefan20073_godomall_com/data/goods/21/03/10/1000000003/1000000003_main_057.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">��ȭ�̱۽� Ȩ
																�ƽ ������(������)</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
												
											</div>
										</div>

										<!-- ��ȭ ������ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/white-tshirt.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">White
																T-Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- ��ȭ ������ �¿��̵� -->
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
									</div>
								</div>

								
							</div>

							<!-- ��ȭ ������ǰ -->
							<div class="tab-pane fade" id="pills-hanhwa_cheering"
								role="tabpanel" aria-labelledby="pills-hanhwa_cheering-tab">
								<div class="carousel slide" id="carouselCategoryHanhwaCheering"
									data-bs-touch="false" data-bs-interval="false">
									<!-- ��ȭ ������ǰ ���� -->
									<div class="carousel-inner">
										<!-- ��ȭ ������ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- ��ȭ ������ǰ �ι�° ������-->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shirt-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- ��ȭ ������ǰ �¿��̵�-->
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
									</div>
								</div>

								
							</div>

							<!-- ��ȭ �߱���ǰ -->
							<div class="tab-pane fade" id="pills-hanhwa_baseball"
								role="tabpanel" aria-labelledby="pills-hanhwa_baseball-tab">
								<div class="carousel slide" id="carouselCategoryHanhwabaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- ��ȭ �߱���ǰ ���� -->
									<div class="carousel-inner">
										<!-- ��ȭ �߱���ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- ��ȭ �߱���ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shoe-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shoe</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- ��ȭ �߱���ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryHanhwabaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryHanhwabaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
									</div>
								</div>

								
							</div>

							<!-- ��ȭ ����ǰ -->
							<div class="tab-pane fade" id="pills-hanhwa_commemoration"
								role="tabpanel" aria-labelledby="pills-hanhwa_commemoration-tab">
								<div class="carousel slide"
									id="carouselCategoryHanhwaCommemoration" data-bs-touch="false"
									data-bs-interval="false">
									<!-- ��ȭ ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- ��ȭ ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- ��ȭ ����ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/watch-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Watch</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- ��ȭ ����ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryHanhwaCommemoration"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryHanhwaCommemoration"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
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
									aria-selected="true">������</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kia_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kia_cheering"
									type="button" role="tab" aria-controls="pills-kia_cheering"
									aria-selected="false">������ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kia_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kia_baseball"
									type="button" role="tab" aria-controls="pills-kia_baseball"
									aria-selected="false">�߱���ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kia_commemoration-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kia_commemoration"
									type="button" role="tab"
									aria-controls="pills-kia_commemoration" aria-selected="false">����ǰ</button>
							</li>
						</ul>

						<div class="tab-content" id="pills-tabContentKia">
							<!-- KIA ������ -->
							<div class="tab-pane fade show active" id="pills-kia_teamwear"
								role="tabpanel" aria-labelledby="pills-kia_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryKiaTeamwear"
									data-bs-touch="false" data-bs-interval="false">
									<!-- KIA ������ ���� -->
									<div class="carousel-inner">
										<!-- KIA ������ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="https://tigerstr9934.cdn-nhncommerce.com/data/goods/23/01/01/1000003040/1000003040_add3_021.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">2022
																KIAŸ�̰��� �ƽ ������ ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
											
											</div>
										</div>

										<!-- KIA ������ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/white-tshirt.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">White
																T-Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- KIA ������ �¿��̵� -->
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
									</div>
								</div>

								
							</div>

							<!-- KIA ������ǰ -->
							<div class="tab-pane fade" id="pills-kia_cheering"
								role="tabpanel" aria-labelledby="pills-kia_cheering-tab">
								<div class="carousel slide" id="carouselCategoryKiaCheering"
									data-bs-touch="false" data-bs-interval="false">
									<!-- KIA ������ǰ ���� -->
									<div class="carousel-inner">
										<!-- KIA ������ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
											
											</div>
										</div>

										<!-- KIA ������ǰ �ι�° ������-->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shirt-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
											
											</div>
										</div>

										<!-- KIA ������ǰ �¿��̵�-->
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
									</div>
								</div>

								
							</div>

							<!-- KIA �߱���ǰ -->
							<div class="tab-pane fade" id="pills-kia_baseball"
								role="tabpanel" aria-labelledby="pills-kia_baseball-tab">
								<div class="carousel slide" id="carouselCategoryKiabaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- KIA �߱���ǰ ���� -->
									<div class="carousel-inner">
										<!-- KIA �߱���ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
											
											</div>
										</div>

										<!-- KIA �߱���ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shoe-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shoe</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- KIA �߱���ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKiabaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKiabaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
									</div>
								</div>

								
							</div>

							<!-- KIA ����ǰ -->
							<div class="tab-pane fade" id="pills-kia_commemoration"
								role="tabpanel" aria-labelledby="pills-kia_commemoration-tab">
								<div class="carousel slide"
									id="carouselCategoryKiaCommemoration" data-bs-touch="false"
									data-bs-interval="false">
									<!-- KIA ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- KIA ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- KIA ����ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/watch-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Watch</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
											
											</div>
										</div>

										<!-- KIA ����ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKiaCommemoration"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKiaCommemoration"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
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
									aria-selected="true">������</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kt_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kt_cheering"
									type="button" role="tab" aria-controls="pills-kt_cheering"
									aria-selected="false">������ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kt_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kt_baseball"
									type="button" role="tab" aria-controls="pills-kt_baseball"
									aria-selected="false">�߱���ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-kt_commemoration-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kt_commemoration"
									type="button" role="tab" aria-controls="pills-kt_commemoration"
									aria-selected="false">����ǰ</button>
							</li>
						</ul>

						<div class="tab-content" id="pills-tabContentKt">
							<!-- KT ������ -->
							<div class="tab-pane fade show active" id="pills-kt_teamwear"
								role="tabpanel" aria-labelledby="pills-kt_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryKtTeamwear"
									data-bs-touch="false" data-bs-interval="false">
									<!-- KT ������ ���� -->
									<div class="carousel-inner">
										<!-- KT ������ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="https://ktwizstore.co.kr/web/product/big/202212/cd10c2c1da07b53bcb820ebc3e26ba5b.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">����Ƽ����
																2022 ����Ʈ���� ��䱸</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- KT ������ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/white-tshirt.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">White
																T-Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- KT ������ �¿��̵� -->
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
									</div>
								</div>

								
							</div>

							<!-- KT ������ǰ -->
							<div class="tab-pane fade" id="pills-kt_cheering" role="tabpanel"
								aria-labelledby="pills-kt_cheering-tab">
								<div class="carousel slide" id="carouselCategoryKtCheering"
									data-bs-touch="false" data-bs-interval="false">
									<!-- KT ������ǰ ���� -->
									<div class="carousel-inner">
										<!-- KT ������ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- KT ������ǰ �ι�° ������-->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shirt-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
											
											</div>
										</div>

										<!-- KT ������ǰ �¿��̵�-->
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
									</div>
								</div>

								
							</div>

							<!-- KT �߱���ǰ -->
							<div class="tab-pane fade" id="pills-kt_baseball" role="tabpanel"
								aria-labelledby="pills-kt_baseball-tab">
								<div class="carousel slide" id="carouselCategoryKtbaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- KT �߱���ǰ ���� -->
									<div class="carousel-inner">
										<!-- KT �߱���ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
											
											</div>
										</div>

										<!-- KT �߱���ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shoe-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shoe</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
											
											</div>
										</div>

										<!-- KT �߱���ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKtbaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKtbaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
									</div>
								</div>

								
							</div>

							<!-- KT ����ǰ -->
							<div class="tab-pane fade" id="pills-kt_commemoration"
								role="tabpanel" aria-labelledby="pills-kt_commemoration-tab">
								<div class="carousel slide" id="carouselCategoryKtCommemoration"
									data-bs-touch="false" data-bs-interval="false">
									<!-- KT ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- KT ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- KT ����ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/watch-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Watch</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
										
											</div>
										</div>

										<!-- KT ����ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryKtCommemoration"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryKtCommemoration"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
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
									aria-selected="true">������</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-lg_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-lg_cheering"
									type="button" role="tab" aria-controls="pills-lg_cheering"
									aria-selected="false">������ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-lg_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-lg_baseball"
									type="button" role="tab" aria-controls="pills-lg_baseball"
									aria-selected="false">�߱���ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-lg_commemoration-tab"
									data-bs-toggle="pill" data-bs-target="#pills-lg_commemoration"
									type="button" role="tab" aria-controls="pills-lg_commemoration"
									aria-selected="false">����ǰ</button>
							</li>
						</ul>

						<div class="tab-content" id="pills-tabContentLg">
							<!-- LG ������ -->
							<div class="tab-pane fade show active" id="pills-lg_teamwear"
								role="tabpanel" aria-labelledby="pills-lg_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryLgTeamwear"
									data-bs-touch="false" data-bs-interval="false">
									<!-- LG ������ ���� -->
									<div class="carousel-inner">
										<!-- LG ������ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="https://cdn-pro-web-228-207.cdn-nhncommerce.com/keienkorea4_godomall_com/data/goods/22/05/18//1000002415/register_detail_081.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">2022
																LGƮ���� �ƽ ����</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- LG ������ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/white-tshirt.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">White
																T-Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- LG ������ �¿��̵� -->
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
									</div>
								</div>

								
							</div>

							<!-- LG ������ǰ -->
							<div class="tab-pane fade" id="pills-lg_cheering" role="tabpanel"
								aria-labelledby="pills-lg_cheering-tab">
								<div class="carousel slide" id="carouselCategoryLgCheering"
									data-bs-touch="false" data-bs-interval="false">
									<!-- LG ������ǰ ���� -->
									<div class="carousel-inner">
										<!-- LG ������ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- LG ������ǰ �ι�° ������-->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shirt-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
											
											</div>
										</div>

										<!-- LG ������ǰ �¿��̵�-->
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
									</div>
								</div>

								
							</div>

							<!-- LG �߱���ǰ -->
							<div class="tab-pane fade" id="pills-lg_baseball" role="tabpanel"
								aria-labelledby="pills-lg_baseball-tab">
								<div class="carousel slide" id="carouselCategoryLgbaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- LG �߱���ǰ ���� -->
									<div class="carousel-inner">
										<!-- LG �߱���ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- LG �߱���ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shoe-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shoe</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
										
											</div>
										</div>

										<!-- LG �߱���ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryLgbaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryLgbaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
									</div>
								</div>

								
							</div>

							<!-- LG ����ǰ -->
							<div class="tab-pane fade" id="pills-lg_commemoration"
								role="tabpanel" aria-labelledby="pills-lg_commemoration-tab">
								<div class="carousel slide" id="carouselCategoryLgCommemoration"
									data-bs-touch="false" data-bs-interval="false">
									<!-- LG ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- LG ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
											
											</div>
										</div>

										<!-- LG ����ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/watch-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Watch</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- LG ����ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryLgCommemoration"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryLgCommemoration"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
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
									aria-selected="true">������</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-nc_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-nc_cheering"
									type="button" role="tab" aria-controls="pills-nc_cheering"
									aria-selected="false">������ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-nc_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-nc_baseball"
									type="button" role="tab" aria-controls="pills-nc_baseball"
									aria-selected="false">�߱���ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-nc_commemoration-tab"
									data-bs-toggle="pill" data-bs-target="#pills-nc_commemoration"
									type="button" role="tab" aria-controls="pills-nc_commemoration"
									aria-selected="false">����ǰ</button>
							</li>
						</ul>

						<div class="tab-content" id="pills-tabContentNc">
							<!-- NC ������ -->
							<div class="tab-pane fade show active" id="pills-nc_teamwear"
								role="tabpanel" aria-labelledby="pills-nc_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryNcTeamwear"
									data-bs-touch="false" data-bs-interval="false">
									<!-- NC ������ ���� -->
									<div class="carousel-inner">
										<!-- NC ������ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="https://d29trs2nbedcfj.cloudfront.net/erp/shop/7a1749c7-a1a8-48c2-b354-c3a2bf6f29fa20230217.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">2023 �ƽ
																CAMP 2 Ȩ ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- NC ������ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/white-tshirt.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">White
																T-Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- NC ������ �¿��̵� -->
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
									</div>
								</div>

								
							</div>

							<!-- NC ������ǰ -->
							<div class="tab-pane fade" id="pills-nc_cheering" role="tabpanel"
								aria-labelledby="pills-nc_cheering-tab">
								<div class="carousel slide" id="carouselCategoryNcCheering"
									data-bs-touch="false" data-bs-interval="false">
									<!-- NC ������ǰ ���� -->
									<div class="carousel-inner">
										<!-- NC ������ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- NC ������ǰ �ι�° ������-->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shirt-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- NC ������ǰ �¿��̵�-->
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
									</div>
								</div>

							
							</div>

							<!-- NC �߱���ǰ -->
							<div class="tab-pane fade" id="pills-nc_baseball" role="tabpanel"
								aria-labelledby="pills-nc_baseball-tab">
								<div class="carousel slide" id="carouselCategoryNcbaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- NC �߱���ǰ ���� -->
									<div class="carousel-inner">
										<!-- NC �߱���ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
											
											</div>
										</div>

										<!-- NC �߱���ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shoe-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shoe</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- NC �߱���ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryNcbaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryNcbaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
									</div>
								</div>

								
							</div>

							<!-- NC ����ǰ -->
							<div class="tab-pane fade" id="pills-nc_commemoration"
								role="tabpanel" aria-labelledby="pills-nc_commemoration-tab">
								<div class="carousel slide" id="carouselCategoryNcCommemoration"
									data-bs-touch="false" data-bs-interval="false">
									<!-- NC ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- NC ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- NC ����ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/watch-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Watch</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- NC ����ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategoryNcCommemoration"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategoryNcCommemoration"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
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
									aria-selected="true">������</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-ssg_cheering-tab"
									data-bs-toggle="pill" data-bs-target="#pills-ssg_cheering"
									type="button" role="tab" aria-controls="pills-ssg_cheering"
									aria-selected="false">������ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-ssg_baseball-tab"
									data-bs-toggle="pill" data-bs-target="#pills-ssg_baseball"
									type="button" role="tab" aria-controls="pills-ssg_baseball"
									aria-selected="false">�߱���ǰ</button>
							</li>
							<li class="navv-item" role="presentation">
								<button class="navv-link" id="pills-ssg_commemoration-tab"
									data-bs-toggle="pill" data-bs-target="#pills-ssg_commemoration"
									type="button" role="tab"
									aria-controls="pills-ssg_commemoration" aria-selected="false">����ǰ</button>
							</li>
						</ul>

						<div class="tab-content" id="pills-tabContentSsg">
							<!-- SSG ������ -->
							<div class="tab-pane fade show active" id="pills-ssg_teamwear"
								role="tabpanel" aria-labelledby="pills-ssg_teamwear-tab">
								<div class="carousel slide" id="carouselCategorySsgTeamwear"
									data-bs-touch="false" data-bs-interval="false">
									<!-- SSG ������ ���� -->
									<div class="carousel-inner">
										<!-- SSG ������ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="https://cdn-pro-web-251-119.cdn-nhncommerce.com/wyverntr9322_godomall_com/data/goods/22/03/13//1000001099/register_detail_015.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">2022 ����
																����� �ƽ ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
										
											</div>
										</div>

										<!-- SSG ������ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/white-tshirt.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">White
																T-Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
											
											</div>
										</div>

										<!-- SSG ������ �¿��̵� -->
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
									</div>
								</div>

								
							</div>

							<!-- SSG ������ǰ -->
							<div class="tab-pane fade" id="pills-ssg_cheering"
								role="tabpanel" aria-labelledby="pills-ssg_cheering-tab">
								<div class="carousel slide" id="carouselCategorySsgCheering"
									data-bs-touch="false" data-bs-interval="false">
									<!-- SSG ������ǰ ���� -->
									<div class="carousel-inner">
										<!-- SSG ������ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- SSG ������ǰ �ι�° ������-->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shirt-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shirt</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
										
											</div>
										</div>

										<!-- SSG ������ǰ �¿��̵�-->
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
									</div>
								</div>

								
							</div>

							<!-- SSG �߱���ǰ -->
							<div class="tab-pane fade" id="pills-ssg_baseball"
								role="tabpanel" aria-labelledby="pills-ssg_baseball-tab">
								<div class="carousel slide" id="carouselCategorySsgbaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- SSG �߱���ǰ ���� -->
									<div class="carousel-inner">
										<!-- SSG �߱���ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
												
											</div>
										</div>

										<!-- SSG �߱���ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/shoe-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Shoe</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$200</span><span
																	class="text-primary">$175</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
											
											</div>
										</div>

										<!-- SSG �߱���ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategorySsgbaseball"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategorySsgbaseball"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
									</div>
								</div>

								
							</div>

							<!-- SSG ����ǰ -->
							<div class="tab-pane fade" id="pills-ssg_commemoration"
								role="tabpanel" aria-labelledby="pills-ssg_commemoration-tab">
								<div class="carousel slide"
									id="carouselCategorySsgCommemoration" data-bs-touch="false"
									data-bs-interval="false">
									<!-- SSG ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- SSG ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="http://openimage.interpark.com/goods_image/9/7/8/4/10046189784s.jpg"
															alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Ű�� ������</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
											
											</div>
										</div>

										<!-- SSG ����ǰ �ι�° ������ -->
										<div class="carousel-item">
											<div class="row h-100 align-items-center g-2">
												<div class="col-sm-6 col-md-3 mb-3 mb-md-0 h-100">
													<div class="card card-span h-100 text-white">
														<img class="img-fluid h-100"
															src="../assets/img/gallery/watch-5.png" alt="..." />
														<div class="card-img-overlay ps-0"></div>
														<div class="card-body ps-0 bg-200">
															<h5 class="fw-bold text-1000 text-truncate">Watch</h5>
															<div class="fw-bold">
																<span class="text-600 me-2 text-decoration-line-through">$500</span><span
																	class="text-primary">$275</span>
															</div>
														</div>
														<a class="stretched-link" href="#"></a>
													</div>
												</div>
											
											</div>
										</div>

										<!-- SSG ����ǰ �¿��̵� -->
										<div class="row">
											<button class="carousel-control-prev" type="button"
												data-bs-target="#carouselCategorySsgCommemoration"
												data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span><span
													class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselCategorySsgCommemoration"
												data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span><span
													class="visually-hidden">Next </span>
											</button>
										</div>
									</div>
								</div>

								
								
							</div>
						</div>
					</div>
				</div>

				</navv>
			
			<div class="col-12 d-flex justify-content-center mt-4">
									<a class="btn btn-lg btn-dark" href="product_listPage.jsp">View All </a>
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