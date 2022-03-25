<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet"> 

<form method="post" action="/infra/code/codeGroupInst">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
	<input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>">
	<input type="hidden" name="shValue" value="<c:out value="${vo.shValue}"/>">
	<input type="hidden" name="">
			
	<input type="text" name="ifcgName" id="ifcgName" placeholder="코드그룹">
	
	<input type="text" id="adcDate" name="adcDate">
	
	<!-- <input type="text" name="ifcdName" id="ifcdName" placeholder="코드">	 -->
	<input type="submit" id="btnSubmit" value="제출">
</form>

<script src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validation.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	 $("#abcDate").datepicker();
}); 

$.datepicker.setDefaults({
   dateFormat: 'yy-mm-dd',
   prevText: '이전 달',
   nextText: '다음 달',
   monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
   monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
   dayNames: ['일', '월', '화', '수', '목', '금', '토'],
   dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
   dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
   showMonthAfterYear: true,
   yearSuffix: '년'
});

$("#btnSubmit").on("click", function(){
	
	if(! checkNull($("#IfcgName"), $("#IfcgName").val(), 코드 그룹 이름을 입력해 주세요!")) return false;
	//추가 항목은 이 아래에
	
});



</script>