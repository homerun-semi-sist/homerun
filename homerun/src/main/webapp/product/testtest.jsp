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
#navv-all, #navv-doosan, #navv-kiwoom, #navv-samsung, #navv-lg, #navv-kt,
	#navv-ssg, #navv-nc, #navv-lotte, #navv-kia, #navv-hanhwa,
	#pills-all_teamwear, #pills-all_cheering, #pills-all_baseball,
	#pills-all_memory, #pills-doosan_teamwear, #pills-doosan_cheering,
	#pills-doosan_baseball, #pills-doosan_memory, #pills-lotte_teamwear,
	#pills-lotte_cheering, #pills-lotte_baseball, #pills-lotte_memory,
	#pills-samsung_teamwear, #pills-samsung_cheering,
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

</head>
<%
NumberFormat nf = NumberFormat.getCurrencyInstance();

ProductDao dao = new ProductDao();
List<ProductDto> list = dao.selectAllProduct();

ProductDao dao_all = new ProductDao();

int totalCount; //�� ����
int totalPage; //�� ��������
int startPage; //�� ��(1,2,3..)�� ����������
int endPage; //�� ���� ������ ������
int start; //�� �������� ���۹�ȣ
int perPage = 12; //�� �������� ������ �� ����
int perBlock = 5; //�� ���� �������� ������ ����
int currentPage; //����������

int no;

totalCount = dao_all.getTotalCount();

//���� ������ ��ȣ �б�(null�϶��� 1�������� ����)
if (request.getParameter("currentPage") == null)
	currentPage = 1;
else
	currentPage = Integer.parseInt(request.getParameter("currentPage"));

//�� ������ ����
totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);

//�� ���� ���������� -> ������������ 3 -> s:1, e:5 / 6 -> s:6, e:10
startPage = (currentPage - 1) / perBlock * perBlock + 1;
endPage = startPage + perBlock - 1;

//�� �������� 8�̸� (6~10 -> end�������� 8�� ����)
if (endPage > totalPage)
	endPage = totalPage;

//������������ �ҷ��� ���۹�ȣ
start = (currentPage - 1) * perPage;

//�޼��� �ҷ�����
List<ProductDto> list_all = dao_all.getList(start, perPage);
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
					<button class="navv-link active" id="navv-all-tab"
						data-bs-toggle="tab" data-bs-target="#navv-all" type="button"
						role="tab" aria-controls="navv-all" aria-selected="true">
						��ü</button>
					<button class="navv-link" id="navv-doosan-tab" data-bs-toggle="tab"
						data-bs-target="#navv-doosan" type="button" role="tab"
						aria-controls="navv-doosan" aria-selected="false">�λ� ���</button>
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


					<!-- ��ü -->
					<div class="tab-pane fade show active" id="navv-all"
						style="opacity: 1" role="tabpanel" aria-labelledby="navv-all-tab">

						<div class="tab-content" id="pills-tabContentAll">
							<!-- ��ü ������ -->

							<div class="row h-100 align-items-center g-2">
								<%
								for (ProductDto dto : list_all) {
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
						
						<div style="width: 500px; text-align: center;" class="container">
							<ul class="pagination">
								<%
								//����
								if (startPage > 1) {
								%>
								<li><a href="testtest.jsp?currentPage=<%=startPage - 1%>">����</a></li>
								<%
								}
								for (int pp = startPage; pp <= endPage; pp++) {
								if (pp == currentPage) {
								%>
								<li class="active"><a
									href="testtest.jsp?currentPage=<%=pp%>"><%=pp%></a></li>
								<%
								} else {
								%>

								<li><a href="testtest.jsp?currentPage=<%=pp%>"><%=pp%></a></li>
								<%
								}
								}
								//����
								if (endPage < totalPage) {
								%>
								<li><a href="testtest.jsp?currentPage=<%=endPage + 1%>">����</a></li>
								<%
								}
								%>
							</ul>
						</div>

					</div>

					<!-- �λ� -->
					<div class="tab-pane fade" id="navv-doosan" role="tabpanel"
						style="opacity: 1" aria-labelledby="navv-doosan-tab">
						<ul class="navv navv-pills mb-5 justify-content-center"
							id="pills-tab-doosan" role="tablist">
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
								<button class="navv-link" id="pills-doosan_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-doosan_memory"
									type="button" role="tab" aria-controls="pills-doosan_memory"
									aria-selected="false">����ǰ</button>
							</li>
						</ul>
						<div class="tab-content" id="pills-tabContentDoosan">
							<!-- �λ� ������ -->
							<div class="tab-pane fade show active" id="pills-doosan_teamwear"
								style="opacity: 1" role="tabpanel"
								aria-labelledby="pills-doosan_teamwear-tab">
								<div class="carousel slide" id="carouselCategoryDoosanTeamwear"
									data-bs-touch="false" data-bs-interval="false">
									<!-- �λ� ������ ���� -->
									<div class="carousel-inner">

										<!-- �λ� ������ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("�λ� ���")) {
														if (dto.getpCategory().equals("������")) {
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

							<!-- �λ� ������ǰ -->
							<div class="tab-pane fade" id="pills-doosan_cheering"
								style="opacity: 1" role="tabpanel"
								aria-labelledby="pills-doosan_cheering-tab">
								<div class="carousel slide" id="carouselCategoryDoosanCheering"
									data-bs-touch="false" data-bs-interval="false">
									<!-- �λ� ������ǰ ���� -->
									<div class="carousel-inner">
										<!-- �λ� ������ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("�λ� ���")) {
														if (dto.getpCategory().equals("������ǰ")) {
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

							<!-- �λ� �߱���ǰ -->
							<div class="tab-pane fade" id="pills-doosan_baseball"
								style="opacity: 1" role="tabpanel"
								aria-labelledby="pills-doosan_baseball-tab">
								<div class="carousel slide" id="carouselCategoryDoosanbaseball"
									data-bs-touch="false" data-bs-interval="false">
									<!-- �λ� �߱���ǰ ���� -->
									<div class="carousel-inner">
										<!-- �λ� �߱���ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("�λ� ���")) {
														if (dto.getpCategory().equals("�߱���ǰ")) {
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

							<!-- �λ� ����ǰ -->
							<div class="tab-pane fade" id="pills-doosan_memory"
								style="opacity: 1" role="tabpanel"
								aria-labelledby="pills-doosan_memory-tab">
								<div class="carousel slide" id="carouselCategoryDoosanMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- �λ� ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- �λ� ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("�λ� ���")) {
														if (dto.getpCategory().equals("����ǰ")) {
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
								<button class="navv-link" id="pills-lotte_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-lotte_memory"
									type="button" role="tab" aria-controls="pills-lotte_memory"
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("�Ե� ���̾���")) {
														if (dto.getpCategory().equals("������")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("�Ե� ���̾���")) {
														if (dto.getpCategory().equals("������ǰ")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("�Ե� ���̾���")) {
														if (dto.getpCategory().equals("�߱���ǰ")) {
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

							<!-- �Ե� ����ǰ -->
							<div class="tab-pane fade" id="pills-lotte_memory"
								style="opacity: 1" role="tabpanel"
								aria-labelledby="pills-lotte_memory-tab">
								<div class="carousel slide" id="carouselCategoryLotteMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- �Ե� ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- �Ե� ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("�Ե� ���̾���")) {
														if (dto.getpCategory().equals("����ǰ")) {
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
								<button class="navv-link" id="pills-samsung_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-samsung_memory"
									type="button" role="tab" aria-controls="pills-samsung_memory"
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("�Ｚ ���̿���")) {
														if (dto.getpCategory().equals("������")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("�Ｚ ���̿���")) {
														if (dto.getpCategory().equals("������ǰ")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("�Ｚ ���̿���")) {
														if (dto.getpCategory().equals("�߱���ǰ")) {
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

							<!-- �Ｚ ����ǰ -->
							<div class="tab-pane fade" id="pills-samsung_memory"
								role="tabpanel" aria-labelledby="pills-samsung_memory-tab">
								<div class="carousel slide" id="carouselCategorySamsungMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- �Ｚ ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- �Ｚ ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("�Ｚ ���̿���")) {
														if (dto.getpCategory().equals("����ǰ")) {
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
								<button class="navv-link" id="pills-kiwoom_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kiwoom_memory"
									type="button" role="tab" aria-controls="pills-kiwoom_memory"
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("Ű�� �������")) {
														if (dto.getpCategory().equals("������")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("Ű�� �������")) {
														if (dto.getpCategory().equals("������ǰ")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("Ű�� �������")) {
														if (dto.getpCategory().equals("�߱���ǰ")) {
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

							<!-- Ű�� ����ǰ -->
							<div class="tab-pane fade" id="pills-kiwoom_memory"
								role="tabpanel" aria-labelledby="pills-kiwoom_memory-tab">
								<div class="carousel slide" id="carouselCategoryKiwoomMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- Ű�� ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- Ű�� ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("Ű�� �������")) {
														if (dto.getpCategory().equals("����ǰ")) {
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
								<button class="navv-link" id="pills-hanhwa_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-hanhwa_memory"
									type="button" role="tab" aria-controls="pills-hanhwa_memory"
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("��ȭ �̱۽�")) {
														if (dto.getpCategory().equals("������")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("��ȭ �̱۽�")) {
														if (dto.getpCategory().equals("������ǰ")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("��ȭ �̱۽�")) {
														if (dto.getpCategory().equals("�߱���ǰ")) {
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

							<!-- ��ȭ ����ǰ -->
							<div class="tab-pane fade" id="pills-hanhwa_memory"
								role="tabpanel" aria-labelledby="pills-hanhwa_memory-tab">
								<div class="carousel slide" id="carouselCategoryHanhwaMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- ��ȭ ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- ��ȭ ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("��ȭ �̱۽�")) {
														if (dto.getpCategory().equals("����ǰ")) {
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
								<button class="navv-link" id="pills-kia_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kia_memory"
									type="button" role="tab" aria-controls="pills-kia_memory"
									aria-selected="false">����ǰ</button>
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("KIA Ÿ�̰���")) {
														if (dto.getpCategory().equals("������")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("KIA Ÿ�̰���")) {
														if (dto.getpCategory().equals("������ǰ")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("KIA Ÿ�̰���")) {
														if (dto.getpCategory().equals("�߱���ǰ")) {
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

							<!-- KIA ����ǰ -->
							<div class="tab-pane fade" id="pills-kia_memory" role="tabpanel"
								aria-labelledby="pills-kia_memory-tab">
								<div class="carousel slide" id="carouselCategoryKiaMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- KIA ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- KIA ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("KIA Ÿ�̰���")) {
														if (dto.getpCategory().equals("����ǰ")) {
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
								<button class="navv-link" id="pills-kt_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-kt_memory"
									type="button" role="tab" aria-controls="pills-kt_memory"
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("KT WIZ")) {
														if (dto.getpCategory().equals("������")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("KT WIZ")) {
														if (dto.getpCategory().equals("������ǰ")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("KT WIZ")) {
														if (dto.getpCategory().equals("�߱���ǰ")) {
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

							<!-- KT ����ǰ -->
							<div class="tab-pane fade" id="pills-kt_memory" role="tabpanel"
								aria-labelledby="pills-kt_memory-tab">
								<div class="carousel slide" id="carouselCategoryKtMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- KT ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- KT ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("KT WIZ")) {
														if (dto.getpCategory().equals("����ǰ")) {
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
								<button class="navv-link" id="pills-lg_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-lg_memory"
									type="button" role="tab" aria-controls="pills-lg_memory"
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("LG Ʈ����")) {
														if (dto.getpCategory().equals("������")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("LG Ʈ����")) {
														if (dto.getpCategory().equals("������ǰ")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("LG Ʈ����")) {
														if (dto.getpCategory().equals("�߱���ǰ")) {
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

							<!-- LG ����ǰ -->
							<div class="tab-pane fade" id="pills-lg_memory" role="tabpanel"
								aria-labelledby="pills-lg_memory-tab">
								<div class="carousel slide" id="carouselCategoryLgMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- LG ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- LG ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("LG Ʈ����")) {
														if (dto.getpCategory().equals("����ǰ")) {
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
								<button class="navv-link" id="pills-nc_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-nc_memory"
									type="button" role="tab" aria-controls="pills-nc_memory"
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("NC ���̳뽺")) {
														if (dto.getpCategory().equals("������")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("NC ���̳뽺")) {
														if (dto.getpCategory().equals("������ǰ")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("NC ���̳뽺")) {
														if (dto.getpCategory().equals("�߱���ǰ")) {
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

							<!-- NC ����ǰ -->
							<div class="tab-pane fade" id="pills-nc_memory" role="tabpanel"
								aria-labelledby="pills-nc_memory-tab">
								<div class="carousel slide" id="carouselCategoryNcMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- NC ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- NC ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("NC ���̳뽺")) {
														if (dto.getpCategory().equals("����ǰ")) {
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
								<button class="navv-link" id="pills-ssg_memory-tab"
									data-bs-toggle="pill" data-bs-target="#pills-ssg_memory"
									type="button" role="tab" aria-controls="pills-ssg_memory"
									aria-selected="false">����ǰ</button>
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("SSG ������")) {
														if (dto.getpCategory().equals("������")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("SSG ������")) {
														if (dto.getpCategory().equals("������ǰ")) {
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
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("SSG ������")) {
														if (dto.getpCategory().equals("�߱���ǰ")) {
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

							<!-- SSG ����ǰ -->
							<div class="tab-pane fade" id="pills-ssg_memory" role="tabpanel"
								aria-labelledby="pills-ssg_memory-tab">
								<div class="carousel slide" id="carouselCategorySsgMemory"
									data-bs-touch="false" data-bs-interval="false">
									<!-- SSG ����ǰ ���� -->
									<div class="carousel-inner">
										<!-- SSG ����ǰ ù��° ������ -->
										<div class="carousel-item active" data-bs-interval="10000">
											<div class="row h-100 align-items-center g-2">
												<%
												for (ProductDto dto : list) {
													if (dto.getTeamName().equals("SSG ������")) {
														if (dto.getpCategory().equals("����ǰ")) {
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