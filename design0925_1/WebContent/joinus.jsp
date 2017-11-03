<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
.star{
vertical-align: middle;
}
#lg_cf{
	text-align : center;

}
.btn13{
	background-color : #6AAFE6;
	
	}
	.btn_index{
		margin-top : 10px; 		
		padding : 8px 12px;
		background-color : #6AAFE6;
		color : white;
		width : 79px;
		display : inline-block;
		border-radius:15px;
		text-decoration:none;
		text-align : center;
	}
	
	.Lg_ad{
		width : 300px;
		height : 21px;
	}	
	#info_id_error{
		color : red;
		font-size : 13px;
	}
	
</style>
<script src="js/jquery-3.2.1.js"></script>
<script type ="text/javascript">
	
	
</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>
<script src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

	
   	$(document).on("click", "#info_bt", function(){
		//새창의 크기
		cw = 550;
		ch=300;
		//스크린의 크기
		sw=screen.availWidth;
		sh=screen.availHeight;
		//열 창의 포지션
		px=(sw-cw)/2;
		py=(sh-ch)/2;
	
		var id = $("#info_id").val();
		if ($("#info_id").val() == "") {
			info_id.focus();
			alert("null 값");
			return false;	
		}
	var url = "IdckAction?ckid=" + id;
	window.open(url, "_blank_1",
				"toolbar=no, menubar=no, status=no, scrollbars=no, resizeable=no, left=" + px + ", top = " + py + ",width=" + cw + ", height= " + ch);  		
});
   	
   	
	$(document).on("click", ".btn13", function(){
		var id = $("#info_id").val();
			if(id == ""){
				$("#info_id").focus();
				alert("ID를 입력하세요.");
				return false;
			}
			var id = $("#info_id1").val();
			if(id == ""){
				$("#info_id1").focus();
				alert("중복확인을 눌러주세요.");
				return false;
			}else if (id != "#info_id2"){
				$("#info_id1").focus();
				alert("중복확인을 눌러주세요.");
				return false;
			}
			
		$("#frm_join").submit();	
	});   
	
	
	

   	
   	</script>
    	
   </head>
<body>
<%@ include file = "head.jsp" %>

<h3>
	<strong>회원 정보 </strong>
	</h3>
	
<form action="joinus" method="post" name="frm_join" id="frm_join">
<table id = "Lg_table">
			<tr>
				<th> 아이디
				<img class="star" src="img/ico.gif">
				</th>
				<td><input type = "text" class= "input_login" id="info_id" name = "info_id">
					<span id = "info_id_error"> ID를 입력하세요.</span>
				<input type ="button" value="중복 확인" id="info_bt">
				<input type = "text" id = "info_id1" name = "info_id1">
				<input type = "text" id = "info_id2" name = "info_id2">
				</td>
			</tr>
			<tr>			
				<th> 비밀번호
				<img class="star" src="img/ico.gif">
				</th>
				<td><input type = "password" class= "input_login" id="info_pw" name = "info_pw"></td>
			</tr>
			<tr>					
				<th> 비밀번호 확인
				<img class="star" src="img/ico.gif">
				</th>
				<td><input type = "password" class= "input_login" id="info_pw1" name = "info_pw1"></td>				
			</tr>
			<!-- <tr>
				<th>비밀번호 확인 질문</th>
				<td><select type ="text" class = "input_login" id = "info_id">
					<option>어머니 성함은?</option>
					<option>아버지 성함은?</option>
					<option>학창 시절 기억에 남는 선생님 성함은?</option>
					<option>인상 깊었던 책 이름은?</option>
					<option>나의 고향은?</option>
					<option>오늘 점심에 먹은 메뉴는?</option>
				</select>
			</tr> 
			<tr>
				<th>비밀번호 확인 답변</th>
				<td><input type = "text" class= "input_login" id="info_id"></td>
			</tr>				 -->
			<tr>
				<th>이름
				<img class="star" src="img/ico.gif">
				</th>
				<td><input type = "text" class= "input_login" id="info_name"></td>
			</tr>
			<tr>
				<th>주소
				<img class="star" src="img/ico.gif">
				</th>
				<td><input type = "text" class= "Lg_ad" id="sample6_postcode" placeholder="우편번호">
				<input type ="button"value="우편 주소" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
				<br>
				<input type = "text" class= "Lg_ad"  id="sample6_address" placeholder="주소">
				<br>
				<input type = "text" class= "Lg_ad" id="sample6_address2" placeholder="상세주소"></td>
			</tr>
		<tr>
			<th>휴대 전화
			<img class="star" src="img/ico.gif">
			</th>
			<td><input type = "text" class= "input_login" id="info_phone">
		</tr>			
		<tr>
			<th>이메일
			<img class="star" src="img/ico.gif">
			</th>
			<td><input type = "text" class= "input_login" id="info_email">
		</tr>
		</table>
	<div id = "lg_cf">
			<div class= "div_cf"><a href = "#"class="btn_index btn13">회원 가입</a>
			<a href = "#"class="btn_index btn13">취소</a></div>
	</div>	
	</form>	
</body>
</html>
