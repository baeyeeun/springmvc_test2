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
	
	 font-family: 'ëëęł ë';
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
	 	<p  class="memberform fs-3 fw-bold">íěę°ě</p>
	</div>
	</div>
	
	<div class="row">
	
	 <div class="col-8 id">
	  <label for="id">ěě´ë</label>
	  <input type="id" class="form-control" placeholder="ěëŹ¸ ëěëŹ¸ě, ěŤě ěĄ°íŠ">
	 </div>
	 
	 <div class="col-4 id">
	  <button type="button" class="btn btn-dark check">ě¤ëłľíě¸</button>
	 </div>
	 
	</div>

	<div class="row">
	
	<div class="col-12 password">
	  <label for="password">ëšë°ë˛í¸</label>
	  <input type="password" class="form-control" placeholder="ëěëŹ¸ě, ěŤě íŹí¨íěŹ 8ěëŚŹ ě´ě">
	 </div>
	 	 
	 <div class="col-12 repassword">
	  <label for="repassword">ëšë°ë˛í¸ ěŹíě¸</label>
	  <input type="password" class="form-control" placeholder="ëšë°ë˛í¸ëĽź ë¤ě ěë Ľíě¸ě">
	 </div>
	 
	 </div>
	 
	 <div class="row">
	 
	 <div class="col-12 email">
	  <label for="email">ě´ëŠěź</label>
	  <input type="email" class="form-control" placeholder="ě´ëŠěźě ěë Ľíě¸ě.">
	 </div>

	 <div class="col-12 name">
	  <label for="name">ě´ëŚ</label>
	  <input type="text" class="form-control" placeholder="ě´ëŚě ěë Ľíě¸ě.">
	 </div>
	 
	 </div>
	 
	 <div class="row">
	 
	 <div class="col-12 gender1">
	  <label for="gender">ěąëł</label>
	 </div>
	 
	 <div class="col-12 gender2">	 
	  <input class="gender" type="radio" name="woman" id="woman">
	  <label class="gender" for="woman">ěŹěą</label>
	  
	  <input class="gender" type="radio" name="man" id="man">
	  <label class="gender" for="man">ë¨ěą</label>
	 </div>
	 
	 </div>
	
	<div class="row">
	 <div class="col-12 phone">
	  <label for="phone">í¸ëí° ë˛í¸</label>
	 </div>
	 
	 <div class="col-3 phone">
	  	 <select class="form-select" aria-label="íľě ěŹ">
 			 <option selected>íľě ěŹ</option>
 			 <option value="1">LGU</option>
 			 <option value="2">SKT</option>
 			 <option value="3">KT</option>
 			 <option value="4">ěë°í°</option>
		</select>
		
 	<div class="col-3 phone">
	  <input type="text" class="phone1" placeholder="í¸ëí° ë˛í¸">
	</div>
	
	 </div>
	 </div>
	 
	 	<div class="row">
	 	
	    <div class="col-12 address">
	     <label for="address">ěŁźě ěë Ľ</label>
	    </div>

	    <div class="col-5 address">
	     <input type="text" class="form-control address1" name="ifmaZipcodeArray" id="ifmaZipcodeArray" placeholder="ě°í¸ë˛í¸" readonly>
	    </div>
	 
	    <div class="col-7 address">
	     <button type="button" id="btnAddress" class="btnAddress btn-dark" onclick="sample6_execDaumPostcode()" value="ě°í¸ë˛í¸ ě°žę¸°" >ěŁźě ę˛ě</button>
	    </div>


		 <div class="col-12 address">	 
		  <input type="text" id="ifmaAddress1Array" class="form-control address2" placeholder="ěŁźě">
		  <input type="text" id="ifmaAddress2Array" class="form-control address2" placeholder="ěě¸ěŁźě">
		 </div>
		 
	  </div>
	

	<div class="row">
	
	 <div class="col-12 message">
	  <label for="message">ëŹ¸ě ë§ěźí ěě  ëě </label>
	 </div>
	 
	 <div class="col-12 message">
	  <input class="message1" type="radio" name="agree1" id="agree1">
	  <label class="message1" for="agree1">ëě</label>
	  
	  <input class="message1" type="radio" name="notagree1" id="notagree1">
	  <label class="message1" for="notagree1">ëŻ¸ëě</label>
	 </div>
	  
	 </div>
	 
 	<div class="row">
 	
	 <div class="info col-12">
	  <label for="info">ę°ě¸ě ëł´ ě í¸ę¸°ę°</label>
	 </div> 

	 <div class="info col-12">
	 	 
	  <input class="info1" type="radio" name="1years" id="1years">
	  <label class="info1" for="1years">1ë</label>
	  
	  <input class="info1" type="radio" name="3years" id="3years">
	  <label class="info1" for="3years">3ë</label>

	  <input class="info1" type="radio" name="5years" id="5years">
	  <label class="info1" for="5years">5ë</label>
	  
	  <input class="info1" type="radio" name="10years" id="10years">
	  <label class="info1" for="10years">10ë</label>
	 </div>
	 
	</div>
	 	 
 	<div class="row">
 	
	<div class="d-grid gap-2">
	  <button class="btn btn-dark" type="button">íěę°ě</button>
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
		sample4_execDaumPostcode();
		});

		$("btnAddressClear").on("click, function(){

		$("#ifmaZipcodeArray0).val('');
		$("#ifmaAddress1Array0).val('');
		});
	
	
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // íěěě ę˛ěę˛°ęłź í­ëŞŠě í´ëŚ­íěë ě¤íí  ě˝ëëĽź ěěąíë ëśëś.

                // ę° ěŁźěě ë¸ěś ęˇěšě ë°ëź ěŁźěëĽź ěĄ°íŠíë¤.
                // ë´ë ¤ě¤ë ëłěę° ę°ě´ ěë ę˛˝ě°ě ęłľë°ą('')ę°ě ę°ě§ëŻëĄ, ě´ëĽź ě°¸ęł íěŹ ëśę¸° íë¤.
                var addr = ''; // ěŁźě ëłě
                var extraAddr = ''; // ě°¸ęł í­ëŞŠ ëłě

                //ěŹěŠěę° ě íí ěŁźě íěě ë°ëź í´ëš ěŁźě ę°ě ę°ě ¸ě¨ë¤.
                if (data.userSelectedType === 'R') { // ěŹěŠěę° ëëĄëŞ ěŁźěëĽź ě ííě ę˛˝ě°
                    addr = data.roadAddress;
                } else { // ěŹěŠěę° ě§ë˛ ěŁźěëĽź ě ííě ę˛˝ě°(J)
                    addr = data.jibunAddress;
                }

                // ěŹěŠěę° ě íí ěŁźěę° ëëĄëŞ íěěźë ě°¸ęł í­ëŞŠě ěĄ°íŠíë¤.
                if(data.userSelectedType === 'R'){
                    // ë˛ě ëëŞě´ ěě ę˛˝ě° ěśę°íë¤. (ë˛ě ëŚŹë ě ě¸)
                    // ë˛ě ëě ę˛˝ě° ë§ě§ë§ ëŹ¸ěę° "ë/ëĄ/ę°"ëĄ ëëë¤.
                    if(data.bname !== '' && /[ë|ëĄ|ę°]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // ęą´ëŹźëŞě´ ěęł , ęłľëěŁźíěź ę˛˝ě° ěśę°íë¤.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // íěí  ě°¸ęł í­ëŞŠě´ ěě ę˛˝ě°, ę´í¸ęšě§ ěśę°í ěľě˘ ëŹ¸ěě´ě ë§ë ë¤.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // ěĄ°íŠë ě°¸ęł í­ëŞŠě í´ëš íëě ëŁëë¤.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // ě°í¸ë˛í¸ě ěŁźě ě ëł´ëĽź í´ëš íëě ëŁëë¤.
                document.getElementById('ifmaZipcodeArray').value = data.zonecode;
                document.getElementById("ifmaAddress1Array").value = addr;
                // ěť¤ěëĽź ěě¸ěŁźě íëëĄ ě´ëíë¤.
                document.getElementById("ifmaAddress2Array").focus();
            }
        }).open();
    }
</script>
  </body>
  
  

</html>

