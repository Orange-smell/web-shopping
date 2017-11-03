<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style type="text/css">
body, div {
	margin: 0px;
	padding: 0px;
}

.item_list {
	clear:both;
}

h3 {
	margin: 0px;
	
	
}
.new_list{
padding-top: 20px;}

img {
	height: 225px;
	width: 225px;
	float: left;
	margin : 0px 10px;
}

a {
	text-decoration: none;
}

.pdt_item {
	margin: 0px 10px;
	float: left;
	height : 255px;
	width : 260px;
}
#new_name{
	padding-top : 10px;
	font-size : 55px;
}
#new_list{
	font-size : 25px;
	text-align : center;
	font-family: 'Jeju Hallasan', serif;
	padding-top : 20px;
}
.best_img{
	text-align : center;
}
#info_name{
	color : black;
}
#info_price{
	color : black;
}

</style>
<script type="text/javascript"></script>
<script src="js/jquery-3.2.1.min.js"></script>
</head>
<body>
	<%@ include file="head.jsp"%>
	<div class="item_list">

		<br>
		<h3>Best Item</h3>
		<hr>
		<c:forEach items="${bestlist}" var="bPDto">
			<div class="pdt_item">
				<div class ="best_img">
					<a href="dtail.jsp?img=${bPDto.p_img} &name=${bPDto.p_name} &price=${bPDto.p_price2}"> 
					<img alt="베스트상품" src="img/${bPDto.p_img}">
						<div class="wrap_info">
							<span id = "info_name">${bPDto.p_name}</span><br> 
							<span id = "info_price"> <fmt:setLocale value="ko_kr" />	<!-- ko_kr,en_us,ja_jp --> 
							<fmt:formatNumber value="${bPDto.p_price2}" type="currency" />
							</span>
						</div>
					</a>
				</div>
			</div>	
		</c:forEach>
			</div>
	
	<div class="item_list">
	<div id = "new_list">
		<span id = " new_name"><strong>New Item</strong></span>
		<hr>
		<img alt="신상품" src="img/c01.jpg">
		 <img alt="신상품" src="img/c02.jpg"> 
			<img alt="신상품" src="img/c04.jpg">
			 <img alt="신상품" src="img/c03.jpg">
	</div>	
	</div>
</body>
</html>