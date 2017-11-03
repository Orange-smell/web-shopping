<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Lobster|Wendy+One');
@import url(http://fonts.googleapis.com/earlyaccess/jejuhallasan.css);
body, ul {
	margin: 0px;
	padding: 0px;
}

#header {
	
	width: 100%;
	background-color: #6AAFE6;
}

#header_ul {
	list-style-type: none;
}

.header_li {
	float: left;
	color: black;
	text-align:center;
	position:relative;
}

.header_a {
	color: white;
	text-decoration: none;
	padding: 0 10px;
	font-size: 15px;
	line-height: 30px;
	font-family: 'Jeju Hallasan', serif;


}
.header_li:HOVER{
background-color:#6AAFE6; /* 옅은 파랑  , 헤드부분 메뉴바 호버하면 나오는 색깔*/ 
}
.header_li:HOVER .header_dropdown{ /* 헤드 메뉴바 호버하면 나오는 드랍다운 */
display : block;
}
	
.header_li:HOVER .header_a { /* 메뉴바 부분에 호버하면 바뀌는 글씨 색깔 */
	color: pink;
}
#header_inner{
float:right;
margin-right:70px;
}
#BOOKMARK{
COLOR : WHITE;
FONT-SIZE : 15PX;
LINE-HEIGHT : 30PX;
FONT-WEIGHT : BOLD;
margin-left : 70px;
}

.header_dropdown{
width:90px;
left:0px;
display:none;
margin : 0 auto;
background-color: #2b90d9;
}

.dropdown_a{
display:block;
color : white;
text-decoration:none;
font-size : 12px;
heigth:30px;
line-heigth:30px;
padding : 10px 0px;
text-align : center;
}

.dropdown_a:HOVER{
background-color: #4F86C6; /* 짙은 파랑 , 헤드부분에 드랍다운 부분을 호버를 하면 나오는 색깔*/
color : pink;

}

.logo_span{
color:#6AAFE6;
font-size : 55px;
text-decoration: none;
}

#logo>a{
text-decoration:none;
font-family: 'Wendy One', sans-serif;
font-family: 'Lobster', cursive;
}

#mainlogo{
width:280px;
text-align:center;
margin:0 auto;
padding : 56px;
text-decoration: none;
}

#nav{
height : 45px;
border: 5px solid #6AAFE6;
margin-bottom : 10px;
text-decoration: none;
border-radius:15px;
position: relative;
}
#nav_ul{
list-style-type : none;
text-decoration: none;


}
.nav_li{
	float : left;
	padding : 10px 30px;
	color : black;
	position : relative;
	text-align : center;
	font-family: 'Lobster', cursive;
	font-size : 20px;
	width : 250px;
	margin : 0 auto;
}
.nav_a{
text-decoration: none;
color : black;

}
h3{
	font-size : 25px;
	font-family: 'Jeju Hallasan', serif;
	text-align : center;
	}
	
#Lg_table{
margin-top : 30px;
margin-left : 250px;
padding-right : 650px;
padding-top : 20px;
padding-bottom : 20px;
padding-left: 10px;
margin-bottom : 20px;
font-size : 15px;
border : 3px solid #6AAFE6;
margin : 0 auto;
border-radius:15px;
}
td, th{
	padding: 10px;
}
#info_id{
height: 21px;

}

#info_bt{
 vertical-align: middle;
margin-left : 5px;
}
.Lg_ad{
margin-top : 5px;
}
mainlogo_a{
text-decoration: none;
}
.nadropdown_a{
text-decoration: none;
display : block;
margin : 0 auto;
}
.nav_dropdown{
display : none;
margin : 15px 0px;
height : 140px;
width : 150px;
border-left : 2px solid #6AAFE6;
border-right : 2px solid #6AAFE6;
border-bottom : 2px solid #6AAFE6;
margin-left : 43px;
position: absolute; 
text-align :center;
line-height: 25px;

}
.nav_li:HOVER .nav_dropdown{
display : block;
background-color : white; 
}
.nadropdown_a{
display : block;
color : black;
font-family: 'Jeju Hallasan', serif;
padding : 5px 0px;
text-align : center;
}
.nav_a:HOVER{
color : pink;
}
.nadropdown_a:HOVER{
color : pink;
background-color: #4F86C6;
}


</style>
</head>
<body>
	<div id="header">
		<SPAN ID = "BOOKMARK">HYEOK JIN +</SPAN>
			<!-- 로그인,회원가입 -담겨있는 div -->
		<div id="header_inner">
			<ul id="header_ul">
				<c:choose>
					<c:when test="${empty sessionScope.loginUser}">
				<li class="header_li">
				<a href="login.jsp" class="header_a"><b>로그인</b></a></li>
				<li class="header_li"><a href="joinus.jsp" class="header_a"><b>회원가입</b></a></li>
				</c:when>
				<c:otherwise>
					<li id = "login_user" class = "header_li" name = "loginUser">${sessionScope.loginUser.name}(${sessionScope.loginUser.id})</li>
					<li class = "header_li"><a href="LoginOutAction">로그아웃</a></li>
				</c:otherwise>
			</c:choose>	
				<li class="header_li"><a href="#" class="header_a"><b>마이페이지</b></a>
				<div class = "header_dropdown">
					<a href="#" class="dropdown_a">주문/배송조회</a>
					<a href="#" class="dropdown_a">장바구니</a>
					<a href="#" class="dropdown_a">워시리스트</a>
					<a href="#" class="dropdown_a">쿠폰조회</a>
					<a href="joinupdate.jsp" class="dropdown_a">회원정보</a>
				</div>
				</li>
								
				<li class="header_li"><a href="#" class="header_a"><b>공지사항</b></a></li>
			
			</ul>
		</div>
		</div>
	<div id = "logo">
		<a href="IndexAction">
			<div id ="mainlogo">
				<span class="logo_span">HYEOK JIN</span>
			</div>
		</a>
	</div>	
		<div id="nav">
			<ul id ="nav_ul">
		<li class="nav_li"><a href="#" class = "nav_a">BEST</a></li>
		<li class="nav_li"><a href="#" class = "nav_a">OUTER </a>
		<div class = "nav_dropdown">
				<a href = "#" class = "nadropdown_a">자켓</a>
				<a href = "#" class = "nadropdown_a">코트</a>
				<a href = "#" class = "nadropdown_a">패딩</a>
				<a href = "#" class = "nadropdown_a">블레이져</a>
			</div>
			</li>
		<li class="nav_li"><a href="#" class = "nav_a">TOP</a>
		<div class = "nav_dropdown">
				<a href = "#" class = "nadropdown_a">맨투맨</a>
				<a href = "#" class = "nadropdown_a">셔츠</a>
				<a href = "#" class = "nadropdown_a">니트</a>
				<a href = "#" class = "nadropdown_a">반팔</a>
			</div>
		</li>
		<li class="nav_li"><a href="#" class = "nav_a">BOTTOM</a>
		<div class = "nav_dropdown">
				<a href = "#" class = "nadropdown_a">슬랙스</a>
				<a href = "#" class = "nadropdown_a">청바지</a>
				<a href = "#" class = "nadropdown_a">면바지</a>
				<a href = "#" class = "nadropdown_a">트레이닝</a>
			</div>
		</li>
		<li class="nav_li"><a href="#" class = "nav_a">SHOES</a>
		<div class = "nav_dropdown">
				<a href = "#" class = "nadropdown_a">로퍼</a>
				<a href = "#" class = "nadropdown_a">스니커즈</a>
				<a href = "#" class = "nadropdown_a">워커</a>
				<a href = "#" class = "nadropdown_a">슬립온</a>
			</div>
		</li>
		<li class="nav_li"><a href="#" class = "nav_a">ACC</a>
		<div class = "nav_dropdown">
				<a href = "#" class = "nadropdown_a">모자</a>
				<a href = "#" class = "nadropdown_a">시계</a>
				<a href = "#" class = "nadropdown_a">안경</a>
				<a href = "#" class = "nadropdown_a">벨트</a>
			</div>
		</li>
		</ul>
		</div>
		
</body>
</html>