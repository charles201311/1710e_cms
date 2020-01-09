<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>天天头条管理员后台系统</title>
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
		<div class="row rounded" style="background-color: #009FD9; height: 55px">
			<div class="col-md-12"><img alt="" src="/resource/images/logo.png"
				style="width: 55px; height: 55px"><font color="white">管理员后台系统</font>
				<div style="float: right;padding-top: 10px"> <a href=""><font style="color: white"> 注销</font></a></div>
				</div>
		  
		</div>
		
		<div class="row" style="padding-top: 10px">
			<div class="col-md-2 rounded" style="background-color: #ccc;text-align: center;padding-top: 5px">
				
				<nav class="nav flex-column">
				 <a class="list-group-item active" href="#" data="/admin/article/articles">文章管理</a>
					 <a class="list-group-item " href="#" data="/admin/user/users">用户管理</a>
					 <a class="list-group-item" href="#">友情链接</a>
				    <a class="list-group-item" href="#">系统设置</a>
				</nav>
			</div>
             <!-- 中间区域 -->
			<div class="col-md-10" id="center" style="padding-right: 0px" >
			
			</div>

		</div>

	</div>




<script type="text/javascript">
 $(function(){
	 //默认加载文章列表
	 $("#center").load("/admin/article/articles");
	 
	//为a标签添加点击事件 
	 $("a").click(function(){
		 //获取当前点击的a标签的 data 属性的值
		var url= $(this).attr("data");
		 //先移除已有选中北京颜色
		  $("a").removeClass("active");
		 //为当前点击的菜单添加选中的背景颜色
		 $(this).addClass("list-group-item active");
		$("#center").load(url);//在中间区域加载url
	 })
	 
 })

</script>
</body>
</html>