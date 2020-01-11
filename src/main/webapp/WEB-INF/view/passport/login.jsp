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

<link rel="stylesheet" type="text/css" href="/resource/css/jquery/screen.css">
<!-- 引入js -->
<script type="text/javascript" src="/resource/js/jquery.validate.js"></script>
</head>
<body>
	<div class="container">
	   <span style="color: red" id="msg"></span>
		<form id="form1" action="/passport/login" method="post">
			<div class="form-group">
				<label for="username">用户名</label> <input id="username" type="text"
					name="username" class="form-control">
			</div>

			<div class="form-group">
				<label for="password">密码</label> <input id="password"
					type="password" name="password" class="form-control">
			</div>

           <div class="form-group " style="text-align: center">
            <button type="submit" class="btn btn-info" >登录</button>
            <button type="reset" class="btn btn-info">重置</button>
           
           </div>



		</form>


	</div>
	
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
					 location.href="/"  ;//登录成功，刷新页面
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