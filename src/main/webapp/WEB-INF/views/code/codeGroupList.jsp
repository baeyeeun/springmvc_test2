<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<form id="formList" name="" method="post" action="/infra/code/codeGroupList">
<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" id="ifcgSeq" name="ifcgSeq">
<select name="shIfcgDelNy" id="shIfcgDelNy">
	<option value="">::삭제여부::
	<option value="1" <c:if test="${vo.shIfcgDelNy eq 1}">selected</c:if>> Y
	<option value="0" <c:if test="${vo.shIfcgDelNy eq 0}">selected</c:if>> N
</select>
|| 
회원이름 : <input type="text" name="shIfcgName" id="shIfcgName">
||
<select name="shOption" id="shOption">
	<option value="">::검색구분::
	<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>> 한글
	<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>> 영문
</select>

<input type="text" name="shValue" id="shValue" value="<c:out value="${vo.shValue}"/>">
<input type="submit" id="btnSubmit" name="search">
<input type="submit" id="btnSubmit2" name="search">
<br>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
		
<!--		<c:out value="${item.ifcgSeq}"/> | <a href="/infra/code/codeGroupView?ifcgSeq=<c:out value="${item.ifcgSeq}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>"><c:out value="${item.ifcgName}"/></a> | <c:out value="${item.ifcgNameEng}"/> | -->

		<c:out value="${item.ifcgSeq}"/> | <a href="javascript:goForm(<c:out value="${item.ifcgSeq}"/>)"><c:out value="${item.ifcgName}"/></a> | <c:out value="${item.ifcgNameEng}"/> |
		
		<c:choose>
			<c:when test="${item.ifcdDelNy eq 0 }">O</c:when>
			<c:otherwise>X</c:otherwise>
		</c:choose>
		
		<%-- <c:out value="${item.ifcgDelNy}"/> --%> <br>
		
		</c:forEach>
	</c:otherwise>
</c:choose>
 
</form>


<a href="codeGroupList">목록</a>

<c:out value="${vo.startPage}"/>

<!--
<nav aria-label="...">
  <ul class="pagination">
  
<c:if test="${vo.startPage gt vo.pageNumToShow}">
                <li class="page-item"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${vo.startPage - 1}">Previous</a></li>
</c:if>
<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
	<c:choose>
		<c:when test="${i.index eq vo.thisPage}">
                <li class="page-item active"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${i.index}">${i.index}</a></li>
		</c:when>
		<c:otherwise>             
                <li class="page-item"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${i.index}">${i.index}</a></li>
		</c:otherwise>
	</c:choose>
</c:forEach>     
<c:if test="${vo.endPage ne vo.totalPages}">                
                <li class="page-item"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${vo.endPage + 1}">Next</a></li>
</c:if>  

  </ul>
</nav>

-->

<nav aria-label="...">
  <ul class="pagination">
  
<c:if test="${vo.startPage gt vo.pageNumToShow}">
                <li class="page-item"><a class="page-link" href="javascript:abc(<c:out value='${vo.startPage-1 }'/>);">Previous</a></li>
</c:if>
<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
	<c:choose>
		<c:when test="${i.index eq vo.thisPage}">
                <li class="page-item active"><a class="page-link" href="javascript:abc(<c:out value='${i.index}'/>);">${i.index}</a></li>
		</c:when>
		<c:otherwise>             
                <li class="page-item"><a class="page-link" href="javascript:abc(<c:out value='${i.index}'/>);">${i.index}</a></li>
		</c:otherwise>
	</c:choose>
</c:forEach>     
<c:if test="${vo.endPage ne vo.totalPages}">                
                <li class="page-item"><a class="page-link" href="javascript:abc(<c:out value='${vo.endPage + 1}'/>);">Next</a></li>
</c:if>  

  </ul>
</nav>

<a href="/infra/code/codeGroupForm?thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue="${vo.shValue}"/>등록

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validation.js"></script>

<script type="text/javascript">
	$("#btnSubmit").on("click", function(){
		
		/*
		if($("#shIfcgName").val() == "" || $("shIfcgName").val() == null){
		
		shIf에서 값이 null이거나 공백이면
		
		alert("데이터가 존재하지 않습니다.");
			$("#shIfcgName").focus();
			
			return false;
			
		}*/
		
		if(! checkNull($("#shIfcgName"), $("#shIfcgName").val(), "코드 이름을 입력해 주세요")) return false;
		if(! checkNull($("#shIfcgName"), $("#shIfcgName").val(), "검색어를 입력해 주세요.")) return false	;
		
		/* alert($("#shOption").val()); 
		
		alert("jquery: " + $("#shIfcgName").val()  );									// jquery 방식
		alert("javascrip: " +  document.getElementById("shIfcgName").value  );			// javascript 방식

		
		alert($("shIfchDelNy").val());
		alert($("shIfchName").val());

		alert$("shIfchName").val(2); 숫자 2 나옴
		alert$("shIfchName").val("백제"); 백제 나옴
		
		undefuned 객체 없음 나옴
		
		이게 나오려고 하면 기본적인 HTML 태그가 반드시 필요함
		
		
		alert($("shOption").val());
		alert($("shvalue").val());
		*/
	}); 
	
	$("#btnSubmit2").on("click", function(){
		
		alert("2번째 버튼입니다!")
		
	});
	
	abc= function(seq) {
		
		$(#thisPage).val(seq);
		alert=(seq); //form 객체를 가지고 온다.
	
		$("#formList").submit(); //그 가지고 온 객체를 전달한다.
	};
	
	goForm= function(seq) {
		
		alert=(seq);
		$("#formList").attr("action","/infra/code/codeGroupView");
		$("#formList").submit(); //그 가지고 온 객체를 전달한다.
	};

</script>