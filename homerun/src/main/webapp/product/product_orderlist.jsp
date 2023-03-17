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
						
						<div>지성웅님 주문목록</div>
						
						<%
        // 세션에서 현재 사용자 정보를 가져옵니다.
		UserDao udao = new UserDao();
		ProductDao pdao= new ProductDao();
        String uId = (String) session.getAttribute("uId");
        String name=udao.getuName(uId);
        
        // 데이터베이스에서 현재 사용자의 주문 정보를 조회합니다.
        // (여기에서는 간단하게 코드를 작성합니다.)
      
        List<Order> orders = getOrderList(uId);
         
    	NumberFormat nf=NumberFormat.getInstance();

    %>
    
    <%-- 주문 정보를 표시하는 코드 --%>
    <% if (orders != null && orders.size() > 0) { %>
        <table border="1">
            <tr>
                <th>주문번호</th>
                <th>주문일자</th>
                <th>상품정보</th>
            </tr>
            
            <% for (Order order : orders) { %>
                <tr>
                    <td><%= order.getOrderNumber() %></td>
                    <td><%= order.getOrderDate() %></td>
                    <td>
                        <% for (Product product : order.getProductList()) { %>
                            <%= product.getProductName() %> 
                            (가격: <%= product.getProductPrice() %>, 
                            수량: <%= product.getProductQuantity() %>)
                            <br>
                        <% } %>
                    </td>
                </tr>
            <% } %>
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