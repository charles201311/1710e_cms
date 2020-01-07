<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CMS管理员后台系统</title>
<!-- 引入 css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/css/bootstrap.css">
<!-- 引入js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resource/js/jquery-3.2.1.js"></script>
</head>
<body>
	<div class="container" style="padding-top: 10px">
		<!-- 头 -->
		<div class="row" style="background-color: pink; height: 45px">
			<img alt="" src="/resource/images/logo.jpg"
				style="width: 50px; height: 45px"> CMS后台管理
		</div>
		<div class="row" style="padding-top: 10px">
			<div class="col-md-3" style="background-color: yellow; height: 550px">

				<nav class="nav flex-column">
				 <a class="nav-link active" href="#">文章管理</a>
					 <a class="nav-link" href="#" data="/users">用户管理</a>
					 <a class="nav-link" href="#">友情链接</a>
				    <a class="nav-link" href="#">系统设置</a>
				</nav>


			</div>
             <!-- 中间区域 -->
			<div class="col-md-9" id="center">
			
			</div>

		</div>

	</div>




<script type="text/javascript">
 $(function(){
	 
	//为a标签添加点击事件 
	 $("a").click(function(){
		 //获取当前点击的a标签的 data 属性的值
		var url= $(this).attr("data");
		$("#center").load(url);//在中间区域加载url
	 })
	 
 })

</script>
</body>
</html>