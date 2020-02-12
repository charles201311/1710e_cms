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
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<!-- 引入js -->
<script type="text/javascript" src="/resource/js/jquery.validate.js"></script>

</head>
<body>
	<div class="container">
	   <span style="color: red" id="msg"></span>
		<form id="form1">
		    
			<div class="form-group">
				<label for="username">用户名</label> <input id="username" type="text"
					name="username" class="form-control">
			</div>

			<div class="form-group">
				<label for="password">密码</label> <input id="password"
					type="password" name="password" class="form-control">
			</div>

			<div class="form-group">
				<label for="repassword">确认密码</label> <input id="repassword"
					type="password" name="repassword" class="form-control">
			</div>


          <div class="form-group form-inline">
			<div class="form-check"> 
				 <input  type="radio"	name="gender" class="form-check-input" value="1" checked="checked">男 
			</div>
			<div class="form-check"> 
				 <input	 type="radio" name="gender" class="form-check-input"value="0" >女
			</div>
			</div>
           <div class="form-group " style="text-align: center">
            <button type="submit" class="btn btn-info" >注册</button>
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
					rangelength:[2,5],//用户名的长度在2-5之间
					remote:{
						type:"post",
						data:{   //注意：和普通的传值不一样
							username:function(){
								return $("#username").val();
							}							
							},
						url:"/passport/checkname",
					}
				},
				password:{
					required:true,//密码必须输入
					rangelength:[6,10],//密码用户名的长度在6-10之间
				}
				,
				repassword:{
					equalTo:"#password",//两次密码应该一致
				}
				
			},
			//消息提示
			messages:{
				username:{
					required:"用户名必须输入",
					rangelength:"用户名的长度在2-5之间",
					remote:"用户已经被注册",
				},
				password:{
					required:"密码必须输入",
					rangelength:"密码长度在6-10之间",
				}
				,
				repassword:{
					equalTo:"两次密码不一致",
				}
			},
			submitHandler:function(){//提交
				
			   
				 $.post("/passport/reg",$("#form1").serialize(),function(result){
					 if(result.code=="200"){//执行成功
							$("#myTitle").html("<font color='red'>注册成功，请登录<font>");
							$("#myModal").load("/passport/login");//执行成功跳转到登录页面
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