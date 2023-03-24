<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>HOMERUN | MAIN</title>
<link href="../assets/css/style_index.css" rel="stylesheet">
<style type="text/css">
.main {
	width: 100%;
	height: 100%;
	border: 1px solid gray;
}

.left {
	width: 57%;
	height: 100%;
	float: left;
	border: 1px solid blue;
}

.left-top {
	width: 100%;
	height: 38%;
	top: 0;
	margin-bottom: 20px;
	border: 1px solid yellow;
}

.left-bottom {
	width: 100%;
	bottom: 0;
	height: 58%;
	border: 1px solid green;
}

.right {
	width: 40%;
	height: 100%;
	float: right;
	border: 1px solid pink;
}

.right-top {
	width: 100%;
	height: 30%;
	top: 0;
	margin-bottom: 20px;
	border: 1px solid yellow;
}

.right-bottom {
	width: 100%;
	bottom: 0;
	height: 65%;
	border: 1px solid green;
}
</style>
</head>
<body>
	
	<div class="main">
		<div class="left">
			<div class="left-top">
			<jsp:include page="main_fboardList.jsp"></jsp:include></div>
			<div class="left-bottom">
				<jsp:include page="main_fboardList.jsp"></jsp:include>
			</div>
		</div>
		<div class="right">
			<div class="right-top">
			<jsp:include page="main_rboardList.jsp"></jsp:include></div>
			<div class="right-bottom">
			<jsp:include page="main_rboardList.jsp"></jsp:include></div>
		</div>
	</div>


<!-- 			<div class="col-sm-2">왼</div>
			<div class="col-sm-8">
				<div class="main">
					<div class="left">
						<div class="left-top"></div>
						<div class="left-bottom"></div>
					</div>
					<div class="right">
						<div class="right-top"></div>
						<div class="right-bottom"></div>
					</div>
				</div>
			</div>
			<div class="col-sm-2">오</div> -->

</body>
</html>