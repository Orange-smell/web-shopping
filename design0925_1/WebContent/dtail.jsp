<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
	body{
		margin : 0px;
		padding : 0px;
		width : 100%;	
		}
	#dtail_view{
		height : 650px;
		width : 65%;
		border : 1px solid red;
		margin : 100px auto;
	}
	#dtail_title{
		font-size : 12px;
		text-align : left;
		margin-left : 15px;
	}
	#image{
		border : 1px solid red;
		height : 500px;
		width : 40%;
		float : left;
		margin-left : 7%;
		margin-top : 7%;
	}
	.dtail_img{
		height : 350px;
		width : 450px;
		float : left;
		position: relative;
		margin-top : 8%;
		margin-left : 5%;
	}
	#title_info{
		float: right;
   		width: 38%;
    	position: relative;
    	margin-right: 5%;
    	margin-top : 5%;
    	border: 1px solid red;
    	height : 550px;
	}
	#images{
		position:relative;
		display : block;
		margin-top : 20px;
		margin-left: 25%;
		float : left;
		border : 1px solid red;
	}
	.images_img{
		height : 68px;
		width : 68px;
		margin-left : 5px;
		margin-right : 5px;
		margin-top : 5px;
		border : 1px solid red;
	}
	.images_img:HOVER{
		border : 1px solid blue;
	}
	.dtail_img:HOVER{
		opacity: 0.5;
	}
	.white_content {
	    position: absolute;
	    top: 0;
	    right: 0;
	    bottom: 0;
	    left: 0;
	    background: (0, 0, 0, 0.8);
	    opacity:0;
	    -webkit-transition: opacity 400ms ease-in;
	    -moz-transition: opacity 400ms ease-in;
	    transition: opacity 400ms ease-in;
	    pointer-events: none;
	}
	.white_content:target {
	    opacity:1;
	    pointer-events: auto;
	}
	.white_content > div {
		position: absolute;
		top: 25%;
		left: 25%;
		width: 920px;
		height: 666px;
		padding: 16px;
		border: 4px solid #6aafe6;
		background-color: white;
		overflow: auto;	
	}
	#close{
		margin : 0px;
		padding : 0px;
	}
	#close_head{
		margin-top : 10px;
		margin-left : 10px;
		font-size : 17px;
	}
	#close_x{
		float : right;
		margin-right : 15px;
	}
	#close_img{
		height : 550px;
		width : 450px;
		float : left;
		position: relative;
		margin-top : 10px;
		margin-left : 20px;
	}
	#close_x{
		text-decoration : none;
		color : black;
	}
	#img_x{
		height : 15px;
		width : 15px;
		vertical-align: middle;
		margin-top : 3px;
		
	}
</style>
<script src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"></script>
<body>
	<%@ include file="head.jsp"%>
		<% 
		String img = request.getParameter("img");
		String name = request.getParameter("name");
		String price2 = request.getParameter("price2");
		%>
		<div id = "dtail_view">
			<div id = image>
				<a href = "#open" id = "image_a"><img src = "img/<%=img%>" alt = "상품" class = "dtail_img" id = "dtail_img"></a>
				<div id = "images">
				<a href = "#" class = images_a><img src = img/<%=img%> alt = "상품1" class = "images_img"></a>
				<a href = "#" class = images_a><img src = img/<%=img %> alt = "상품1" class = "images_img"></a>
				<a href = "#" class = images_a><img src = img/<%=img %> alt = "상품1" class = "images_img"></a>
				</div>
			</div>
			<div id = title_info>
			<div id = "dtail_title">
				<h2> <%=name %> </h2>
			</div>
			<div class = "item">
				<ul>
					<li class = "item_price"> 판매가</li>
						<div class = "item_price">
							<%=price2%>
						</div>
				</ul>
			</div>
				<hr>
		</div>
				<div class="white_content" id="open">
       			 <div id = close>
       			 	<div id = close_head>
       			 	<b>이미지 확대 사진</b> <a href="#close" id = close_x><img src = img/x.jpg alt = "닫기" id = "img_x"></a>
       			 	</div>
       			 	<hr>
       			 	<div id = close_img>
       			 <img src = img/<%=img%> alt = "상품" class = "close_img" id = "close_img">
       			 </div>
       			 </div>
       			 </div>
	</div>
				
</body>
</html>