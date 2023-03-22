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
<<<<<<< HEAD
						$("#uid").val("");
						$("#uid").focus();
=======
>>>>>>> SungUng
						
					}else if(uid=="" || uid.length==0){
						
						alert("아이디를 입력 해 주세요");	
<<<<<<< HEAD
						$("#uid").focus()
						
					}else{
						
						alert("사용 가능한 아이디 입니다");
=======
						
					}else{
						
						alert("사용 가능한 아이디 입니다")
>>>>>>> SungUng
					}
				}
			});
		});
<<<<<<< HEAD
		
=======
>>>>>>> SungUng
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
<<<<<<< HEAD
						$("#nickname").val("");
						$("#nickname").focus();

					}else if(nickname="" || nickname.length==0){
						
						alert("닉네임을 입력 해 주세요");
						$("#nickname").focus();
						
=======

>>>>>>> SungUng
					}else{
						
						alert("사용 가능한 닉네임 입니다");
					}
				}
			});
		});
		
	});
	
	function passcheck(f)
	{
<<<<<<< HEAD
		
		var uid=$("#uid").val();
		var nickname=$("#nickname").val();
		
		$.ajax({
			
			type:"post",
			url:"regist_search.jsp",
			dataType:"json",
			data:{"uid":uid,"nickname":nickname},
			success:function(res){
				
				if(res.count==1){
					
					alert("아이디 중복체크를 해 주세요");
					$("#uid").focus();
					
				}else if(res.Ncount==1){
					
					alert("닉네임 중복체크를 해 주세요");
					$("#nickname").focus();
					
				}else{
					
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
						
					}else if(f.uName.value==""){
						
						alert("이름을 입력 해 주세요");
						
					}else if(f.nickname.value==""){
						
						alert("닉네임을 입력 해 주세요");
						
					}else if(f.hp2.value==""){
						
						alert("전화번호를 입력 해 주세요");
						
					}else if(f.hp3.value==""){
						
						alert("전화번호 뒷자리를 입력 해 주세요");
						
					}else if(f.addr1.value==""){
						
						alert("주소를 입력 해 주세요");
						
					}else if(f.addr2.value==""){
						
						alert("주소를 입력 해 주세요");
						
					}else if(f.addr3.value==""){
						
						alert("주소를 입력 해 주세요");
						
					}
					
				}
			}
		});
		
	}
	
	function noSpacialForm(obj) { // 공백사용못하게
		
	    var str_space = /\s/;  // 공백체크
	    var str_special = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
	    
	    if(str_space.exec(obj.value)) { //공백 체크
	        alert("공백은 사용할 수 없습니다");
	        obj.focus();
	        obj.value = obj.value.replace(' ',''); // 공백제거
	        return false;
	        
	    }else if(str_special.exec(obj.value)){
	    	alert("특수문자는 사용할 수 없습니다");
	    	obj.focus();
	    	const reg = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
	    	obj.value = obj.value.replace(reg,'');
	    	return false;
	    }
	}
	
	function noSpaceForm(obj) { // 공백사용못하게
				
			    var str_space = /\s/;  // 공백체크
			    
			    if(str_space.exec(obj.value)) { //공백 체크
			        alert("공백은 사용할 수 없습니다");
			        obj.focus();
			        obj.value = obj.value.replace(' ',''); // 공백제거
			        return false;
		        
		    }
		}
	
	function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
            }
        }).open();
    }
	
    </script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
=======
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
			
		}else if(f.addr.value==""){
			
			alert("주소를 입력 해 주세요");
			
		}
	}
	
	
    </script>
>>>>>>> SungUng
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

<<<<<<< HEAD
.uName {
=======
.name {
>>>>>>> SungUng
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
<<<<<<< HEAD
	border:1px solid gray;
	margin-bottom: 5px;
	position: relative;
	bottom: 15px;
=======
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
>>>>>>> SungUng
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
<<<<<<< HEAD
  bottom: 5px;
=======
>>>>>>> SungUng
  
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
<<<<<<< HEAD
  bottom: 5px;	
=======
>>>>>>> SungUng
  
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
						<form action="regist_registaction.jsp" method="post" class="joinForm" 
		onsubmit="return passcheck(this)" name="f">
                                                                                               
      <h2>회원가입</h2>
      
      <div class="textForm">
<<<<<<< HEAD
        <input name="uid" type="text" class="uid" id="uid" maxlength="8" placeholder="아이디 (특수문자,공백 제외 8자 이하)" required="required" 
        onkeyup="noSpacialForm(this);" onchange="noSpacialForm(this);">
=======
        <input name="uid" type="text" class="uid" id="uid" placeholder="아이디 (특수문자,공백 제외 8자 이하)" required="required">
>>>>>>> SungUng
        <button type="button" class="btnck" id="btnck" >중복체크</button>
      </div>
      
      <div class="textForm">
<<<<<<< HEAD
        <input name="pw1" type="password" class="pw" placeholder="비밀번호 (특수문자 포함 10자 이상)" required="required"
        onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
      </div>
      
       <div class="textForm">
        <input name="pw2" type="password" class="pw" placeholder="비밀번호 확인" required="required"
        onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
      </div>
      
      <div class="textForm">
        <input name="uName" type="text" class="uName" placeholder="이름" required="required">
      </div>
      
      <div class="textForm">
        <input name="nickname" type="text" class="nickname" id="nickname" maxlength="8" placeholder="닉네임 (특수문자,공백 제외 8자 이하)" required="required"
        onkeyup="noSpacialForm(this);" onchange="noSpacialForm(this);">
=======
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
>>>>>>> SungUng
        <button type="button" class="btnnck" id="btnnck">중복체크</button>      
      </div>
      
      <div class="textForm" style="font-size: 16px; opacity: 0.7;">성별 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<<<<<<< HEAD
		<input name="gender" type="radio" class="gender" value="남" checked="checked" >남자&nbsp;&nbsp; 
		<input name="gender" type="radio" class="gender" value="여" />여자
=======
		<input name="gender" type="radio" class="gender" value="Male" checked="checked" >남자&nbsp;&nbsp; <input name="gender" type="radio" class="gender" value="Female" />여자
>>>>>>> SungUng
      </div>
      
      <!-- <div class="textForm">
        <input name="birth" type="text" class="birth" placeholder="생년월일">
      </div> -->
      
     <div class="textForm">생년월일&emsp;&emsp;&emsp;&emsp;&emsp;
     
     <select name="birth1" class="birth" style="width : 70px;"> 	
       
<<<<<<< HEAD
 		<%
                for(int i=2000; i<=2015; i++)
                {%>
                
                  <option value="<%=i %>"><%=i %></option>
           <%}
 		
        %>
=======
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
>>>>>>> SungUng
       
     </select>&nbsp;년&nbsp;
     
     <select name="birth2" class="birth"  style="width : 70px;">
<<<<<<< HEAD
     
     <%
                for(int i=1; i<=12; i++)
                {%>
                
                  <option value="<%=i %>"><%=i %></option>
           <%}
 		
        %>
=======
       
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
>>>>>>> SungUng
       
     </select>&nbsp;월&nbsp;
     
     <select name="birth3" class="birth"  style="width : 70px;">
     
<<<<<<< HEAD
			<%
                for(int i=1; i<=31; i++)
                {%>
                
                  <option value="<%=i %>"><%=i %></option>
           <%}
 		
        %>
=======
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
>>>>>>> SungUng
       
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
      	
<<<<<<< HEAD
      	- <input type="text" name="hp2" class="hp" style="width : 70px;" size="4" maxlength="4" 
      		oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required="required">
      	- <input type="text" name="hp3" class="hp" style="width : 70px;" size="4" maxlength="4" 
      		oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required="required">
=======
      	- <input type="text" name="hp2" class="hp" style="width : 70px;" size="4" maxlength="4" required="required">
      	- <input type="text" name="hp3" class="hp" style="width : 70px;" size="4" maxlength="4" required="required">
>>>>>>> SungUng
      	
      </div>
      
      <!-- <div class="textForm">
        <input name="hp" type="text" class="hp" placeholder="전화번호">
      </div> -->
      
<<<<<<< HEAD
       <!-- <div class="textForm">
        <input name="addr" type="text" class="addr" placeholder="주소" required="required">
       </div> -->
       
       <div class="textForm" >주소
	       <input type="text" name="addr1" class="addr" id="sample6_postcode" placeholder="우편번호" style="margin-left: 98px;">&nbsp;
		   <input type="button" class="addr" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
		   <input type="text" name="addr2" class="addr" id="sample6_address" placeholder="주소" style="margin-left: 130px;">&nbsp;
		   <input type="text" name="addr3" class="addr" id="sample6_extraAddress" placeholder="참고항목">
		</div>
		
=======
       <div class="textForm">
        <input name="addr" type="text" class="addr" placeholder="주소" required="required">
       </div>

>>>>>>> SungUng
       <button type="submit" class="btn1" onclick="passcheck(f)">회원가입</button>
       <button type="button" class="btn2"  onclick="location.href='../index.jsp'">메인으로</button>
   
    </form>
<<<<<<< HEAD
    					
=======

						
>>>>>>> SungUng
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