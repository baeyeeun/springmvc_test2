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
    
    font-family: '다음 SemiBold';
    
  
  </style>
  <body>

	<!--  -->

  <div class="container">
  
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
       <h1 class="logo"> YES24 </h1>
      </a>

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="#" class="nav-link px-2 link-secondary">Home</a></li>

        <li><a href="#" class="nav-link px-2 link-dark">회원 관리</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">리뷰 관리</a></li>
      </ul>

      <div class="col-md-3 text-end">
        <button type="button" class="btn btn-outline-dark me-2">Login</button>
        <button type="button" class="btn btn-dark">Sign-up</button>
      </div>
    </header>
	
	 <div class="p-4 p-md-5 mb-4 text-dark rounded bg-light">
    <div class="col-md-6 px-0">
  

<select name="shIfcgDelNy" id="shIfcgDelNy">
	<option value="">삭제여부
	<option value="1" <c:if test="${vo.shIfcgDelNy eq 1}">selected</c:if>> Y
	<option value="0" <c:if test="${vo.shIfcgDelNy eq 0}">selected</c:if>> N
</select>

<select name="shIfcgDelNy" id="shIfcgDelNy">
	<option value="">회원 검색
	<option value="1" <c:if test="${vo.shIfcgDelNy eq 1}">selected</c:if>> 이름
	<option value="0" <c:if test="${vo.shIfcgDelNy eq 0}">selected</c:if>> 아이디
</select>


<input type="text" name="shValue" id="shValue" value="<c:out value="${vo.shValue}"/>">
<input type="submit" id="btnSubmit" name="search">
   
    </div>
  </div>
  
	<div class="row">
	 <div class="col">
	 
	   <table class="table">

	   <thead class="table-dark">
	    <tr>
	     <th scope="col"></th>
	     <th scope="col">번호</th>
	     <th scope="col">이름</th>
	     <th scope="col">아이디</th>
	    </tr>
	   </thead>

	   <tbody>
	   
	 <c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
		
		<%-- <c:out value="${item.ifmmSeq}"/> | <c:out value="${item.ifmmId}"/> | <c:out value="${item.ifmmName}"/> <br> --%>
		<tr>
	      <th>
	     <div class="form-check"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></div>
	      </th>
	      <th scope="row"><c:out value="${item.ifmmSeq}"/></th>
	      <td><c:out value="${item.ifmmName}"/></td>
	      <td><c:out value="${item.ifmmId}"/></td>
	     </tr>
		
		</c:forEach>
	</c:otherwise>
</c:choose>	   
 
	    </tbody>
	   </table>

	 </div>
	</div>

	<div class="row">
	 <div class="col">
	  <div class="d-grid gap-2 d-md-flex justify-content-md-end">
	   <button class="btn btn-dark" type="button">수정</button>
	   <button class="btn btn-dark" type="button">삭제</button>
	 </div>
	 </div>
	</div>

	<div class="row">
	 <div class="col">
	 
	 <c:out value="${vo.startPage}"/>

	 	<nav aria-label="...">
	 	 <ul class="pagination">
  
		<c:if test="${vo.startPage gt vo.pageNumToShow}">          
          <li class="page-item"><a class="page-link" href="/infra/member/memberList?thisPage=${vo.startPage - 1}">Previous</a></li>
		</c:if>
		
		<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
		 <c:choose>
		 
		 <c:when test="${i.index eq vo.thisPage}">
		  <li class="page-item active"><a class="page-link" href="/infra/member/memberList?thisPage=${i.index}">${i.index}</a></li>
		 </c:when>
		 
		 <c:otherwise>             
		  <li class="page-item"><a class="page-link" href="/infra/member/memberList?thisPage=${i.index}">${i.index}</a></li>
		</c:otherwise>
		
		 </c:choose>
		 </c:forEach>     
		 
		 <c:if test="${vo.endPage ne vo.totalPages}">                
		  <li class="page-item"><a class="page-link" href="/infra/member/memberList?thisPage=${vo.endPage + 1}">Next</a></li>
		 </c:if>  

  </ul>
</nav>

	</div>

</div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validation.js"></script>


    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->

	<script type="text/javascript">
	$("#btnSubmit").on("click", function(){
		
		
		if(! checkNull($("#shIfcgName"), $("#shIfcgName").val(), "코드 이름을 입력해 주세요")) return false;
		if(! checkNull($("#shIfcgName"), $("#shIfcgName").val(), "검색어를 입력해 주세요.")) return false	;
		
	}); 
	
	$("#btnSubmit2").on("click", function(){
		
		alert("2번째 버튼입니다!")
		
	});
	
  </body>
</html>

