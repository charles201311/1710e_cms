<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<!-- 引入 css -->
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/resource/css/bootstrap.css">
</head>
<body>
  <div class="container">
    <div class="row">
       <div class="col-md-2" style="background-color: red;">占2列</div>
       <div class="col-md-6" style="background-color: blue;">占6列</div>
       <div class="col-md-4" style="background-color: yellow">占4列</div>
    </div>
    <div class="row">
       <div class="col-md-5" style="background-color: red;">占2列</div>
       <div class="col-md-4" style="background-color: blue;">占6列</div>
       <div class="col-md-3" style="background-color: yellow">占4列</div>
    </div>
    
     <div class="row">
       <div class="col-md-12" style="background-color: pink;">占12列</div>
    </div>
  
  </div>


</body>
</html>