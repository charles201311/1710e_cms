<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>今日头条个人中心</title>
<!-- 引入 css -->
<link rel="stylesheet" type="text/css"
	href="/resource/css/bootstrap.css">
<!-- 引入js -->
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
  <script type="text/javascript">
  $(function(){
	  //默认显示我的文章
	  $("#center").load("/my/article/articles")
	  
	  
	 $("li").click(function(){
		 var url=$(this).children().attr("data");
		 $("li").removeClass("active");
		 $(this).addClass("list-group-item active")
		 $("#center").load(url)
	 })  
  })
  
  
  </script>
</head>
<body>
	<div class="container-fluid"  style="padding-top: 10px">

		<div class="row">

			<div class="col-md-12"
				style="height: 60px; background-color: #563D7C">
				<a href="/"><img alt="" src="/resource/images/logo.png" width="55px"
					height="55px" class="rounded-circle"> </a><font
					style="color: white">个人中心后台</font>
			</div>

		</div>

		<div class="row" style="padding-top: 5px" >
			<div class="col-md-2" style="text-align: center">
				<ul class="list-group">
					<li class="list-group-item active" > <a href="#" data="/my/article/articles"><font color="red">我的文章</font></a></li>
					<li class="list-group-item"> <a href="#" data="/my/article/publish"><font color="red">发布文章</font></a></li>
					<li class="list-group-item"><a href="#" data="/my/stars"><font color="red">我的粉丝</font></a></li>
					<li class="list-group-item"> <a href="#" data="/my/article/readed"> <font color="red">阅读历史</font></a></li>
					<li class="list-group-item"> <a href="#" data="/my/collect"> <font color="red">我的收藏</font></a></li>
					<li class="list-group-item"><a href="#" data="/my/user/update"> <font color="red">编辑资料</font></a></li>
				</ul>

			</div>
			<div class="col-md-10" id="center">
			
			   <!-- 引入kindeditor的样式。不用显示 -->
			  <div style="display: none">
			    <jsp:include page="/resource/kindeditor/jsp/demo.jsp"/>
			  
			  </div>
			
			
			</div>

		</div>


	</div>

</body>
</html>