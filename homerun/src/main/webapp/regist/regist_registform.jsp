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
	<script type="text/javascript">
	$(function(){
		
		$("#btnck").click(function(){
			
			var uid=$("#uid").val();
			
			$.ajax({
				
				type:"get",
				url:"regist_search.jsp",
				dataType:"json",
				data:{"uid":uid},
				success:function(res){
					
					if(res.count==1){
						
						alert("이미 가입된 아이디 입니다");
					}else{
						
						alert("사용 가능한 아이디 입니다");
					}
				}
			});
		});
$("#btnnck").click(function(){
			
			var nickname=$("#nickname").val();
			
			$.ajax({
				
				type:"get",
				url:"regist_search.jsp",
				dataType:"json",
				data:{"nickname":nickname},
				success:function(res){
					
					if(res.Ncount==1){
						
						alert("이미 가입된 닉네임 입니다");
					}else{
						
						alert("사용 가능한 닉네임 입니다");
					}
				}
			});
		});
		
	});
	
	function passcheck(f)
	{
		if(f.pw1.value!=f.pw2.value){
			
			alert("비밀번호가 일치하지 않습니다");
			
			f.pw1.value="";
			f.pw2.value="";
			
			return false;
			
		}else if(f.uid.value==""){
			
			alert("아이디를 입력 해 주세요");
			
		}else if(f.pw1.value==""){
			
			alert("비밀번호를 입력 해 주세요");
			
		}else if(f.pw2.value==""){
			
			alert("비밀번호 확인을 입력 해 주세요");
			
		}else if(f.name.value==""){
			
			alert("이름을 입력 해 주세요");
			
		}else if(f.nickname.value==""){
			
			alert("닉네임을 입력 해 주세요");
			
		}else if(f.hp2.value==""){
			
			alert("전화번호를 입력 해 주세요");
			
		}else if(f.hp3.value==""){
			
			alert("전화번호 뒷자리를 입력 해 주세요");
			
		}else
			alert("주소를 입력 해 주세요");
	}
	
	
    </script>
	</head>
	<style>
* {
  margin: 0px;
  padding: 0px;
  text-decoration: none;

}

.joinForm {
  position:absolute;
  width:600px;
  height:850px;
  padding: 30px, 20px;
  background-color:#FFFFFF;
  top:40%;
  left:50%;
  transform: translate(-50%,-50%);
  border-radius: 15px;
  border: 1px solid gray;
  margin-top: 100px;
}

.joinForm h2 {
  text-align: center;
  margin: 30px;
  font-weight: bold;
}

.textForm {
  border-bottom: 1px solid #0b214e;
  margin: 30px;
  padding: 10px 10px;
}



.uid {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.pw {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.name {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.birth{
  width: 100%;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.hp{
  width: 100%;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
  border:none;
  border:1px solid gray;
}

.addr {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.nickname {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}


.btn1 {
  position:relative;
  left:40%;
  transform: translateX(-38%);
  margin-bottom: 20px;
  margin-right: 10px;
  width:100px;
  height:30px;
  color:white;
  font-weight: bold;
  border:none;
  cursor:pointer;
  background-color: #0b214e;
  
}

.btn2 {
  position:relative;
  left:40%;
  transform: translateX(-38%);
  margin-bottom: 20px;
  width:100px;
  height:30px;
  color:white;
  font-weight: bold;
  border:none;
  cursor:pointer;
  background-color: #0b214e;
  
}

.btn:hover {
  background-position: right;
  color:white;
}

.btnck{
	position: absolute;
	right: 50px;
	width: 70px;
	height: 30px;
	float: right;
	border:none;
	border:1px solid gray;
	
}

.btnnck{
	position: absolute;
	right: 50px;
	width: 70px;
	height: 30px;
	float: right;
	border:none;
	border:1px solid gray;
	
}

</style>
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
						<form action="../regist/regist_registaction.jsp" method="post" class="joinForm" 
		onsubmit="return passcheck(this)" name="f">
                                                                                               
      <h2>회원가입</h2>
      
      <div class="textForm">
        <input name="uid" type="text" class="uid" id="uid" placeholder="아이디 (특수문자,공백 제외 8자 이하)" required="required">
        <button type="button" class="btnck" id="btnck" >중복체크</button>
      </div>
      
      <div class="textForm">
        <input name="pw1" type="password" class="pw" placeholder="비밀번호 (특수문자 포함 10자 이상)" required="required">
      </div>
      
       <div class="textForm">
        <input name="pw2" type="password" class="pw" placeholder="비밀번호 확인" required="required">
      </div>
      
      <div class="textForm">
        <input name="name" type="text" class="name" placeholder="이름" required="required">
      </div>
      
      <div class="textForm">
        <input name="nickname" type="text" class="nickname" placeholder="닉네임 (특수문자,공백 제외 8자 이하)" required="required">
        <button type="button" class="btnnck" id="btnnck">중복체크</button>      
      </div>
      
      <div class="textForm" style="font-size: 16px; opacity: 0.7;">성별 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<input name="gender" type="radio" class="gender" value="Male" checked="checked" >남자&nbsp;&nbsp; <input name="gender" type="radio" class="gender" value="Female" />여자
      </div>
      
      <!-- <div class="textForm">
        <input name="birth" type="text" class="birth" placeholder="생년월일">
      </div> -->
      
     <div class="textForm">생년월일&emsp;&emsp;&emsp;&emsp;&emsp;
     
     <select name="birth1" class="birth" style="width : 70px;"> 	
       
       <option value="2013">2013</option>
       <option value="2012">2012</option>
       <option value="2011">2011</option>
       <option value="2010">2010</option>
       <option value="2009">2009</option>
       <option value="2008">2008</option>
       <option value="2007">2007</option>
       <option value="2006">2006</option>
       <option value="2005">2005</option>
       <option value="2004">2004</option>
       <option value="2003">2003</option>
       <option value="2002">2002</option>
       <option value="2001">2001</option>
       <option value="2000">2000</option>
       
     </select>&nbsp;년&nbsp;
     
     <select name="birth2" class="birth"  style="width : 70px;">
       
       <option value="1">1</option>
       <option value="2">2</option>
       <option value="3">3</option>
       <option value="4">4</option>
       <option value="5">5</option>
       <option value="6">6</option>
       <option value="7">7</option>
       <option value="8">8</option>
       <option value="9">9</option>
       <option value="10">10</option>
       <option value="11">11</option>
       <option value="12">12</option>
       
     </select>&nbsp;월&nbsp;
     
     <select name="birth3" class="birth"  style="width : 70px;">
     
       <option value="1">1</option>
       <option value="2">2</option>
       <option value="3">3</option>
       <option value="4">4</option>
       <option value="5">5</option>
       <option value="6">6</option>
       <option value="7">7</option>
       <option value="8">8</option>
       <option value="9">9</option>
       <option value="10">10</option>
       <option value="11">11</option>
       <option value="12">12</option>
       <option value="13">13</option>
       <option value="14">14</option>
       <option value="15">15</option>
       <option value="16">16</option>
       <option value="17">17</option>
       <option value="18">18</option>
       <option value="19">19</option>
       <option value="20">20</option>
       <option value="21">21</option>
       <option value="22">22</option>
       <option value="23">23</option>
       <option value="24">24</option>
       <option value="25">25</option>
       <option value="26">26</option>
       <option value="27">27</option>
       <option value="28">28</option>
       <option value="29">29</option>
       <option value="30">30</option>
       <option value="31">31</option>
       
     </select>&nbsp;일
      </div>
      
      <div class="textForm">전화번호&emsp;&emsp;&emsp;&emsp;&emsp;
      
      	<select name="hp1" class="hp" style="width: 50px; ">
      	
      		<option value="010">010</option>
      		<option value="011">011</option>
      		<option value="016">016</option>
      		<option value="017">017</option>
      		<option value="019">019</option>
      		
      	</select>
      	
      	- <input type="text" name="hp2" class="hp" style="width : 70px;" size="4" maxlength="4" required="required">
      	- <input type="text" name="hp3" class="hp" style="width : 70px;" size="4" maxlength="4" required="required">
      	
      </div>
      
      <!-- <div class="textForm">
        <input name="hp" type="text" class="hp" placeholder="전화번호">
      </div> -->
      
       <div class="textForm">
        <input name="addr" type="text" class="addr" placeholder="주소" required="required">
       </div>

       <button type="submit" class="btn1" onclick="passcheck(f)">회원가입</button>
       <button type="button" class="btn2"  onclick="location.href='../index.jsp'">메인으로</button>
   
    </form>

						
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