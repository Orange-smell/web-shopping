<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#login {
	border: 2px solid #2b90d9;
	padding-bottom: 105px;
	padding-top: 50px;
	padding-right: 110px;
	width: 280px;
	margin: 0 auto;
	height: 160px;
	border-radius: 15px;
}

#lg_id {
	height: 45px;
	padding-right: 160px;
	margin-left: 30px;
}

#lg_pw {
	margin-top: 10px;
	height: 45px;
	padding-right: 160px;
	margin-left: 30px;
}

.btn13 {
	background-color: #6AAFE6;
}

.btn_index {
	margin-top: 10px;
	padding: 8px 12px;
	background-color: #6AAFE6;
	color: white;
	width: 310px;
	display: inline-block;
	border-radius: 15px;
	text-decoration: none;
	text-align: center;
	margin-left: 30px;
}

h3 {
	padding: 30px;
	text-align: center;
}

.login_2 {
	text-align: center;
	font-size: 14px;
	width: 330px;
	display : inline-block;
	padding-top : 8px;
}

.login_2_1 {
	text-decoration: none;
	color: black;
	
}

#login_cf {
	font-size: 14px;
	margin-left: 30px;
	margin-top: 5px;
}

#find {
	text-align: right;
	float: right;
}

.span_login {
	margin-left: 35px;
	color: red;
	font-size: 13px;
	display: none;
}

#span_id {
	left: 225px;
	position: relative;
	padding-top: 5px;
}

#span_pw {
	left: 190px;
	position: relative;
	padding-top: 5px;
}

#save {
	margin-top: 10px;
	margin-left: 40px;
}

#span_1 {
	color: red;
	font-size: 13px;
	position: relative;
	text-align: center;
	margin-left: 33px;
	display: none;
	width: 330px;
	padding-top: 10px;
}
</style>
<script src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#lg_id").blur(function() {
			if ($("#lg_id").val() == "") {
				$("#span_id").css("display", "block");
			} else if (!($("#lg_id").val() == "")) {
				$("#span_id").css("display", "none");
			}
		});
		$("#lg_pw").blur(function() {
			if ($("#lg_pw").val() == "") {
				$("#span_pw").css("display", "block");
			} else if (!($("#lg_pw").val() == "")) {
				$("#span_pw").css("display", "none");
			}
		});



	$(document).on("click",".btn13",function() {
						var form = $("#frminsert"), uid = $("#lg_id"), upw = $("#lg_pw"), usp = $("#span_1");

						var id = $.trim(uid.val());
						if (id == "") {
							uid.focus();
							$("#span_id").css("display", "block");
							return false;
						}
						var pw = $.trim(upw.val());
						if (pw == "") {
							upw.focus();
							$("#span_pw").css("display", "block");
							return false;
						}

						form.submit();
					});
</script>
</head>
<body>
	<%@ include file="head.jsp"%>

	<h3>로그인</h3>
	<span id="head_head"> </span>

	<div id="div_in">
		<form action="LoginAction" method="post" name="frminsert" id="frminsert">
			<div class="login" id="login">
				<input type="text" placeholder="아이디" class="input_login" id="lg_id" name="lg_id"> 
					<span id="span_id" class="span_login">
					ID를 입력하세요.</span>
				<div class="login" id="login_pw">
					<input type="password" placeholder="비밀번호" class="input_login"
						id="lg_pw" name="lg_pw"> <span id="span_pw"
						class="span_login">비밀번호를 입력하세요.</span>
					<div class="div_login">
						<input type="checkbox" id="save">아이디 저장
					</div>
					<span id="span_1">등록 되지 않은 아이디 이거나 잘못된 비밀번호 입니다.</span>
					<div class="login_save_1">
						<a href="#" class="btn_index btn13">로그인</a>
					</div>
					<div id="login_cf">
						<div class="login_2">
							<div class="login_2_1">
								<a href="joinus.jsp" class="login_2_1" id="login_2_1_join">회원가입 | </a> <a
									href="#" class="login_2_1">아이디 찾기 | </a> <a href="#"
									class="login_2_1">비밀번호 찾기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>

</body>
</html>