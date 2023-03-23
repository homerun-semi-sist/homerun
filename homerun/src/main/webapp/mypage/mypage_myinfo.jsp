<%@page import="data.dto.UserDto"%>
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
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		<link href="../assets/css/index.css" rel="stylesheet">
	</head>
	<style>
body{
  padding: 0;
  margin: 0;
}
div{
  box-sizing: border-box;
}

.wrap{
  background-color: white;  
}

.profile{
	width: 150px;
	height: 150px;
	border-radius: 70%;
	overflow: hidden;
	position: absolute;
	left: 50%;
	transform: translate(-50%, 0%); 
	top: 200px;
}

.photo{
	width: 100%;
	height: 100%;
	object-fit: cover;
	cursor: pointer;
}

.summaryContainer{
	background-color: white;
}

/* 녹색 숫자 */
.summaryContainer .number{
  font-size: 19px;
  font-weight: bold;
  color: #24855b;
}
/* 텍스트 */
.summaryContainer .item > div:nth-child(2){
  font-size: 13px;
}

/* ================== 주문/배송조회 박스 시작 ==================== */
.shippingStatusContainer{
  padding: 21px 16px;
  background-color: white;
  margin-bottom: 10px;
  margin-top: 100px;
}

/* 주문/배송조회 타이틀 */
.shippingStatusContainer .title{
  font-size: 20px;
  font-weight: bold;
  margin-bottom: 10px;
}

/* 장바구니 결제완료 배송중 구매확정 [로우] */
.shippingStatusContainer .status{
  display: flex;
  justify-content: space-between;
  margin: 50px;
}
/* 장바구니 결제완료 배송중 구매확정 [아이템]  */
.shippingStatusContainer .item{
  display: flex;
}

.shippingStatusContainer .number{
  font-size: 31px;
  font-weight: bold;
  text-align: center;
}
.shippingStatusContainer .text{
  font-size: 20px;
  font-weight: bold;
  color: black;
  text-align: center;
  margin-bottom: 5px;
}

.shippingStatusContainer .image{
	width: 100px;
	height: 100px;
	margin-bottom: 10px;
	cursor: pointer;
	
}

.name {
	font-size: 40px;
	text-align: center;
	margin-top: 250px;
}

.nickname{
	font-size: 20px;
	text-align: center;
	margin: -35px;
}

.head{
	background-color: white;
}


.btn1 {
  left:40%;
  transform: translateX(-38%);
  margin-right: 10px;
  width:100px;
  height:30px;
  color:white;
  font-weight: bold;
  border:none;
  cursor:pointer;
  background-color: #0b214e;
  margin-left: 900px;
  
}

.btn2 {
  left:40%;
  transform: translateX(-38%);
  width:100px;
  height:30px;
  color:white;
  font-weight: bold;
  border:none;
  cursor:pointer;
  background-color: #0b214e;
  
}

</style>
<%

	String uid=(String)session.getAttribute("uid");
	UserDao dao=new UserDao();
	String uName=dao.getuName(uid);	
	UserDto dto=dao.getData(uid);
%>
<script type="text/javascript">
	function delfunc(uid){
		
		var pw1=$("#pw1").val();
		
		if(pw1==<%=dto.getPw()%>)
			{
				location.href='mypage_unregistaction.jsp?uid='+uid;
				
			}else{
				
				pw1="";
				alert("비밀번호가 틀렸습니다")
				
			}
		}
	
	function upfunc(){
			
			var pw2=$("#pw2").val();
			
			if(pw2==<%=dto.getPw()%>)
				{
					location.href='mypage_modifyform.jsp';
					
				}else{
					
					pw2="";
					alert("비밀번호가 틀렸습니다")
					
				}
			}
</script>
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
					<div class="col-sm-2" style="border: 0px solid red;"></div>
					<div class="col-sm-8" style="border: 0px solid pink;">
						<!-- write here -->

<div class="wrap">

<div class="head">
	  <div class="summaryContainer">
		<h3><b>마이페이지</b></h3>
		<hr class="line" style="height: 5px;">
	  </div>    
	  

		  <!-- <button type="button" class="btn1"
			onclick="location.href='../mypage/mypage_unregistform.jsp'">회원탈퇴</button> -->		
		<button type="button" class="btn1" data-toggle="modal" data-target="#myModal">회원탈퇴</button>
		
		<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title"><b>회원탈퇴</b></h4>
        </div>
        <div class="modal-body">
          <p><b style="font-size: 15pt;">정말 회원탈퇴 하시겠습니까?</b></p>
        </div>
        <div>
        	&nbsp;&nbsp;&nbsp;&nbsp;<input type="password"  id="pw1" placeholder="비밀번호 입력">
        	<br>
        	<br>
        </div>
        <div class="modal-footer">
        	<button type="button" class="btn btn-default" data-dismiss="modal"
        	onclick="delfunc('<%=dto.getUid()%>')">탈퇴하기</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>
      </div>
      
    </div>
  </div>
		<button type="button" class="btn2"
			onclick="location.href='../user/user_logoutaction.jsp'">로그아웃</button>
		
	  <div class="profile">
	  	<a data-toggle="modal" data-target="#myModal2">
	 		<img class="photo" src="../assets/img/프로필.png">
	 		<br><br>
	 	</a>
	  </div>
	  
	  <!-- Modal -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title"><b>회원정보 수정</b></h4>
        </div>
        <div class="modal-body">
          <p><b style="font-size: 15pt;">비밀번호를 입력 해 주세요</b></p>
        </div>
        <div>
        	&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" id="pw2" placeholder="비밀번호 입력">
        	<br>
        	<br>
        </div>
        <div class="modal-footer">
        	<button type="button" class="btn btn-default" data-dismiss="modal"
        	onclick="upfunc()">수정하기</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>
      </div>
      
    </div>
  </div>
	  
	  <div class="name"><b><%=uName %></b></div>
	  <br><br>
	  <div class="nickname"><b><%=uid %></b>님 환영합니다</div>
  </div>
  
  <div class="shippingStatusContainer">
  
    <div class="title">
      주문 / 게시글 조회
    </div>
    
    <div class="status">
      
      <div class="item">
        <div>
          <img class="image" src="../assets/img/주문내역.png">
          <div class="text">주문내역</div>
          <div class="green number">6건</div>
        </div>
      </div>  
         
      <div class="item">
        <div>         
          <img class="image" src="../assets/img/게시글.png">
          <div class="text">내 게시글</div>
          <div class="number">0건</div>
        </div>
      </div>   
        
      <div class="item" >
        <div>
          <img class="image" src="../assets/img/댓글.png">        
          <div class="text">내 댓글</div>
          <div class="green number">1건</div>
        </div>
      </div>  
         
      <div class="item">
        <div>
          <img class="image" src="../assets/img/찜.png">        
          <div class="text">내 게시글 찜</div>
          <div class="green number">3건</div>
        </div>
      </div>     
      
    </div>
    
  </div>  

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