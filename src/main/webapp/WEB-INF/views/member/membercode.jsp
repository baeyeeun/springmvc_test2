<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="kor">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Hello, world!</title>
    
  </head>
  <style type="text/css">
  
  	.logo{
  		width: 200px;
  		height: 100px;
  		
  	
  	}
  	
  	.memberform{
	
	 font-family: '나눔고딕';
  	 text-align: center;
  	 
	 font-size: 10px;
	 padding: 10px 0px 0px 0px;

  	}
  	
  	 .form-control{
 	
 	background-color: rgba( 255, 255, 255, 0.0 );
 	/*border-color: rgba( 255, 255, 255, 0.0 );*/
 	
 	color: #000000;
 	
 	border-top: solid 1px #000000;
	border-right: solid 1px #000000;
	border-left: solid 1px #000000;
	border-bottom: solid 1px #000000;
	
  	border-radius: 0px;
  	
  	font-size: 13px;
 	
 	}
 	
 	.check, .check2{
 	
 	width:90px;
 	height:35px;
 	
 	margin: 23px 0px 0px 0px;
 	
 	background-color: #000000;
 
 	
 	}
 	
 	.id, .password, .repassword, .email, .name, .gender1, .phone, .address, .message, .info{
 	
 	 padding: 12px 0px 0px 0px;
 	
 	}
 	
 	.gender2{
 	
 	 padding: 5px 0px 0px 0px;
 	
 	}
 	
 	.form-select{
 	
 	width: 100px;
 	height: 36px;
 		
 	border-radius: 0px;
 		
 	border-top: solid 1px #000000;
	border-right: solid 1px #000000;
	border-left: solid 1px #000000;
	border-bottom: solid 1px #000000;
 		
 	}

 	
 	.address1{
 	
 	width: 200px;
 	height: 40px;
 	
 	}
 	
 	.address2 {

 	margin: 10px 0px 0px 0px;
 	 	 
 	}
 	
 	.d-grid{
 
  	 padding: 10px 0px 0px 0px;	
 	
 	}

 	
  </style>
  <body>

<div class="container">

	<div class="row">
	 <div class="col">
	 	<center><img class="logo" src="../../../images/xdmin/yes24.png"></center>
	 	<p  class="memberform fs-3 fw-bold">회원가입</p>
	</div>
	</div>
	
	<div class="row">
	
	 <div class="col-8 id">
	  <label for="id">아이디</label>
	  <input type="id" class="form-control" placeholder="영문 대소문자, 숫자 조합">
	 </div>
	 
	 <div class="col-4 id">
	  <button type="button" class="btn btn-dark check">중복확인</button>
	 </div>
	 
	</div>

	<div class="row">
	
	<div class="col-12 password">
	  <label for="password">비밀번호</label>
	  <input type="password" class="form-control" placeholder="대소문자, 숫자 포함하여 8자리 이상">
	 </div>
	 	 
	 <div class="col-12 repassword">
	  <label for="repassword">비밀번호 재확인</label>
	  <input type="password" class="form-control" placeholder="비밀번호를 다시 입력하세요">
	 </div>
	 
	 </div>
	 
	 <div class="row">
	 
	 <div class="col-12 email">
	  <label for="email">이메일</label>
	  <input type="email" class="form-control" placeholder="이메일을 입력하세요.">
	 </div>

	 <div class="col-12 name">
	  <label for="name">이름</label>
	  <input type="text" class="form-control" placeholder="이름을 입력하세요.">
	 </div>
	 
	 </div>
	 
	 <div class="row">
	 
	 <div class="col-12 gender1">
	  <label for="gender">성별</label>
	 </div>
	 
	 <div class="col-12 gender2">	 
	  <input class="gender" type="radio" name="woman" id="woman">
	  <label class="gender" for="woman">여성</label>
	  
	  <input class="gender" type="radio" name="man" id="man">
	  <label class="gender" for="man">남성</label>
	 </div>
	 
	 </div>
	
	<div class="row">
	 <div class="col-12 phone">
	  <label for="phone">핸드폰 번호</label>
	 </div>
	 
	 <div class="col-3 phone">
	  	 <select class="form-select" aria-label="통신사">
 			 <option selected>통신사</option>
 			 <option value="1">LGU</option>
 			 <option value="2">SKT</option>
 			 <option value="3">KT</option>
 			 <option value="4">알뜰폰</option>
		</select>
		
 	<div class="col-3 phone">
	  <input type="text" class="phone1" placeholder="핸드폰 번호">
	</div>
	
	 </div>
	 </div>
	 
	 	<div class="row">
	 	
	    <div class="col-12 address">
	     <label for="address">주소 입력</label>
	    </div>

	    <div class="col-5 address">
	     <input type="text" class="form-control address1" id="sample6_postcode" placeholder="우편번호">
	    </div>
	 
	    <div class="col-7 address">
	     <button type="button" class="btnAddress btn-dark" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" >주소 검색</button>
	    </div>


		 <div class="col-12 address">	 
		  <input type="text" class="form-control address2" id="sample6_address" placeholder="주소">
		  <input type="text" class="form-control address2" id="sample6_detailAddress" placeholder="상세주소">
		 </div>
		 
	  </div>
	

	<div class="row">
	
	 <div class="col-12 message">
	  <label for="message">문자 마케팅 수신 동의 </label>
	 </div>
	 
	 <div class="col-12 message">
	  <input class="message1" type="radio" name="agree1" id="agree1">
	  <label class="message1" for="agree1">동의</label>
	  
	  <input class="message1" type="radio" name="notagree1" id="notagree1">
	  <label class="message1" for="notagree1">미동의</label>
	 </div>
	  
	 </div>
	 
 	<div class="row">
 	
	 <div class="info col-12">
	  <label for="info">개인정보 유호기간</label>
	 </div> 

	 <div class="info col-12">
	 	 
	  <input class="info1" type="radio" name="1years" id="1years">
	  <label class="info1" for="1years">1년</label>
	  
	  <input class="info1" type="radio" name="3years" id="3years">
	  <label class="info1" for="3years">3년</label>

	  <input class="info1" type="radio" name="5years" id="5years">
	  <label class="info1" for="5years">5년</label>
	  
	  <input class="info1" type="radio" name="10years" id="10years">
	  <label class="info1" for="10years">10년</label>
	 </div>
	 
	</div>
	 	 
 	<div class="row">
 	
	<div class="d-grid gap-2">
	  <button class="btn btn-dark" type="button">회원가입</button>
	</div>
	</div>
	
	 </div>




    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
    
    <script type="text/javascript">
 
    
    </script>
    
	  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

$("#btnAddress").on("click", function(){
	sample6_execDaumPostcode();
	});

	$("btnAddressClear").on("click, function(){

	$("#ifmaZipcodeArray0).val('');
	$("#ifmaAddress1Array).val('');
	});
	
	
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
  </body>
  
  

</html>

