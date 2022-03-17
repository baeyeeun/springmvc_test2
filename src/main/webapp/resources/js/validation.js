//함수 이름과 매개 변수만 필요, 리턴은 마음대로

//jquery
checkNull = function (obj, value, message){
	if(value == "" || value == null){
		alert("validation.js : " + message);
		
		obj.focus();
		
		return false;
	} else {
		
		return true;
		
	}

//자바 스크립트
/*function checkNull (obj, value, message){
	if(value == "" || value == null){
		alert("validation.js : " + message);
		
		obj.focus();
		
		return false;
	}*/
	
	
}