<%@page import="java.util.Locale"%>
<%@page import="java.util.HashMap"%>
<%@page import="data.dao.CartDao"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="data.dao.UserDao"%>
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
	</head>
	<body style="overflow-x: hidden;">
		<%
			String mainPage = "../layout/main.jsp";
		
			// url?? ????? main???? ???? ???????????? ???
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
						
						
						<%
        // 세션에서 현재 사용자 정보를 가져옵니다.
		UserDao udao = new UserDao();
		ProductDao pdao= new ProductDao();
		CartDao cdao= new CartDao();
        String uId = (String)session.getAttribute("uId");
        String cId= (String)session.getAttribute("cId");
        String name=udao.getuName(uId);
        
        // 데이터베이스에서 현재 사용자의 주문 정보를 조회합니다.
        // (여기에서는 간단하게 코드를 작성합니다.)
      
         List<HashMap<String, String>> list = cdao.getCartList(cId);
    	NumberFormat nf=NumberFormat.getInstance();
	int orderSize = cdao.getOrderList(cId).size();
	int total=0;
    %>
						<div><%=name %>님 주문목록</div>
						
    
    <%-- 주문 정보를 표시하는 코드 --%>
    <% if ( orderSize > 0) { %>
        
            <table class="table table-bordered"
								style="width: 1000px; color: black; font-size: 1.2em;">
								<tr>
									<th style="width: 30px;"><input type="checkbox"
										id="allcheck"></th>
									<th style="width: 500px; font-size: 1.2em; text-align: center;">상품정보</th>
									<th style="width: 150px; font-size: 1.2em; text-align: center;">상품옵션</th>
									<th style="width: 200px; font-size: 1.2em; text-align: center;">상품금액</th>
									<th style="width: 200px; font-size: 1.2em; text-align: center;">총금액</th>
								</tr>

								<%
								for (int i = 0; i < 1; i++) {//사이즈만큼

									HashMap<String, String> map = list.get(i);
									//사진얻기
									String photo = map.get("pImage");//사진 받아와서

									
								%>

								<tr>
									<td style="line-height: 100px;"><input type="checkbox" name="cId" class="cId"
										cId="<%=map.get("cId")%>" ></td>

									<td style="line-height: 100px;">
										<div pId="<%=map.get("pId")%>" class="pName">
											<img src="<%=photo%>" class="photo" align="left" hspace="20">

											<h4 style="line-height: 80px;">
												<b> 상품명: <%=map.get("pName")%>
												</b>
											</h4>
											<td >
													<span style="line-height:35px"
														class="glyphicon glyphicon-triangle-top" id="cQTYup"></span><br>
													<span><b> 개수: <%=map.get("cQTY")%>개</b></span> 
														<br><span
														class="glyphicon glyphicon-triangle-bottom" id="cQTYdown"></span>
												</td>
											<td><br>
												<h4 style="line-height:30px">
													<b> <%=nf.getCurrencyInstance(Locale.KOREA).format(Integer.parseInt(map.get("price")))%></b>
												</h4>
												</td>

									<td >
										<%
										int price = Integer.parseInt(map.get("price"));
										int cQTY = Integer.parseInt(map.get("cQTY"));
										price *= cQTY;
										total = total + price;
										%>
										<h4 style="line-height: 80px;"><b>
											<%=nf.getCurrencyInstance(Locale.KOREA).format(price)%>
											<span class="glyphicon glyphicon-trash del"
												style="color: red;" cId="<%=map.get("cId")%>"></span>
												</b>
										</h4>


									</td>
									</td>
								</tr>
								</div>

								<%
								}
								%>

								<tr>
									<td colspan="5">
										<button type="button" class="btn1" style="margin-left: 800px;"
											id="btncartdel">선택상품삭제</button>
										<button type="button" class="btn1" style="margin-left: 800px;"
											onclick="location.href='product_success.jsp'">구매하기</button> <span
										style="font-size: 2em;"><b><br> 총 주문금액: <%=nf.getCurrencyInstance(Locale.KOREA).format(total)%></b></span>
									</td>
								</tr>

							</table>
    <% } else { %>
        <p>주문 내역이 없습니다.</p>
    <% } %>
						<div></div>
						
						<!-- the end -->
					</div>
					<div class="col-sm-2" style="border: 1px solid blue;">right</div>
				</div>
			</div>
		</div>

		<div class="main_footer">
			<jsp:include page="../layout/footer.jsp" />
		</div>
	</body>
</html>