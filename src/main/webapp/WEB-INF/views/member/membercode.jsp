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
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>ì± ì ë³´ ê´ë¦¬</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/headers/">

    

    <!-- Bootstrap core CSS -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous">

  </head>
  <style type="text/css">
  
    .logo{
    
    font-family: 'Y_Spotlight';
    
	}
	
	.book{
	
    font-family: 'EliceDigitalBaeum-Bd';	
	text-align: center;
	
	padding: 30px 0px 30px 0px;
	}
	
	 .menu{
    
    font-family: 'Cafe24SsurroundAir';
    
    font-size: 15px;
    
    }
    
    .bodybody{
    
    font-family: 'Cafe24SsurroundAir';
    font-size: 15px;
    
    }
    
    @font-face {
    font-family: 'Y_Spotlight';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts-20-12@1.0/Y_Spotlight.woff') format('woff');
    font-weight: normal;
    font-style: normal;
	}

    @font-face {
    font-family: 'EliceDigitalBaeum-Bd';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_elice@1.0/EliceDigitalBaeum-Bd.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
	}
	
    @font-face {
    font-family: 'Cafe24SsurroundAir';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24SsurroundAir.woff') format('woff');
    font-weight: normal;
    font-style: normal;
    }
    
  </style>
  <body class="bodybody">

	<!--  -->

  <div class="container">
  
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
       <h1 class="logo"><font color="#bebebe">YES</font><font color="#0064FF">24</font></h1>
      </a>

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li class="menu"><a href="#" class="nav-link px-2 link-secondary">Home</a></li>
        <li class="menu"><a href="#" class="nav-link px-2 link-dark">ì½ë ê·¸ë£¹ ê´ë¦¬</a></li>
        <li class="menu"><a href="#" class="nav-link px-2 link-dark">íì ê´ë¦¬</a></li>
        <li class="menu"><a href="#" class="nav-link px-2 link-dark">ë¦¬ë·° ê´ë¦¬</a></li>
        <li class="menu"><a href="#" class="nav-link px-2 link-dark">ì± ì ë³´ ê´ë¦¬</a></li>
      </ul>

      <div class="col-md-3 text-end">
        <button type="button" class="btn btn-outline-dark me-2">Login</button>
        <button type="button" class="btn btn-dark">Sign-up</button>
      </div>
    </header>
	
	<h1 class="book">ì± ì ë³´ ê´ë¦¬</h1>
	
    <div class="p-4 p-md-5 mb-4 text-dark rounded bg-light">
	 
    <div class="col-3 md-6 px-0"> 
     <select class="form-select" aria-label="Default select example">
     <option selected>ì­ì  ì¬ë¶</option>
     <option value="1">N</option>
     <option value="2">Y</option>
    </select>
    </div>
 
     <div class="col-3 md-6 px-0"> 
     <select class="form-select" aria-label="Default select example">
     <option selected>ê²ì ì¡°ê±´</option>
     <option value="1">ëì ì ëª©</option>
     <option value="2">ì§ìì´</option>
     <option value="3">ì¶íì¬</option>
     </select>
      </div>
           
      <div class="col-3 md-6 px-0">        
       <input type="password" class="form-control" id="password" placeholder="ê²ìì´ë¥¼ ìë ¥íì¸ì.">
       <button type="button" class="btn btn-warning">ê²ì</button>
       <button type="button" class="btn btn-danger">ì´ê¸°í</button>     
      </div>   
  </div>
  
	<div class="row">
	 <div class="col">
	 
	   <table class="table">

	   <thead class="table-dark">
	    <tr>
	     <th scope="col">ì²´í¬ë°ì¤</th>
	     <th scope="col">ë²í¸</th>
	     <th scope="col">ëì ì´ë¦</th> 
	     <th scope="col">ì§ìì´</th>
	     <th scope="col">ì¶íì¬</th>
	     <th scope="col">ì± ë±ë¡ ì¼ì</th>	       
	    </tr>
	   </thead>

	   <tbody>

	    <tr>
	     <th scope="col">ì²´í¬ë°ì¤</th>
	     <th scope="col">ë²í¸</th>
	     <th scope="col">ëì ì´ë¦</th>
	     <th scope="col">ì§ìì´</th>
	     <th scope="col">ì¶íì¬</th>
	     <th scope="col">ì± ë±ë¡ ì¼ì</th> 	 	     
	    </tr>	      
 
	    </tbody>
	   </table>

	 </div>
	</div>

	<div class="row">
	 <div class="col">
	  <div class="d-grid gap-2 d-md-flex justify-content-md-end">
	   <button class="btn btn-dark" type="button">ë±ë¡</button>
	   <button class="btn btn-dark" type="button">ì­ì </button>
	 </div>
	 </div>
	</div>

	<div class="row">
	 <div class="col">
	 

  </ul>
</nav>

	</div>

</div>
</div>

	
  </body>
</html>