<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.3.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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



.id {
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
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
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

.hp {
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
</style>
<body>
	<form action="registaction.jsp" method="post" class="joinForm" onsubmit="return passcheck(this)">
                                                                                               
      <h2>ȸ������</h2>
      <div class="textForm">
        <input name="loginId" type="text" class="id" placeholder="���̵�">
      </div>
      
      <div class="textForm">
        <input name="loginPw" type="password" class="pw" placeholder="��й�ȣ">
      </div>
      
       <div class="textForm">
        <input name="loginPwConfirm" type="password" class="pw" placeholder="��й�ȣ Ȯ��">
      </div>
      
      <div class="textForm">
        <input name="name" type="text" class="name" placeholder="�̸�">
      </div>
      
      <div class="textForm">
        <input name="nickname" type="text" class="nickname" placeholder="�г���">
      </div>
      
      <div class="textForm" style="font-size: 16px; opacity: 0.7;">���� &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<input name="gender" type="radio" class="gender" checked="checked" ><span class="up">����</span>&nbsp;&nbsp; <input name="gender" type="radio" class="gender" /> <span class="up">����</span>
      </div>
      
      <div class="textForm">
        <input name="birth" type="text" class="birth" placeholder="�������">
      </div>
      
      <div class="textForm">
        <input name="hp" type="text" class="hp" placeholder="��ȭ��ȣ">
      </div>
      
       <div class="textForm">
        <input name="addr" type="text" class="addr" placeholder="�ּ�">
       </div>

       <button type="submit" class="btn1" >ȸ������</button>
       <button type="button" class="btn2"  onclick="location.href='../index.jsp'">��������</button>
   
    </form>
</body>
</html>