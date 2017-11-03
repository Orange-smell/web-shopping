<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	#uid{
		background-color : #6AAFE6;
	}
	
	.Lg_ad{
		width : 300px;
		height : 21px;
	}
</style>
<script src="js/jquery-3.2.1.js"></script>
<script type ="text/javascript">
	$(document).on("click","member",function(){
		alert("Dddd");
		var re_id = /^[a-z0-9_-]{3,16}$/; // 아이디 검사식
		var re_pw = /^[a-z0-9_-]{6,18}$/; // 비밀번호 검사식
		var re_mail = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; // 이메일 검사식
		var re_url = /^(https?:\/\/)?([a-z\d\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?$/; // URL 검사식
		var re_tel = /^[0-9]{8,11}$/; // 전화번호 검사식	
		
		var
		form = $("#shop");
		uid = $("#uid"),
		upw = $("#upw"),
		urepw = $("#urepw"),
		uname = $("#uname"),
		uaddr = $("#uaddr"),
		uphone = $("#uphone"),
		umail = $("#umail");
		
		
		var id = $trim(uid.val());
		var pw = $trim(upw.val());
		var repw = $trim(urepw.val());
		var name = $trim(uname.val());
		var addr = $trim(uaddr.val());
		var phone = $trim(uphone.val());
		var email = $trim(uemail.val());
		
		
		if(uphone == ""){
			uphone.focus();
			alert("null값");
			return false;
		}else if(!re_tel(uphone)) {
			uphone.focus();
			alert("맞게입력하세요");
			return false;
		}	
		
		form.submit
		
		
	});
	
</script>
</head>
<body>

<%@ include file = "head.jsp" %>

<h3>
	<strong>회원 수정 </strong>
	</h3>
	
	<form action = "joinUpdate">
	<div id = "lglg">
<table id = "Lg_table">
			<tr>
				<th> 아이디
				<img class="star" src="img/ico.gif">
				</th>
				<td><input type = "text" class= "input_login" id="uid" name="uid" value = ${sessionScope.loginUser.id} readonly/>
				<!-- <input type ="button"value="중복 확인" id="info_bt"> -->
				</td>
			</tr>
			<tr>			
				<th> 비밀번호
				<img class="star" src="img/ico.gif">
				</th>
				<td><input type = "text" class= "input_login" id="upw"name="upw" value = ${sessionScope.loginUser.pw} ></td>
			</tr>
			<tr>					
				<th> 비밀번호 확인
				<img class="star" src="img/ico.gif">
				</th>
				<td><input type = "text" class= "input_login" id="urepw"name="urepw" value = ${sessionScope.loginUser.pw}></td>				
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
				<td><input type = "text" class= "input_login" id="uname"name="uname" value = ${sessionScope.loginUser.name} ></td>
			</tr>
			<tr>
				<th>주소
				<img class="star" src="img/ico.gif">
				</th>
				<!-- <td><input type = "text" class= "Lg_ad" id="uaddr"name="uaddr" >
				<input type ="button"value="우편 주소" id="info_bt">
				<br>
				<input type = "text" class= "Lg_ad" id="info_id" value = ${sessionScope.loginUser.addr}> 상세 주소
				<br>
				<input type = "text" class= "Lg_ad" id="info_id"> 나머지 주소</td> -->
				
				<td><input type = "text" class= "Lg_ad" id="sample6_postcode" placeholder="우편번호" readonly/>
				<input type ="button"value="우편 주소" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
				<br>
				<input type = "text" class= "Lg_ad"  id="sample6_address" placeholder="주소" readonly/>
				<br>
				<input type = "text" class= "Lg_ad" id="sample6_address2" placeholder="상세주소"></td>
			</tr>
		<tr>
				
				
				
				
				
				
		
			<th>휴대 전화
			<img class="star" src="img/ico.gif">
			</th>
			<td><input type = "text" class= "input_login" id="uphone"name="uphone" value = ${sessionScope.loginUser.phone}>
		</tr>			
		<tr>
			<th>이메일
			<img class="star" src="img/ico.gif">
			</th>
			<td><input type = "text" class= "input_login" id="uemail"name="uemail" value = ${sessionScope.loginUser.email}>
		</tr>
		</table>
	<div id = "lg_cf">
			<div class= "div_cf"><a href = "#"class="btn_index btn13" id="member">회원 수정</a>
			<a href = "#"class="btn_index btn13">취소</a></div>
	</div>	
		</div>
		</form>
</body>
</html>
