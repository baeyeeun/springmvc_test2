<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form method="post" action="/infra/code/codeGroupInst">
	<input type="text" name="ifcgName" id="ifcgName" placeholder="코드그룹">
	<input type="text" name="ifcdName" id="ifcdName" placeholder="코드">	
	<input type="submit" value="제출">
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validation.js"></script>

<script type="text/javascript">

$("#btnSubmit").on("click", function(){
	
	if(! checkNull($("#IfcgName"), $("#IfcgName").val(), 코드 그룹 이름을 입력해 주세요!")) return false;
	//추가 항목은 이 아래에
	
});

</script>