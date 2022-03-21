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
  
  	.form-check{
  	
  		padding: 0px 0px 0px 20px;
  		margin: 2px;
  	}
  	
  	.img1{
  		width: 30px;
  		height: 30px;
  		
  		font-size: 9px;
  	
  	}
 
 	.container-fluid, .a.nav-link{

 		color: #ffffff;
 		text-decoration: none;
 	}

	.logo{
		width: 150px;
		height: 80px;
	
	}
	
	.title{
		padding : 13px 0px 0px 0px;
	}
  
  </style>
  <body>

	<!--  -->

<div class="container">

	<div class="row">
	 <div class="col-11">
		<p class="logo1 fs-5 fw-bold"><img class="logo" src="../../../images/xdmin/yes24.png">YES24 Management System</p>
	 </div>

	 <div class="col-1">
		<p class="">logout</p>
	 </div>
	</div>

	<div class="row">
	 <div class="col">
      <nav class="navbar navbar-expand navbar-dark bg-dark">
       <div class="container-fluid">
       <a class="navbar-brand" href="#">관리</a>
       <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation">
       <span class="navbar-toggler-icon"></span>
       </button>

      <div class="collapse navbar-collapse">
       <ul class="navbar-nav me-auto">
       
       <li class="nav-item">
       <a class="nav-link" href="#">회원 관리</a>
       </li>

       <li class="nav-item">
       <a class="nav-link" href="#">게시판 관리</a>
       </li>
       
       </ul>
      </div>
    </div>
  </nav>
	</div>

	<div class="row">
	 <div class="col">
      <p class="fs-2 fw-bold lh-1 title">회원관리</p>
	 </div>
	</div>
	
		
	<div class="row">
	 <div class="col">

      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-dark " type="submit">search</button>
      </form>

	 </div>
	</div>
	
	<div class="row">
	 <div class="col">
	   <table class="table">

	   <thead>
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
		
		<c:out value="${item.ifcgSeq}"/> | <a href="/infra/code/codeGroupView?ifcgSeq=<c:out value="${item.ifcgSeq}"/>"><c:out value="${item.ifcgName}"/></a> | <c:out value="${item.ifcgNameEng}"/> |
		
		<c:choose>
			<c:when test="${item.ifcdDelNy eq 0 }">O</c:when>
			<c:otherwise>X</c:otherwise>
		</c:choose>
		
		<%-- <c:out value="${item.ifcgDelNy}"/> --%> <br>
		
		<%-- <c:out value="${item.ifmmSeq}"/> | <c:out value="${item.ifmmId}"/> | <c:out value="${item.ifmmName}"/> <br> --%>
		<tr>
	      <th>
	     <div class="form-check"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></div>
	      </th>
	      <th scope="row"><c:out value="${item.ifcgSeq}"/></th>
	      <td><c:out value="${item.ifcgName}"/></td>
	      <td><c:out value="${item.ifcgnameeng}"/></td>
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
	  <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
	  <div class="btn-group me-2" role="group" aria-label="First group">
	    <button type="button" class="btn btn-dark">1</button>
	    <button type="button" class="btn btn-dark">2</button>
	    <button type="button" class="btn btn-dark">3</button>
	    <button type="button" class="btn btn-dark">4</button>
	    <button type="button" class="btn btn-dark">5</button>
	    <button type="button" class="btn btn-dark">6</button>
	    <button type="button" class="btn btn-dark">7</button>
	    <button type="button" class="btn btn-dark">8</button>
	    <button type="button" class="btn btn-dark">9</button>
	    <button type="button" class="btn btn-dark">10</button>
	  </div>
	 </div>
	</div>

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

  </body>
</html>

