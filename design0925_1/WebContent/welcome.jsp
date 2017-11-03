<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv='Refresh' content='3;url=IndexAction'>
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Lobster|Wendy+One');
@import url(http://fonts.googleapis.com/earlyaccess/jejuhallasan.css);
	body{
	margin : 0px;
	padding : 0px;
	}

	#welcome{
		width : 550px;
		height : 650px;
		border : 1px solid red;
		margin : 0 auto;
		margin-top : 100px; 
	}
	
	.welcome_li{
	list-style-type: none;
	font-size : 35px;
	text-align : center;
	font-family: 'Jeju Hallasan', serif;
	float : left;
	padding-top : 15px;
	}
	
	#li_logo{
	color:#6AAFE6;
	font-size : 85px;
	text-decoration: none;
	font-family: 'Wendy One', sans-serif;
	}
	
</style>
</head>
<body>
	<div id ="welcome">
		<ul id = "welcome_ul">
			<li class = "welcome_li" id = "li_logo"> HYEOK JIN</li>
			<li class = "welcome_li" id = "li_joina"> 회원님 가입을 축하드립니다. </li>
			
			<li class = "welcome_li" id = "li_page"> 잠시후  MAIN PAGE 로 이동합니다.</li> 
		</ul>
	</div>



</body>
</html>