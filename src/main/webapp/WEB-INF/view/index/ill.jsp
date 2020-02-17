<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>今日头条</title>
<link rel="shortcut icon" type="image/x-icon"
	href="/resource/images/aa.ico" />
<!-- 引入 css -->
<link rel="stylesheet" type="text/css"
	href="/resource/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/resource/css/index.css">
<!-- 引入js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resource/js/jquery-3.2.1.js"></script>

</head>
<body>
	<div class="container-fluid">

		<div class="row">
			<div class="col-md-12"
				style="background-color: #222222; height: 34px; padding-top: 5px; font-size: 14px">
				<a href="#"><font color="white">下载APP</font></a>
				<div style="float: right">
					<!-- 如果没有登录则显示登录注册按钮 -->
					<c:if test="${null==sessionScope.user}">

						<button type="button" onclick="reg()" class="btn btn-link btn-sm"
							data-toggle="modal" data-target="#exampleModal">
							<font color="white">注册</font>
						</button>
						<button type="button" onclick="login()"
							class="btn btn-link btn-sm" data-toggle="modal"
							data-target="#exampleModal">
							<font color="white">登录</font>
						</button>
					</c:if>
					<c:if test="${null!=sessionScope.user}">
						<%-- 	<font color="white">${sessionScope.user.username }</font>
						<button type="button" onclick="logout()"
							class="btn btn-link btn-sm" data-toggle="modal"
							data-target="#exampleModal">
							<font color="white">注销</font>
						</button> --%>
						<div class="btn-group dropleft">
							<button type="button"
								class="btn btn-sm btn-secondary dropdown-toggle"
								style="background: #222222; border: 0px; padding-bottom: 0px"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">${sessionScope.user.username }</button>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="/my">个人中心</a></a> <a
									class="dropdown-item" href="/passport/logout">注销</a>
							</div>
						</div>
					</c:if>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top: 5px">
			<!-- 左侧显示省份 -->
			<div class="col-md-6" >
				
					<table class="table table-hover">
						<tr>
							<td>序号</td>
							<td>省名称</td>
							<td>确诊数量</td>
							<td>死亡数量</td>
							<td>治愈数量</td>
						</tr>
						<c:forEach items="${info.list}" var="ill" varStatus="i">
						 <tr class="mtr" data="${ill.pid }" >
						  <td>${i.count}</td>
						  <td>${ill.pro.cityname }</td>
						  <td>${ill.number1 }</td>
						  <td>${ill.number2}</td>
						  <td>${ill.number3 }</td>
						 </tr>
						</c:forEach>
						
					</table>
 <jsp:include page="/WEB-INF/view/common/pages.jsp"></jsp:include>
			</div>

			<div class="col-md-6" style="border-left: 2px solid #E1EFFF">
			 <table class="table">
						<tr>
							<td>序号</td>
							<td>市名称</td>
							<td>确诊数量</td>
							<td>死亡数量</td>
							<td>治愈数量</td>
						</tr>
						<c:forEach items="${list}" var="ill" varStatus="i">
						 <tr>
						  <td>${i.count}</td>
						  <td>${ill.pro.cityname }</td>
						  <td>${ill.number1 }</td>
						  <td>${ill.number2}</td>
						  <td>${ill.number3 }</td>
						 </tr>
						</c:forEach>
					</table>
			</div>
		</div>
	</div>

</body>
<script type="text/javascript">
$(function(){

	
	$(".mtr").click(function(){
		// 获取点击行的ID即  城市iD
		var pid =$(this).attr("data");
		location.href="/ill?pid="+pid;
		
	})
	
	
	
})


function goPage(page) {
		location.href="/ill";

	}

</script>
</html>