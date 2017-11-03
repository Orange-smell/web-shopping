<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	function closeOk(){
		opener.document.frm_join.info_pw.focus(); 
		opener.document.frm_join.info_id1.value = "yes";
		opener.document.frm_join.info_id2.value = "${message}";
		opener.document.frm_join.info_id.value = "${message}";
		self.close();
	}
	
	function closeNg(){
		opener.document.frm_join.info_id.select();
		opener.document.frm_join.info_id1.value = "no"; 
		opener.document.frm_join.info_id2.value = "${message}";
	} 
	
	$(document).on("click","#text_btn2", function(){
		var id = $("#ckid").val();
		 if(id == ""){
			 $("#ckid").focus();
			alert("ID를 입력하세요.");
			return false;
		 }
		 $("#frm_idck").submit();
	});
 
	
</script>
<style type="text/css">
	body{
	margin : 20px 0px;
	padding : 0px;
	}
	
	#text{
		border : 2px solid #6AAFE6;
		height : 250px;
		width  : 450px;
		margin : 0 auto;
		text-align : center;
	}
	.span_message{
		line-height : 50px;
	}
	.text_input{
		margin : 10px;
		padding : 10px;
	}
	#input_span{
		margin-left: 10px;
	}
	#input_id1{
		line-height : 20px;
	}
	#text_btn2{
		vertical-align: middle;
	}
</style>
</head>
<body>
	<div id = "text">
 		<c:choose>
  			<c:when test = "${idCount == '0'}">
  				<span class = "span_message">${message}님은(는) 사용가능한 ID 입니다.</span>
				<div class = "text_btn" id = "text_btn">
	  			<input type="button" value="확인" id="text_btn" name="text_btn" onclick ="closeOk()"> 
	  		</div>
  		</c:when>
  	<c:otherwise>
  		<span class = "span_message">${message}님은(는) 중복된 ID 입니다.<br></span>
  		<div class = "text_input">
			<form action="IdckAction" method="post" name = "frm_idck" id="frm_idck">
  				ID : <input type="text" placeholder="아이디" id="ckid" name="ckid"><span id = "input_span"><input type = "button" value = "중복체크" id="text_btn2" name="text_btn2"></span>
 			</form>
  		</div>
  	</c:otherwise>
  </c:choose>
 </div>
  
  
</body>
</html>