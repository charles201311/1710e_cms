<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title></title>
<link rel="stylesheet" type="text/css"
	href="/resource/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="/resource/css/jquery/screen.css">
</head>
<body>
	<div class="container-fluid"  >
		<div class="row rounded"
			style="background-color: #009FD9; height: 55px">
			<div class="col-md-12">
				<img alt="" src="/resource/images/logo.png"
					style="width: 55px; height: 55px" class="rounded-circle"><font
					color="white">管理员后台系统</font>
				<div style="float: right; padding-top: 10px">
					<a href=""><font style="color: white"> 注销</font></a>
				</div>
			</div>

		</div>
		<hr>
		<h1 align="center">欢迎回来</h1>
		<hr>
		<div class="row" >
		
		<div class="col-md-12" align="center" style="width: 300px">
		  
			<span style="color: red" id="msg"></span>
			<form id="form1">
				<div class="form-group">
					 <input id="username" placeholder="用户名"  style="width: 300px" type="text"
						name="username" class="form-control">
				</div>

				<div class="form-group">
					 <input id="password"
						type="password" placeholder="密码" style="width: 300px" name="password" class="form-control">
				</div>

				<div class="form-group " >
					<button type="submit" class="btn btn-info">登录</button>
					<button type="reset" class="btn btn-info">重置</button>

				</div>
			</form>
           </div>
		</div>
	</div>
	<!-- 引入js -->
	<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
	<!-- 引入js -->
	<script type="text/javascript" src="/resource/js/popper.min.js"></script>
	<script type="text/javascript" src="/resource/js/bootstrap.min.js"></script>
	<!-- 引入js -->
<script type="text/javascript" src="/resource/js/jquery.validate.js"></script>
	<script type="text/javascript">
	$(function(){
		$("#form1").validate({
			//定义规则
			rules:{
			   	
				username:{
					required:true,//用户名必须输入
				},
				password:{
					required:true,//密码必须输入
				}
				
				
			},
			//消息提示
			messages:{
				username:{
					required:"用户名必须输入",
				
				},
				password:{
					required:"密码必须输入",
				}
				
			},
			submitHandler:function(){
			   $.post("/passport/login",$("#form1").serialize(),function(result){
				  if(result.code=="200"){
				
					 location.href="/admin"  ;//登录成功，刷新页面
				  }else{
					$("#msg").text(result.msg);  
				  }
			   })
			   	
			}
			
			
			
		})
		
		
		
	})
	
	</script>


</body>
</html>